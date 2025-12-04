<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");

$conn = new mysqli("localhost", "root", "", "scheduling-system");

if ($conn->connect_error) {
    echo json_encode(["success" => false, "message" => "Database connection failed"]);
    exit();
}

$input = json_decode(file_get_contents("php://input"), true);

$email = $input['email'] ?? '';
$password = $input['password'] ?? '';

if (empty($email) || empty($password)) {
    echo json_encode(["success" => false, "message" => "Email and password required"]);
    exit();
}

// Direct plain text comparison (as requested)
$sql = "SELECT p.person_ID, p.person_username, p.account_ID, a.account_name,
               n.name_first, n.name_last
        FROM Person p
        JOIN Account_Type a ON p.account_ID = a.account_ID
        JOIN Name n ON p.name_ID = n.name_ID
        WHERE p.person_username = ? AND p.person_password = ?";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $email, $password);
$stmt->execute();
$result = $stmt->get_result();

if ($row = $result->fetch_assoc()) {
    echo json_encode([
        "success" => true,
        "user" => [
            "id" => $row['person_ID'],
            "username" => $row['person_username'],
            "first_name" => $row['name_first'],
            "last_name" => $row['name_last'],
            "account_type" => $row['account_name'],
            "account_id" => $row['account_ID']
        ]
    ]);
} else {
    echo json_encode(["success" => false, "message" => "Invalid email or password"]);
}

$stmt->close();
$conn->close();
?>