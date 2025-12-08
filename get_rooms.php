<?php
require_once 'config.php';

header('Content-Type: application/json');

$query = "SELECT room_ID AS id, room_name AS name, room_capacity AS capacity 
          FROM Room 
          WHERE room_isDeleted = 0 
          ORDER BY room_name";

$result = $conn->query($query);

if (!$result) {
    echo json_encode(['success' => false, 'message' => 'Query failed']);
    exit();
}

$rooms = [];
while ($row = $result->fetch_assoc()) {
    $rooms[] = $row;
}

echo json_encode([
    'success' => true,
    'rooms' => $rooms
]);

$conn->close();
?>