<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');

// Connect to database
$conn = new mysqli("localhost", "root", "", "scheduling_system");

// Check connection
if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode(["success" => false, "message" => "Database connection failed: " . $conn->connect_error]);
    exit;
}

// Get POST data
$person_username = $_POST['person_username'] ?? '';
$person_password = $_POST['person_password'] ?? '';

if (empty($person_username) || empty($person_password)) {
    http_response_code(400);
    echo json_encode(["success" => false, "message" => "Username and password are required"]);
    exit;
}

// Query to get user with account type and name
$sql = "SELECT p.person_ID, p.person_username, p.person_password,
               a.account_ID, a.account_name,
               n.name_first, n.name_last
        FROM person p
        JOIN account_type a ON p.account_ID = a.account_ID
        JOIN name n ON p.name_ID = n.name_ID
        WHERE p.person_username = ?
        LIMIT 1";

$stmt = $conn->prepare($sql);
if (!$stmt) {
    http_response_code(500);
    echo json_encode(["success" => false, "message" => "Prepare failed: " . $conn->error]);
    exit;
}

$stmt->bind_param("s", $person_username);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();

if ($user) {
    // For demo purposes, compare plain text passwords
    // In production, use password_hash() and password_verify()
    if ($person_password === $user['person_password']) {
        echo json_encode([
            "success" => true,
            "message" => "Login successful",
            "data" => [
                "personId" => (int)$user['person_ID'],
                "username" => $user['person_username'],
                "accountType" => $user['account_name'],
                "firstName" => $user['name_first'],
                "lastName" => $user['name_last']
            ]
        ]);
    } else {
        http_response_code(401);
        echo json_encode(["success" => false, "message" => "Invalid username or password"]);
    }
} else {
    http_response_code(401);
    echo json_encode(["success" => false, "message" => "Invalid username or password"]);
}

$stmt->close();
$conn->close();
?>