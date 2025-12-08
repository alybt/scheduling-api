<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once 'config.php';

try {
    // Get parameters - using teacher_ID
    $teacher_id = isset($_GET['teacher_id']) ? intval($_GET['teacher_id']) : 0;
    $view = isset($_GET['view']) ? $_GET['view'] : 'day';
    $date = isset($_GET['date']) ? $_GET['date'] : date('Y-m-d');
    
    if ($teacher_id <= 0) {
        echo json_encode([
            "success" => false,
            "message" => "Invalid teacher ID"
        ]);
        exit;
    }
    
    // Determine day filter based on view
    if ($view === 'day') {
        // Get day name from date (e.g., "Monday")
        $dayName = date('l', strtotime($date));
        $dayFilter = "AND D.day_name = '$dayName'";
    } else {
        // Week view - no day filter
        $dayFilter = "";
    }
    
    // Query to get teacher's schedule using correct column names
    $query = "
        SELECT 
            S.schedule_ID,
            D.day_name,
            TIME_FORMAT(T_start.time_slot, '%h:%i %p') as time_start,
            TIME_FORMAT(T_end.time_slot, '%h:%i %p') as time_end,
            Sub.subject_code,
            Sub.subject_name,
            Sec.section_name,
            Sec.section_year,
            R.room_name,
            R.room_capacity,
            S.schedule_status,
            CASE 
                WHEN D.day_name = '" . date('l') . "' THEN 1 
                ELSE 0 
            END as is_today
        FROM Schedule S
        INNER JOIN Day D ON S.day_ID = D.day_ID
        INNER JOIN Time T_start ON S.time_start_ID = T_start.time_ID
        INNER JOIN Time T_end ON S.time_end_ID = T_end.time_ID
        INNER JOIN Subject Sub ON S.subject_ID = Sub.subject_ID
        INNER JOIN Section Sec ON S.section_ID = Sec.section_ID
        INNER JOIN Room R ON S.room_ID = R.room_ID
        WHERE S.teacher_ID = ?
        $dayFilter
        AND S.schedule_status IN ('Pending', 'On-Going')
        ORDER BY 
            FIELD(D.day_name, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'),
            T_start.time_slot ASC
    ";
    
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $teacher_id);
    $stmt->execute();
    $result = $stmt->get_result();
    
    $schedules = array();
    while ($row = $result->fetch_assoc()) {
        $schedules[] = $row;
    }
    
    echo json_encode([
        "success" => true,
        "count" => count($schedules),
        "view" => $view,
        "date" => $date,
        "schedules" => $schedules
    ]);
    
    $stmt->close();
    
} catch (Exception $e) {
    echo json_encode([
        "success" => false,
        "message" => "Error: " . $e->getMessage()
    ]);
}

$conn->close();
?>