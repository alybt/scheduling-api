<?php
<<<<<<< HEAD
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
=======
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
>>>>>>> 212aa7222aada807151dc33f2c4f92bfec6cea54
$stmt->execute();

$result = $stmt->get_result();

<<<<<<< HEAD
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
=======
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
>>>>>>> 212aa7222aada807151dc33f2c4f92bfec6cea54
}

$stmt->close();
$conn->close();
?>