<?php
ob_start();
require_once 'assets/vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\IOFactory;
?>
<!DOCTYPE html>
<html>
<head>
  <title>Schedule Import</title>
  <style>
    body { font-family: Arial, sans-serif; max-width: 900px; margin: 20px auto; padding: 20px; }
    .result { background: #f5f5f5; padding: 15px; border-radius: 5px; margin: 10px 0; }
    .success { color: #2e7d32; font-weight: bold; }
    .error { color: #c62828; font-weight: bold; }
    .row-result { padding: 5px; margin: 3px 0; border-left: 3px solid #ddd; }
    .row-result.added { border-left-color: #4caf50; background: #e8f5e9; }
    .row-result.skipped { border-left-color: #ff9800; background: #fff3e0; }
    .summary { background: #e3f2fd; padding: 15px; margin: 20px 0; border-radius: 5px; }
    form { background: #fff; padding: 20px; border: 2px dashed #ccc; border-radius: 5px; }
    input[type="file"] { margin: 10px 0; }
    button { background: #1976d2; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; }
    button:hover { background: #1565c0; }
  </style>
</head>
<body>
  <h1>Schedule Import Result</h1>

<?php
if (!isset($_FILES['excel']) || $_FILES['excel']['error'] == UPLOAD_ERR_NO_FILE) {
  echo "<div class='result error'>✗ No file uploaded. Please select an Excel file to import.</div>";
  showForm();
  die(ob_end_flush());
}

$file = $_FILES['excel']['tmp_name'];
$originalName = htmlspecialchars($_FILES['excel']['name']);
echo "<div class='result'>File: <strong>$originalName</strong></div>";
echo "<div class='result'>";

try {
  $spreadsheet = IOFactory::load($file);
  $rows = $spreadsheet->getActiveSheet()->toArray();
  array_shift($rows); // skip header

  $pdo = new PDO("mysql:host=localhost;dbname=scheduling-system", "root", "");
  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $pdo->beginTransaction();

  $added = $skipped = 0;
  $rowNum = 2;

  foreach ($rows as $row) {
    // Skip completely empty rows
    if (empty(array_filter($row, fn($v) => $v !== null && $v !== ''))) {
      $rowNum++;
      continue;
    }

    $dayName = clean($row[0] ?? '');
    $subjectCode = clean($row[1] ?? '');
    $sectionName = clean($row[2] ?? '');
    $teacherEmail = clean(strtolower($row[3] ?? ''));
    $startStr = clean($row[4] ?? ''); 
    $endStr = clean($row[5] ?? '');
    $roomName = clean($row[6] ?? '');
    $status = clean($row[7] ?? '') ?: 'Pending';

    echo "<div class='row-result";


    $start24 = toMilitary($startStr);
    $end24   = toMilitary($endStr);

    if (!$start24 || !$end24) {
        echo " skipped'> Row $rowNum: <span class='error'>Invalid time format</span> → '$startStr' - '$endStr'</div>";
        $skipped++;
        continue;
    }



    // Find time_ID by matching time_slot in the Time table
    $startID = getId($pdo, "SELECT time_ID FROM Time WHERE time_slot = ?", [$start24]);
    $endID = getId($pdo, "SELECT time_ID FROM Time WHERE time_slot = ?", [$end24]);

    if (!$startID || !$endID) {
      echo " skipped'> Row $rowNum: <span class='error'>Time not found in database</span> → Start: $startStr ($start24) | End: $endStr ($end24)</div>";
      $skipped++;
      $rowNum++;
      continue;
    }
    // === END OF TIME CONVERSION ===

    // Get other IDs from database
    $dayID = getId($pdo, "SELECT day_ID FROM Day WHERE day_name = ?", [$dayName]);
    $subjectID = getId($pdo, "SELECT subject_ID FROM Subject WHERE subject_code = ?", [$subjectCode]);
    $sectionID = getId($pdo, "SELECT section_ID FROM Section WHERE section_name = ?", [$sectionName]);
    $teacherID = getId($pdo, "SELECT person_ID FROM Person WHERE LOWER(person_username) = ?", [$teacherEmail]);
    $roomID = getId($pdo, "SELECT room_ID FROM Room WHERE room_name = ?", [$roomName]);

    // Check for missing references
    $missing = [];
    if (!$dayID) $missing[] = "Day: $dayName";
    if (!$subjectID) $missing[] = "Subject: $subjectCode";
    if (!$sectionID) $missing[] = "Section: $sectionName";
    if (!$teacherID) $missing[] = "Teacher: $teacherEmail";
    if (!$roomID) $missing[] = "Room: $roomName";

    if ($missing) {
      echo " skipped'> Row $rowNum: <span class='error'>Not found</span> → " . implode(' | ', $missing) . "</div>";
      $skipped++;
      $rowNum++;
      continue;
    }

    // Insert schedule record
    $sql = "INSERT INTO Schedule (day_ID, subject_ID, section_ID, teacher_ID, time_start_ID, time_end_ID, room_ID, schedule_status) 
        VALUES (?,?,?,?,?,?,?,?)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$dayID, $subjectID, $sectionID, $teacherID, $startID, $endID, $roomID, $status]);

    echo " added'> Row $rowNum: <span class='success'>ADDED</span> → $subjectCode | $sectionName | $dayName | $startStr-$endStr ($start24-$end24) | $roomName</div>";
    $added++;
    $rowNum++;
  }

  $pdo->commit();

  echo "</div>";
  echo "<div class='summary'>";
  echo "<div class='success'>✓ IMPORT SUCCESSFUL!</div>";
  echo "<div><strong>$added</strong> schedules added | <strong>$skipped</strong> rows skipped</div>";
  echo "</div>";

} catch (Exception $e) {
  if (isset($pdo) && $pdo->inTransaction()) {
    $pdo->rollBack();
  }
  echo "</div>";
  echo "<div class='result error'>";
  echo "<div class='error'>✗ IMPORT FAILED</div>";
  echo "<div>" . htmlspecialchars($e->getMessage()) . "</div>";
  echo "</div>";
}

showForm();
ob_end_flush();

// ────── Helper functions ──────
function clean($s) {
    // FIX: Replace non-breaking space (U+00A0) and multiple spaces with a single regular space
    $s = str_replace(chr(0xC2).chr(0xA0), ' ', $s ?? ''); // Fix common non-breaking space encoding
  return trim(preg_replace('/\s+/', ' ', $s));
}

function getId($pdo, $query, $params) {
  $stmt = $pdo->prepare($query);
  $stmt->execute($params);
  $result = $stmt->fetchColumn();
  return $result !== false ? $result : null;
}

function showForm() {
  echo "<form method='POST' enctype='multipart/form-data'>";
  echo "<h3>Upload Another File</h3>";
  echo "<input type='file' name='excel' accept='.xlsx,.xls' required>";
  echo "<br><button type='submit'>Import Schedule</button>";
  echo "</form>";
}

function cleanTimeString($str) {
    // Trim normal and Unicode spaces
    $str = trim($str);

    // Replace the Unicode narrow-no-break space (U+202F) with a normal space
    $str = preg_replace('/\x{202F}/u', ' ', $str);

    // Remove double spaces
    $str = preg_replace('/\s+/', ' ', $str);

    // Fix cases like "14:00 PM" or "13:00 PM"
    if (preg_match('/^([01]?\d|2[0-3]):[0-5]\d\s?(AM|PM)$/i', $str)) {
        // 24-hour + AM/PM → remove AM/PM
        $str = preg_replace('/\s?(AM|PM)$/i', '', $str);
    }

    return $str;
}

function toMilitary($timeStr) {
    if (!$timeStr) return null;

    $timeStr = cleanTimeString($timeStr);

    // CASE 1: try 12-hour first
    $obj = DateTime::createFromFormat('h:i A', $timeStr);
    if ($obj) return $obj->format('H:i:s');

    // If missing space before AM/PM → fix it
    if (preg_match('/(AM|PM)$/i', $timeStr)) {
        $fixed = preg_replace('/(AM|PM)$/i', ' $1', $timeStr);
        $obj = DateTime::createFromFormat('h:i A', $fixed);
        if ($obj) return $obj->format('H:i:s');
    }

    // CASE 2: try 24-hour time
    $obj = DateTime::createFromFormat('H:i', $timeStr);
    if ($obj) return $obj->format('H:i:s');

    // Parsing failed
    return null;
}


?>

</body>
</html>