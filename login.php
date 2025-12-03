<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type');

date_default_timezone_set('Asia/Manila');

$conn = new mysqli("localhost", "root", "", "scheduling-system");

if ($conn->connect_error) {
    echo json_encode(["status" => "error", "message" => $conn->connect_error]);
    exit();
}

// Read JSON input
$input = json_decode(file_get_contents("php://input"), true);

$username = $input["username"] ?? "";
$password = $input["password"] ?? "";

// Validate empty fields
if (empty($username) || empty($password)) {
    echo json_encode(["status" => "error", "message" => "Missing username or password"]);
    exit();
}

// Use prepared statement (SECURE)
$sql = "SELECT person_id, person_username, person_password 
        FROM Person 
        WHERE person_username = ? LIMIT 1";

$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $username);
$stmt->execute();

$result = $stmt->get_result();

// Check if user exists
if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();

    // Check password (plain text version)
    if ($password === $user["person_password"]) {

        echo json_encode([
            "status" => "success",
            "message" => "Login successful",
            "user" => [
                "id" => $user["person_id"],
                "username" => $user["person_username"]
            ]
        ]);

    } else {
        echo json_encode(["status" => "error", "message" => "Incorrect password"]);
    }
} else {
    echo json_encode(["status" => "error", "message" => "User not found"]);
}

$stmt->close();
$conn->close();
?>
