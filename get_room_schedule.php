<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET');

// Database connection
$host = 'localhost';
$dbname = 'scheduling-system';
$username = 'root';
$password = '';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Get room_id from query parameter
    $room_id = isset($_GET['room_id']) ? (int)$_GET['room_id'] : 0;

    if ($room_id <= 0) {
        echo json_encode([
            'success' => false,
            'message' => 'Invalid room ID'
        ]);
        exit;
    }

    // Get room information
    $roomStmt = $pdo->prepare("
        SELECT room_name, room_capacity
        FROM room
        WHERE room_ID = ? AND room_isDeleted = 0
    ");
    $roomStmt->execute([$room_id]);
    $room = $roomStmt->fetch(PDO::FETCH_ASSOC);

    if (!$room) {
        echo json_encode([
            'success' => false,
            'message' => 'Room not found'
        ]);
        exit;
    }

    // Get all schedules for this room
    $stmt = $pdo->prepare("
        SELECT 
            s.schedule_ID as schedule_id,
            d.day_name,
            t1.display_name as time_start,
            t2.display_name as time_end,
            sub.subject_code,
            sub.subject_name,
            sec.section_name,
            sec.section_year,
            CONCAT(
                COALESCE(n.name_first, ''),
                ' ',
                COALESCE(n.name_middle, ''),
                ' ',
                n.name_last,
                COALESCE(CONCAT(' ', n.name_suffix), '')
            ) as teacher_name,
            s.schedule_status
        FROM schedule s
        INNER JOIN day d ON s.day_ID = d.day_ID
        INNER JOIN time t1 ON s.time_start_ID = t1.time_ID
        INNER JOIN time t2 ON s.time_end_ID = t2.time_ID
        INNER JOIN subject sub ON s.subject_ID = sub.subject_ID
        INNER JOIN section sec ON s.section_ID = sec.section_ID
        INNER JOIN person p ON s.teacher_ID = p.person_ID
        INNER JOIN name n ON p.name_ID = n.name_ID
        WHERE s.room_ID = ?
        ORDER BY 
            FIELD(d.day_name, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'),
            t1.time_slot ASC
    ");
    
    $stmt->execute([$room_id]);
    $schedules = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Clean up teacher names (remove extra spaces)
    foreach ($schedules as &$schedule) {
        $schedule['teacher_name'] = preg_replace('/\s+/', ' ', trim($schedule['teacher_name']));
    }

    echo json_encode([
        'success' => true,
        'room_name' => $room['room_name'],
        'room_capacity' => (int)$room['room_capacity'],
        'schedules' => $schedules,
        'count' => count($schedules)
    ]);

} catch (PDOException $e) {
    echo json_encode([
        'success' => false,
        'message' => 'Database error: ' . $e->getMessage()
    ]);
}
?>