<?php
// get_schedule_details.php

require_once 'config.php';

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET');
header('Access-Control-Allow-Headers: Content-Type');

if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    echo json_encode(['success' => false, 'message' => 'Method not allowed']);
    exit();
}

if (!isset($_GET['schedule_id']) || empty($_GET['schedule_id'])) {
    echo json_encode(['success' => false, 'message' => 'Schedule ID not provided']);
    exit();
}

$scheduleId = (int)$_GET['schedule_id'];

$sql = "SELECT
            s.schedule_ID,
            d.day_name,
            sub.subject_code,
            sub.subject_name,
            sec.section_name,
            sec.section_year,
            CONCAT_WS(' ', n.name_first, n.name_middle, n.name_last, n.name_suffix) AS teacher_name,
            t.person_username AS teacher_email,
            ts.display_name AS time_start,
            te.display_name AS time_end,
            r.room_name,
            s.schedule_status
        FROM
            schedule AS s
        JOIN
            Day AS d ON s.day_ID = d.day_ID
        JOIN
            Subject AS sub ON s.subject_ID = sub.subject_ID
        JOIN
            Section AS sec ON s.section_ID = sec.section_ID
        JOIN
            person AS t ON s.teacher_ID = t.person_ID AND t.account_ID = 2
        JOIN
            Name AS n ON t.name_ID = n.name_ID
        JOIN
            time AS ts ON s.time_start_ID = ts.time_ID
        JOIN
            time AS te ON s.time_end_ID = te.time_ID
        LEFT JOIN
            Room AS r ON s.room_ID = r.room_ID
        WHERE
            s.schedule_ID = ?";

$stmt = $conn->prepare($sql);
if (!$stmt) {
    echo json_encode(['success' => false, 'message' => 'Database error: ' . $conn->error]);
    exit();
}

$stmt->bind_param("i", $scheduleId);
if (!$stmt->execute()) {
    echo json_encode(['success' => false, 'message' => 'Database error: ' . $stmt->error]);
    exit();
}

$result = $stmt->get_result();
if (!$result) {
    echo json_encode(['success' => false, 'message' => 'Database error: ' . $stmt->error]);
    exit();
}

$schedule = $result->fetch_assoc();

if (empty($schedule)) {
    echo json_encode(['success' => false, 'message' => 'Schedule not found']);
} else {
    echo json_encode([
        'success' => true,
        'schedule' => $schedule
    ]);
}

$stmt->close();
$conn->close();
?>