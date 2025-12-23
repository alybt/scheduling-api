<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type');

require_once 'config.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['success' => false, 'message' => 'Method not allowed']);
    exit;
}

$input = json_decode(file_get_contents('php://input'), true);

// Validate required fields
$required_fields = ['teacher_id', 'booking_date', 'time_start', 'time_end', 'purpose'];
foreach ($required_fields as $field) {
    if (!isset($input[$field]) || empty($input[$field])) {
        echo json_encode(['success' => false, 'message' => "Missing required field: $field"]);
        exit;
    }
}

$teacher_id = intval($input['teacher_id']);
$booking_date = $input['booking_date'];
$time_start = $input['time_start']; // format: "HH:MM:SS"
$time_end = $input['time_end'];     // format: "HH:MM:SS"
$purpose = trim($input['purpose']);
$room_id = isset($input['room_id']) ? intval($input['room_id']) : null;

// Validate teacher exists
$teacher_check = $conn->prepare("SELECT person_ID FROM person WHERE person_ID = ? AND account_ID = 2 AND person_isDeleted = 0");
$teacher_check->bind_param("i", $teacher_id);
$teacher_check->execute();
if ($teacher_check->get_result()->num_rows === 0) {
    echo json_encode(['success' => false, 'message' => 'Invalid teacher ID']);
    exit;
}

// Get time IDs from time slots
$time_start_id = null;
$time_end_id = null;

$time_query = $conn->prepare("SELECT time_ID FROM time WHERE time_slot = ?");
$time_query->bind_param("s", $time_start);
$time_query->execute();
$result = $time_query->get_result();
if ($result->num_rows > 0) {
    $time_start_id = $result->fetch_assoc()['time_ID'];
}

$time_query->bind_param("s", $time_end);
$time_query->execute();
$result = $time_query->get_result();
if ($result->num_rows > 0) {
    $time_end_id = $result->fetch_assoc()['time_ID'];
}

if (!$time_start_id || !$time_end_id) {
    echo json_encode(['success' => false, 'message' => 'Invalid time slot']);
    exit;
}

// Validate time_end is after time_start
if ($time_end_id <= $time_start_id) {
    echo json_encode(['success' => false, 'message' => 'End time must be after start time']);
    exit;
}

// Check if requested time overlaps with existing bookings for the same room (if room is specified)
if ($room_id) {
    // Get day of week from booking_date
    $day_query = $conn->prepare("SELECT DAYOFWEEK(?) as day_num");
    $day_query->bind_param("s", $booking_date);
    $day_query->execute();
    $day_result = $day_query->get_result()->fetch_assoc();
    $day_num = $day_result['day_num']; // 1=Sunday, 2=Monday, etc.
    
    // Convert to day_ID (1=Monday in your system)
    $day_id = ($day_num == 1) ? 7 : ($day_num - 1);
    
    // Check for conflicts in schedule table
    $conflict_check = $conn->prepare("
        SELECT schedule_ID 
        FROM schedule 
        WHERE room_ID = ? 
        AND day_ID = ?
        AND schedule_status NOT IN ('Cancelled', 'isDeleted')
        AND (
            (time_start_ID < ? AND time_end_ID > ?)
            OR (time_start_ID >= ? AND time_start_ID < ?)
            OR (time_end_ID > ? AND time_end_ID <= ?)
        )
    ");
    $conflict_check->bind_param("iiiiiiii", 
        $room_id, $day_id,
        $time_end_id, $time_start_id,
        $time_start_id, $time_end_id,
        $time_start_id, $time_end_id
    );
    $conflict_check->execute();
    if ($conflict_check->get_result()->num_rows > 0) {
        echo json_encode(['success' => false, 'message' => 'Room is already scheduled at this time']);
        exit;
    }
}

// Insert booking request
$insert_query = $conn->prepare("
    INSERT INTO room_booking_request 
    (teacher_ID, room_ID, booking_date, time_start_ID, time_end_ID, booking_purpose, booking_status) 
    VALUES (?, ?, ?, ?, ?, ?, 'Pending')
");

$insert_query->bind_param("isiiss", 
    $teacher_id, 
    $room_id, 
    $booking_date, 
    $time_start_id, 
    $time_end_id, 
    $purpose
);

if ($insert_query->execute()) {
    $booking_id = $conn->insert_id;
    echo json_encode([
        'success' => true, 
        'message' => 'Booking request submitted successfully',
        'booking_id' => $booking_id
    ]);
} else {
    echo json_encode([
        'success' => false, 
        'message' => 'Failed to submit booking request: ' . $conn->error
    ]);
}

$conn->close();
?>