<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET');

require_once 'config.php';

// Get parameters
$booking_date = isset($_GET['date']) ? $_GET['date'] : date('Y-m-d');
$time_start = isset($_GET['time_start']) ? $_GET['time_start'] : null;
$time_end = isset($_GET['time_end']) ? $_GET['time_end'] : null;

if (!$time_start || !$time_end) {
    echo json_encode(['success' => false, 'message' => 'Missing time parameters']);
    exit;
}

// Get day of week from booking_date
$day_query = $conn->prepare("SELECT DAYOFWEEK(?) as day_num");
$day_query->bind_param("s", $booking_date);
$day_query->execute();
$day_result = $day_query->get_result()->fetch_assoc();
$day_num = $day_result['day_num'];

// Convert to day_ID (1=Monday in your system)
$day_id = ($day_num == 1) ? 7 : ($day_num - 1);

// Get time IDs
$time_query = $conn->prepare("SELECT time_ID FROM time WHERE time_slot = ?");
$time_query->bind_param("s", $time_start);
$time_query->execute();
$time_start_id = $time_query->get_result()->fetch_assoc()['time_ID'];

$time_query->bind_param("s", $time_end);
$time_query->execute();
$time_end_id = $time_query->get_result()->fetch_assoc()['time_ID'];

// Get all rooms that are NOT booked during this time
$query = "
    SELECT r.room_ID, r.room_name, r.room_capacity
    FROM room r
    WHERE r.room_isDeleted = 0
    AND r.room_ID NOT IN (
        SELECT DISTINCT s.room_ID
        FROM schedule s
        WHERE s.day_ID = ?
        AND s.schedule_status NOT IN ('Cancelled', 'isDeleted')
        AND (
            (s.time_start_ID < ? AND s.time_end_ID > ?)
            OR (s.time_start_ID >= ? AND s.time_start_ID < ?)
            OR (s.time_end_ID > ? AND s.time_end_ID <= ?)
        )
    )
    ORDER BY r.room_name
";

$stmt = $conn->prepare($query);
$stmt->bind_param("iiiiiii", 
    $day_id,
    $time_end_id, $time_start_id,
    $time_start_id, $time_end_id,
    $time_start_id, $time_end_id
);
$stmt->execute();
$result = $stmt->get_result();

$rooms = [];
while ($row = $result->fetch_assoc()) {
    $rooms[] = [
        'room_id' => $row['room_ID'],
        'room_name' => $row['room_name'],
        'room_capacity' => $row['room_capacity']
    ];
}

echo json_encode([
    'success' => true,
    'rooms' => $rooms,
    'count' => count($rooms)
]);

$conn->close();
?>