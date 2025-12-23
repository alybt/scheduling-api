<?php
// get_sections.php

require_once 'config.php';

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET');
header('Access-Control-Allow-Headers: Content-Type');

if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    echo json_encode(['success' => false, 'message' => 'Method not allowed']);
    exit();
}

$sql = "SELECT section_ID AS id, section_name, section_year FROM section ORDER BY section_year ASC, section_name ASC";

$stmt = $conn->prepare($sql);
if ($stmt === false) {
    echo json_encode(['success' => false, 'message' => 'Query preparation failed: ' . $conn->error]);
    exit();
}

if (!$stmt->execute()) {
    echo json_encode(['success' => false, 'message' => 'Query execution failed: ' . $stmt->error]);
    exit();
}

$result = $stmt->get_result();

if (!$result) {
    echo json_encode(['success' => false, 'message' => 'Database error: ' . $conn->error]);
    exit();
}

$sections = [];
while ($row = $result->fetch_assoc()) {
    $sections[] = [
        'id' => (int)$row['id'],
        'section_name' => $row['section_name'],
        'section_year' => (int)$row['section_year']
    ];
}

echo json_encode([
    'success' => true,
    'sections' => $sections
]);

$stmt->close();
$conn->close();
?>