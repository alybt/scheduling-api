// POST /api/v1/auth/login
<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');


$data = json_decode(file_get_contents("php://input"), true);

$username = $data['username'] ?? '';
$password = $data['password'] ?? '';

if (empty($username) || empty($password)) {
    echo json_encode(["success" => false, "message" => "Username and password are required"]);
    exit;
}

if ($conn->connect_error) {
    die(json_encode(["error" => $conn->connect_error]));
}

$stmt = $pdo->prepare("
    SELECT p.person_ID, p.person_username, p.person_password,
           a.account_ID, a.account_name,
           n.name_first, n.name_second, n.name_middle, n.name_last, n.name_suffix
    FROM person p
    JOIN account_type a ON p.account_ID = a.account_ID
    JOIN name n ON p.name_ID = n.name_ID
    WHERE p.person_username = ?
");

$stmt->execute([$username]);
$user = $stmt->fetch(PDO::FETCH_ASSOC);

if ($user && password_verify($password, $user['person_password'])) {

    $token = generateJwt($user['person_ID'], $user['person_username'], $user['account_name']);

    unset($user['person_password']); 

    echo json_encode([
        "success" => true,
        "message" => "Login successful",
        "data" => [
            "token" => $token,
            "user" => [
                "person_id" => $user['person_ID'],
                "username" => $user['person_username'],
                "account_type" => [
                    "account_id" => $user['account_ID'],
                    "account_name" => $user['account_name']
                ],
                "name" => [
                    "first" => $user['name_first'],
                    "middle" => $user['name_middle'],
                    "last" => $user['name_last'],
                    "second" => $user['name_second'],
                    "suffix" => $user['name_suffix']
                ]
            ]
        ]
    ]);
} else {
    http_response_code(401);
    echo json_encode(["success" => false, "message" => "Invalid username or password"]);
}
?>