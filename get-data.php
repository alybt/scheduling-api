<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');


$conn = new mysqli("localhost", "root", "", "scheduling-system");


if ($conn->connect_error) {
    die(json_encode(["error" => "Connection failed: " . $conn->connect_error]));
}

$sql = "SELECT * FROM schedule";
$result = $conn->query($sql);

$data = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

echo json_encode($data);
$conn->close();
?>