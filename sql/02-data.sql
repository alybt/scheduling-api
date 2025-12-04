INSERT INTO `time` (`time_ID`, `time_start`, `time_end`) VALUES
(1, '07:00:00', '07:30:00'),
(2, '07:30:00', '08:00:00'),
(3, '08:00:00', '08:30:00'),
(4, '08:30:00', '09:00:00'),
(5, '09:00:00', '09:30:00'),
(6, '09:30:00', '10:00:00'),
(7, '10:00:00', '10:30:00'),
(8, '10:30:00', '11:00:00'),
(9, '11:00:00', '11:30:00'),
(10, '11:30:00', '12:00:00'),
(11, '12:00:00', '12:30:00'),
(12, '12:30:00', '13:00:00'),
(13, '13:00:00', '13:30:00'),
(14, '13:30:00', '14:00:00'),
(15, '14:00:00', '14:30:00'),
(16, '14:30:00', '15:00:00'),
(17, '15:00:00', '15:30:00'),
(18, '15:30:00', '16:00:00'),
(19, '16:00:00', '16:30:00'),
(20, '16:30:00', '17:00:00'),
(21, '17:00:00', '17:30:00'),
(22, '17:30:00', '18:00:00'),
(23, '18:00:00', '18:30:00'),
(24, '18:30:00', '19:00:00');


-- Insert days
INSERT INTO `day` (`day_ID`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');


INSERT INTO `account_type` (`account_ID`, `account_name`) VALUES
(1, 'Admin'),
(2, 'Teacher');

-- Insert rooms
INSERT INTO `room` ( `room_name`, `room_capacity`) VALUES
('Lab 1', 30),
('Lab 2', 30),
('LR 1', 40),
('LR 2', 40),
('LR 3', 25),
('LR 4', 40),
('LR 5', 25);

INSERT INTO Subject (subject_code, subject_name) VALUES
('ACT 115', 'ACT 115'),
('ACT 116', 'ACT 116'),
('ACT 213', 'ACT 213'),
('ACT 214', 'ACT 214'),
('ACT 215', 'ACT 215'),
('ADS 133', 'ADS 133'),
('ATFL 135', 'ATFL 135'),
('CALC 139', 'CALC 139'),
('CC 100', 'CC 100'),
('CC 101', 'CC 101'),
('CC 103', 'CC 103'),
('CC 104', 'CC 104'),
('CC 105', 'CC 105'),
('CDI 108', 'CDI 108'),
('CSE 131', 'CSE 131'),
('CSE 133', 'CSE 133'),
('DS 111', 'DS 111'),
('FIL 101', 'FIL 101'),
('IT 143', 'IT 143'),
('IT 145', 'IT 145'),
('IT 211', 'IT 211'),
('IT 212', 'IT 212'),
('IT 213', 'IT 213'),
('IT 311', 'IT 311'),
('IT 312', 'IT 312'),
('IT 313', 'IT 313'),
('IT 314', 'IT 314'),
('MAD 121', 'MAD 121'),
('NC 127', 'NC 127'),
('OS 137', 'OS 137'),
('SE 131', 'SE 131'),
('SIPP 125', 'SIPP 125'),
('WD 123', 'WD 123');

INSERT INTO Section (section_name, section_year) VALUES
('AD 1A', 1),
('AD 1B', 1),
('AD 2', 2),

('CRIM 4A', 4),
('CRIM 4B', 4),
('CRIM 4C', 4),
('CRIM 4D', 4),

('CS 1A', 1),
('CS 1B', 1),
('CS 2', 2),
('CS 3A', 3),
('CS 3B', 3),
('CS 3C', 3),

('IT 1A', 1),
('IT 1B', 1),
('IT 2', 2),
('IT 3A', 3),
('IT 3B', 3),
('IT 3C', 3),
('IT 4A', 4),
('IT 4B', 4),
('IT 4C', 4),

('NW 1A', 1),
('NW 1B', 1),
('NW 2', 2);

-- Insert names
INSERT INTO `name` (`name_ID`, `name_first`, `name_second`, `name_middle`, `name_last`, `name_suffix`) VALUES
(1, 'John', NULL, 'Michael', 'Doe', NULL),
(2, 'Jane', NULL, 'Marie', 'Smith', NULL),
(3, 'Robert', NULL, 'James', 'Johnson', NULL),
(4, NULL, NULL, NULL, 'ABIRIN', NULL),
(5, 'A', NULL, NULL, 'ARIP', NULL),
(6, 'JA', NULL, NULL, 'ARIP', NULL),
(7, 'JP', NULL, NULL, 'ARIP', NULL),
(8, NULL, NULL, NULL, 'BALAN', NULL),
(9, NULL, NULL, NULL, 'BALLAHO', NULL),
(10, NULL, NULL, NULL, 'BANQUERIGO', NULL),
(11, NULL, NULL, NULL, 'BELAMIDE', NULL),
(12, NULL, NULL, NULL, 'CATADMAN', NULL),
(13, 'A', NULL, NULL, 'ESCORIAL', NULL),
(14, 'J', NULL, NULL, 'ESCORIAL', NULL),
(15, NULL, NULL, NULL, 'FELIX', NULL),
(16, NULL, NULL, NULL, 'FLORES', NULL),
(17, NULL, NULL, NULL, 'JAAFAR', NULL),
(18, NULL, NULL, NULL, 'JAILANI', NULL),
(19, NULL, NULL, NULL, 'LINES', NULL),
(20, 'JEZ', NULL, NULL, 'LORENZO', NULL),
(21, 'JEN', NULL, NULL, 'LORENZO', NULL),
(22, NULL, NULL, NULL, 'MARAVILLAS', NULL),
(23, NULL, NULL, NULL, 'ROJAS', NULL),
(24, NULL, NULL, NULL, 'SAAVEDRA', NULL),
(25, NULL, NULL, NULL, 'TAHIL', NULL),
(26, NULL, NULL, NULL, 'TIMPANGCO', NULL),
(27, NULL, NULL, NULL, 'ZABALA', NULL);


INSERT INTO `person` (`person_username`, `person_password`, `account_ID`, `name_ID`) VALUES
('admin@example.com',       'password123', 1,  1),
('teacher@example.com',     'password123', 2,  2),
('abirin@example.com',      'password123', 2,  4),
('arip.a@example.com',      'password123', 2,  5),
('arip.ja@example.com',     'password123', 2,  6),
('arip.jp@example.com',     'password123', 2,  7),
('balan@example.com',       'password123', 2,  8),
('ballaho@example.com',     'password123', 2,  9),
('banquerigo@example.com',  'password123', 2, 10),
('belamide@example.com',    'password123', 2, 11),
('catadman@example.com',    'password123', 2, 12),
('escorial.a@example.com',  'password123', 2, 13),
('escorial.j@example.com',  'password123', 2, 14),
('felix@example.com',       'password123', 2, 15),
('flores@example.com',      'password123', 2, 16),
('jaafar@example.com',      'password123', 2, 17),
('jailani@example.com',     'password123', 2, 18),
('lines@example.com',       'password123', 2, 19),
('lorenzo.jez@example.com', 'password123', 2, 20),
('lorenzo.jen@example.com', 'password123', 2, 21),
('maravillas@example.com',  'password123', 2, 22),
('rojas@example.com',       'password123', 2, 23),
('saavedra@example.com',    'password123', 2, 24),
('tahil@example.com',       'password123', 2, 25),
('timpangco@example.com',   'password123', 2, 26),
('zabala@example.com',      'password123', 2, 27);

-- ===============================
-- INSERT TEACHERS
-- ===============================
-- First, we need to create Teacher records for each person who teaches
-- Mapping: person_ID is assigned based on the order of INSERT in person table
INSERT INTO `teacher` (`person_ID`) 
SELECT person_ID FROM person WHERE person_username = 'abirin@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'arip.a@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'arip.ja@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'arip.jp@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'balan@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'ballaho@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'banquerigo@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'belamide@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'catadman@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'escorial.a@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'escorial.j@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'felix@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'flores@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'jaafar@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'jailani@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'lines@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'lorenzo.jez@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'lorenzo.jen@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'maravillas@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'rojas@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'saavedra@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'tahil@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'timpangco@example.com' UNION ALL
SELECT person_ID FROM person WHERE person_username = 'zabala@example.com';

-- ===============================
-- INSERT SCHEDULE ENTRIES
-- ===============================
-- Helper function to get teacher_ID by username
-- Note: Replace room_ID = 1 with actual room assignments

-- MONDAY
INSERT INTO `schedule` (`day_ID`, `subject_ID`, `section_ID`, `teacher_ID`, `time_ID`, `room_ID`, `schedule_status`) 
-- 8:30-10:00 - CC 104, CS 2, FELIX
SELECT 1, 12, 10, t.teacher_ID, 4, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'felix@example.com' UNION ALL
SELECT 1, 12, 10, t.teacher_ID, 5, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'felix@example.com' UNION ALL
SELECT 1, 12, 10, t.teacher_ID, 6, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'felix@example.com' UNION ALL
-- 11:30-1:00 - WD 123, AD 2, BALLAHO
SELECT 1, 33, 2, t.teacher_ID, 10, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'ballaho@example.com' UNION ALL
SELECT 1, 33, 2, t.teacher_ID, 11, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'ballaho@example.com' UNION ALL
SELECT 1, 33, 2, t.teacher_ID, 12, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'ballaho@example.com' UNION ALL
-- 2:30-4:00 - CC 104, IT 2, FELIX
SELECT 1, 12, 16, t.teacher_ID, 16, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'felix@example.com' UNION ALL
SELECT 1, 12, 16, t.teacher_ID, 17, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'felix@example.com' UNION ALL
SELECT 1, 12, 16, t.teacher_ID, 18, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'felix@example.com' UNION ALL
-- 5:30-7:00 - CC 101, IT 1A, BANQUERIGO
SELECT 1, 10, 14, t.teacher_ID, 22, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
SELECT 1, 10, 14, t.teacher_ID, 23, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
SELECT 1, 10, 14, t.teacher_ID, 24, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com';

-- TUESDAY
INSERT INTO `schedule` (`day_ID`, `subject_ID`, `section_ID`, `teacher_ID`, `time_ID`, `room_ID`, `schedule_status`) 
-- 8:30-10:00 - CC 104, AD 2, FELIX
SELECT 2, 12, 2, t.teacher_ID, 4, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'felix@example.com' UNION ALL
SELECT 2, 12, 2, t.teacher_ID, 5, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'felix@example.com' UNION ALL
SELECT 2, 12, 2, t.teacher_ID, 6, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'felix@example.com' UNION ALL
-- 11:30-1:00 - WD 123, CS 2, BALLAHO
SELECT 2, 33, 10, t.teacher_ID, 10, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'ballaho@example.com' UNION ALL
SELECT 2, 33, 10, t.teacher_ID, 11, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'ballaho@example.com' UNION ALL
SELECT 2, 33, 10, t.teacher_ID, 12, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'ballaho@example.com' UNION ALL
-- 2:30-4:00 - CC 104, NW 2, FELIX
SELECT 2, 12, 25, t.teacher_ID, 16, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'felix@example.com' UNION ALL
SELECT 2, 12, 25, t.teacher_ID, 17, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'felix@example.com' UNION ALL
SELECT 2, 12, 25, t.teacher_ID, 18, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'felix@example.com' UNION ALL
-- 5:30-7:00 - CC 101, NW 1B, BANQUERIGO
SELECT 2, 10, 24, t.teacher_ID, 22, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
SELECT 2, 10, 24, t.teacher_ID, 23, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
SELECT 2, 10, 24, t.teacher_ID, 24, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com';

-- WEDNESDAY
INSERT INTO `schedule` (`day_ID`, `subject_ID`, `section_ID`, `teacher_ID`, `time_ID`, `room_ID`, `schedule_status`) 
-- 7:00-8:30 - CC 100, AD 1A, BALAN
SELECT 3, 9, 1, t.teacher_ID, 1, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'balan@example.com' UNION ALL
SELECT 3, 9, 1, t.teacher_ID, 2, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'balan@example.com' UNION ALL
SELECT 3, 9, 1, t.teacher_ID, 3, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'balan@example.com' UNION ALL
-- 8:30-10:00 - CC 103, AD 2, JAAFAR
SELECT 3, 11, 2, t.teacher_ID, 4, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'jaafar@example.com' UNION ALL
SELECT 3, 11, 2, t.teacher_ID, 5, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'jaafar@example.com' UNION ALL
SELECT 3, 11, 2, t.teacher_ID, 6, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'jaafar@example.com' UNION ALL
-- 11:30-1:00 - CC 101, AD 1A, MARAVILLAS
SELECT 3, 10, 1, t.teacher_ID, 10, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'maravillas@example.com' UNION ALL
SELECT 3, 10, 1, t.teacher_ID, 11, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'maravillas@example.com' UNION ALL
SELECT 3, 10, 1, t.teacher_ID, 12, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'maravillas@example.com' UNION ALL
-- 2:30-4:00 - CC 101, CS 1A, MARAVILLAS
SELECT 3, 10, 8, t.teacher_ID, 16, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'maravillas@example.com' UNION ALL
SELECT 3, 10, 8, t.teacher_ID, 17, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'maravillas@example.com' UNION ALL
SELECT 3, 10, 8, t.teacher_ID, 18, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'maravillas@example.com' UNION ALL
-- 5:30-7:00 - CC 101, NW 1A, BANQUERIGO
SELECT 3, 10, 23, t.teacher_ID, 22, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
SELECT 3, 10, 23, t.teacher_ID, 23, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
SELECT 3, 10, 23, t.teacher_ID, 24, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com';

-- THURSDAY
INSERT INTO `schedule` (`day_ID`, `subject_ID`, `section_ID`, `teacher_ID`, `time_ID`, `room_ID`, `schedule_status`) 
-- 8:30-10:00 - CC 101, IT 1B, BANQUERIGO
SELECT 4, 10, 15, t.teacher_ID, 4, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
SELECT 4, 10, 15, t.teacher_ID, 5, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
SELECT 4, 10, 15, t.teacher_ID, 6, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
-- 11:30-1:00 - IT 211, IT 2, BALLAHO
SELECT 4, 21, 16, t.teacher_ID, 10, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'ballaho@example.com' UNION ALL
SELECT 4, 21, 16, t.teacher_ID, 11, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'ballaho@example.com' UNION ALL
SELECT 4, 21, 16, t.teacher_ID, 12, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'ballaho@example.com' UNION ALL
-- 2:30-4:00 - CC 101, CS 1B, MARAVILLAS
SELECT 4, 10, 9, t.teacher_ID, 16, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'maravillas@example.com' UNION ALL
SELECT 4, 10, 9, t.teacher_ID, 17, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'maravillas@example.com' UNION ALL
SELECT 4, 10, 9, t.teacher_ID, 18, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'maravillas@example.com' UNION ALL
-- 5:30-7:00 - CC 101, AD 1B, JAILANI
SELECT 4, 10, 2, t.teacher_ID, 22, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'jailani@example.com' UNION ALL
SELECT 4, 10, 2, t.teacher_ID, 23, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'jailani@example.com' UNION ALL
SELECT 4, 10, 2, t.teacher_ID, 24, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'jailani@example.com';

-- FRIDAY
INSERT INTO `schedule` (`day_ID`, `subject_ID`, `section_ID`, `teacher_ID`, `time_ID`, `room_ID`, `schedule_status`) 
-- 7:00-8:30 - NC 127, CS 2, FLORES
SELECT 5, 29, 10, t.teacher_ID, 1, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'flores@example.com' UNION ALL
SELECT 5, 29, 10, t.teacher_ID, 2, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'flores@example.com' UNION ALL
SELECT 5, 29, 10, t.teacher_ID, 3, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'flores@example.com' UNION ALL
-- 10:00-11:30 - NC 127, AD 2, FLORES
SELECT 5, 29, 2, t.teacher_ID, 7, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'flores@example.com' UNION ALL
SELECT 5, 29, 2, t.teacher_ID, 8, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'flores@example.com' UNION ALL
SELECT 5, 29, 2, t.teacher_ID, 9, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'flores@example.com' UNION ALL
-- 11:30-1:00 - CSE 131, CS 3C, LORENZO JEZ
SELECT 5, 15, 13, t.teacher_ID, 10, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'lorenzo.jez@example.com' UNION ALL
SELECT 5, 15, 13, t.teacher_ID, 11, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'lorenzo.jez@example.com' UNION ALL
SELECT 5, 15, 13, t.teacher_ID, 12, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'lorenzo.jez@example.com' UNION ALL
-- 2:30-4:00 - CC 103, NW 2, JAILANI
SELECT 5, 11, 25, t.teacher_ID, 16, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'jailani@example.com' UNION ALL
SELECT 5, 11, 25, t.teacher_ID, 17, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'jailani@example.com' UNION ALL
SELECT 5, 11, 25, t.teacher_ID, 18, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'jailani@example.com' UNION ALL
-- 5:30-7:00 - CC 103, CS 2, JAAFAR
SELECT 5, 11, 10, t.teacher_ID, 22, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'jaafar@example.com' UNION ALL
SELECT 5, 11, 10, t.teacher_ID, 23, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'jaafar@example.com' UNION ALL
SELECT 5, 11, 10, t.teacher_ID, 24, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'jaafar@example.com';

-- SATURDAY
INSERT INTO `schedule` (`day_ID`, `subject_ID`, `section_ID`, `teacher_ID`, `time_ID`, `room_ID`, `schedule_status`) 
-- 7:00-8:30 - IT 311, IT 3A, ARIP JP
SELECT 6, 24, 17, t.teacher_ID, 1, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'arip.jp@example.com' UNION ALL
SELECT 6, 24, 17, t.teacher_ID, 2, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'arip.jp@example.com' UNION ALL
SELECT 6, 24, 17, t.teacher_ID, 3, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'arip.jp@example.com' UNION ALL
-- 10:00-11:30 - IT 311, IT 3B, ARIP JP
SELECT 6, 24, 18, t.teacher_ID, 7, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'arip.jp@example.com' UNION ALL
SELECT 6, 24, 18, t.teacher_ID, 8, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'arip.jp@example.com' UNION ALL
SELECT 6, 24, 18, t.teacher_ID, 9, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'arip.jp@example.com' UNION ALL
-- 11:30-1:00 - MAD 121, AD 2, BANQUERIGO
SELECT 6, 28, 2, t.teacher_ID, 10, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
SELECT 6, 28, 2, t.teacher_ID, 11, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
SELECT 6, 28, 2, t.teacher_ID, 12, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
-- 1:00-2:30 - ACT 214, NW 2, ARIP JP
SELECT 6, 4, 25, t.teacher_ID, 13, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'arip.jp@example.com' UNION ALL
SELECT 6, 4, 25, t.teacher_ID, 14, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'arip.jp@example.com' UNION ALL
SELECT 6, 4, 25, t.teacher_ID, 15, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'arip.jp@example.com' UNION ALL
-- 4:00-5:30 - ACT 215, NW 2, ARIP JP
SELECT 6, 5, 25, t.teacher_ID, 19, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'arip.jp@example.com' UNION ALL
SELECT 6, 5, 25, t.teacher_ID, 20, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'arip.jp@example.com' UNION ALL
SELECT 6, 5, 25, t.teacher_ID, 21, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'arip.jp@example.com' UNION ALL
-- 5:30-7:00 - MAD 121, CS 2, BANQUERIGO
SELECT 6, 28, 10, t.teacher_ID, 22, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
SELECT 6, 28, 10, t.teacher_ID, 23, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com' UNION ALL
SELECT 6, 28, 10, t.teacher_ID, 24, 1, 'Pending' FROM teacher t JOIN person p ON t.person_ID = p.person_ID WHERE p.person_username = 'banquerigo@example.com';