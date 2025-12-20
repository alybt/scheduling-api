<?php
require_once 'config.php';

// Only allow GET requests
if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    http_response_code(405);
    echo json_encode(['success' => false, 'message' => 'Method not allowed']);
    exit();
}

// Check if room_id is provided in the URL
if (!isset($_GET['room_id']) || empty($_GET['room_id'])) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'Room ID not provided']);
    exit();
}

$roomId = (int)$_GET['room_id'];

// SQL Query
$sql = "SELECT
            s.day_name,
            s.start_display,
            s.end_display,
            sub.subject_name,
            sec.section_name,
            t.teacher_name
        FROM
            schedules AS s
        JOIN
            subjects AS sub ON s.subject_id = sub.subject_id
        JOIN
            sections AS sec ON s.section_id = sec.section_id
        JOIN
            teachers AS t ON s.teacher_id = t.teacher_id
        WHERE
            s.room_id = ?";

$stmt = $conn->prepare($sql);
if (!$stmt) {
    http_response_code(500);
    echo json_encode(['success' => false, 'message' => 'Database error: ' . $conn->error]);
    exit();
}

$stmt->bind_param("i", $roomId);
if (!$stmt->execute()) {
    http_response_code(500);
    echo json_encode(['success' => false, 'message' => 'Database error: ' . $stmt->error]);
    exit();
}

$result = $stmt->get_result();
if (!$result) {
    http_response_code(500);
    echo json_encode(['success' => false, 'message' => 'Database error: ' . $stmt->error]);
    exit();
}

$schedules = [];
while ($row = $result->fetch_assoc()) {
    $schedules[] = $row;
}

if (empty($schedules)) {
    http_response_code(404);
    echo json_encode(['success' => false, 'message' => 'No schedules found for this room']);
} else {
    http_response_code(200);
    echo json_encode([
        'success' => true,
        'schedules' => $schedules
    ]);
}

$stmt->close();
$conn->close();
?>