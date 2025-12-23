<?php
require_once 'config.php';

// Only allow POST requests
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['success' => false, 'message' => 'Method not allowed']);
    exit();
}

// Get JSON input
$input = json_decode(file_get_contents('php://input'), true);

// Validate required fields
if (!isset($input['schedule_id']) || !isset($input['status'])) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'schedule_id and status are required']);
    exit();
}

$schedule_id = intval($input['schedule_id']);
$status = $input['status'];

// Validate status value
$allowed_statuses = ['Completed', 'Suspended', 'Cancelled', 'Pending', 'On-Going'];
if (!in_array($status, $allowed_statuses)) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'Invalid status value']);
    exit();
}

// Update schedule status
$query = "UPDATE schedule SET schedule_status = ? WHERE schedule_ID = ?";
$stmt = $conn->prepare($query);

if (!$stmt) {
    http_response_code(500);
    echo json_encode(['success' => false, 'message' => 'Database error: ' . $conn->error]);
    exit();
}

$stmt->bind_param("si", $status, $schedule_id);

if ($stmt->execute()) {
    if ($stmt->affected_rows > 0) {
        http_response_code(200);
        echo json_encode([
            'success' => true,
            'message' => 'Schedule status updated successfully',
            'schedule_id' => $schedule_id,
            'new_status' => $status
        ]);
    } else {
        http_response_code(404);
        echo json_encode(['success' => false, 'message' => 'Schedule not found or status unchanged']);
    }
} else {
    http_response_code(500);
    echo json_encode(['success' => false, 'message' => 'Failed to update status: ' . $stmt->error]);
}

$stmt->close();
$conn->close();
?>