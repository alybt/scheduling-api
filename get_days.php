<?php
// get_days.php

require_once 'config.php';

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET');
header('Access-Control-Allow-Headers: Content-Type');

if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    echo json_encode(['success' => false, 'message' => 'Method not allowed']);
    exit();
}

$sql = "SELECT day_ID AS id, day_name AS name FROM Day";

$result = $conn->query($sql);
if (!$result) {
    echo json_encode(['success' => false, 'message' => 'Database error: ' . $conn->error]);
    exit();
}

$days = [];
while ($row = $result->fetch_assoc()) {
    $days[] = $row;
}

echo json_encode([
    'success' => true,
    'days' => $days
]);

$conn->close();
?>