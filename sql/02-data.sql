INSERT INTO Time (time_slot, display_name) VALUES
('07:00:00', '07:00 AM'),
('07:30:00', '07:30 AM'),
('08:00:00', '08:00 AM'),
('08:30:00', '08:30 AM'),
('09:00:00', '09:00 AM'),
('09:30:00', '09:30 AM'),
('10:00:00', '10:00 AM'),
('10:30:00', '10:30 AM'),
('11:00:00', '11:00 AM'),
('11:30:00', '11:30 AM'),
('12:00:00', '12:00 PM'),
('12:30:00', '12:30 PM'),
('13:00:00', '01:00 PM'),
('13:30:00', '01:30 PM'),
('14:00:00', '02:00 PM'),
('14:30:00', '02:30 PM'),
('15:00:00', '03:00 PM'),
('15:30:00', '03:30 PM'),
('16:00:00', '04:00 PM'),
('16:30:00', '04:30 PM'),
('17:00:00', '05:00 PM'),
('17:30:00', '05:30 PM'),
('18:00:00', '06:00 PM'),
('18:30:00', '06:30 PM'),
('19:00:00', '07:00 PM');


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

-- FULL SCHEDULE INSERT (ALL ROOMS) - READY TO RUN
INSERT INTO Schedule (
    day_ID,
    subject_ID,
    section_ID,
    teacher_ID,
    time_start_ID,   -- 07:00 = 1, 07:30 = 2, 08:00 = 3, 08:30 = 4, etc.
    time_end_ID,     -- class ends at this slot (exclusive)
    room_ID,
    schedule_status
) VALUES

-- MONDAY (day_ID = 1)
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CC 104'), (SELECT section_ID FROM Section WHERE section_name='CS 2'), (SELECT person_ID FROM Person WHERE person_username='felix@example.com'),        1,  4, 1, 'Occupied'),  -- 7:00–8:30  → Lab 1
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CC 103'), (SELECT section_ID FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='jaafar@example.com'),      4,  7, 1, 'Occupied'),  -- 8:30–10:00 → Lab 1
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CC 104'), (SELECT section_ID FROM Section WHERE section_name='IT 2'), (SELECT person_ID FROM Person WHERE person_username='felix@example.com'),       10, 13, 1, 'Occupied'), -- 11:30–1:00 → Lab 1

-- TUESDAY (day_ID = 2)
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CC 104'), (SELECT section_ID FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='felix@example.com'),        1,  4, 1, 'Occupied'),  -- 7:00–8:30  → Lab 1
(2, (SELECT subject_ID FROM Subject WHERE subject_code='NC 127'), (SELECT section_ID FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='flores@example.com'),       4,  7, 1, 'Occupied'),  -- 8:30–10:00 → Lab 1
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CC 104'), (SELECT section_ID FROM Section WHERE section_name='NW 2'), (SELECT person_ID FROM Person WHERE person_username='felix@example.com'),       10, 13, 1, 'Occupied'), -- 11:30–1:00 → Lab 1

-- WEDNESDAY (day_ID = 3)
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='AD 1A'), (SELECT person_ID FROM Person WHERE person_username='balan@example.com'),     1,  4, 2, 'Occupied'),  -- 7:00–8:30  → Lab 2 (or change room_ID)
(3, (SELECT subject_ID FROM Subject WHERE subject_code='IT 311'), (SELECT section_ID FROM Section WHERE section_name='IT 3B'), (SELECT person_ID FROM Person WHERE person_username='arip.jp@example.com'), 4,  7, 1, 'Occupied'),  -- 8:30–10:00 → Lab 1
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 131'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jez@example.com'),10, 13, 2, 'Occupied'), -- 11:30–1:00 → Lab 2

-- THURSDAY (day_ID = 4)
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='IT 1B'), (SELECT person_ID FROM Person WHERE person_username='banquerigo@example.com'),1,  4, 2, 'Occupied'),  -- 7:00–8:30
(4, (SELECT subject_ID FROM Subject WHERE subject_code='WD 123'), (SELECT section_ID   FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='ballaho@example.com'),     4,  7, 1, 'Occupied'),  -- 8:30–10:00 → Lab 1
(4, (SELECT subject_ID FROM Subject WHERE subject_code='IT 211'), (SELECT section_ID FROM Section WHERE section_name='IT 2'),   (SELECT person_ID FROM Person WHERE person_username='ballaho@example.com'),    10, 13, 1, 'Occupied'), -- 11:30–1:00 → Lab 1
(4, (SELECT subject_ID FROM Subject WHERE subject_code='MAD 121'), (SELECT section_ID FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='banquerigo@example.com'),  13, 16, 2, 'Occupied'), -- 1:00–2:30

-- FRIDAY (day_ID = 5)
(5, (SELECT subject_ID FROM Subject WHERE subject_code='NC 127'), (SELECT section_ID FROM Section WHERE section_name='CS 2'), (SELECT person_ID FROM Person WHERE person_username='flores@example.com'),       1,  4, 1, 'Occupied'),  -- 7:00–8:30  → Lab 1
(5, (SELECT subject_ID FROM Subject WHERE subject_code='WD 123'), (SELECT section_ID FROM Section WHERE section_name='CS 2'), (SELECT person_ID FROM Person WHERE person_username='ballaho@example.com'),         4,  7, 1, 'Occupied'),  -- 8:30–10:00 → Lab 1
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='AD 1A'), (SELECT person_ID FROM Person WHERE person_username='maravillas@example.com'),10, 13, 3, 'Occupied'), -- 11:30–1:00
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 103'), (SELECT section_ID FROM Section WHERE section_name='NW 2'), (SELECT person_ID FROM Person WHERE person_username='jailani@example.com'),    13, 16, 2, 'Occupied'), -- 1:00–2:30
(5, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 214'), (SELECT section_ID FROM Section WHERE section_name='NW 2'), (SELECT person_ID FROM Person WHERE person_username='arip.jp@example.com'),  16, 19, 1, 'Occupied'), -- 2:30–4:00 → Lab 1
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='IT 1A'), (SELECT person_ID FROM Person WHERE person_username='banquerigo@example.com'),16, 19, 4, 'Occupied'), -- 4:00–5:30
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='NW 1B'), (SELECT person_ID FROM Person WHERE person_username='banquerigo@example.com'),16, 19, 5, 'Occupied'),
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='NW 1A'), (SELECT person_ID FROM Person WHERE person_username='banquerigo@example.com'),16, 19, 6, 'Occupied'),
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='AD 1B'), (SELECT person_ID FROM Person WHERE person_username='jailani@example.com'),     16, 19, 7, 'Occupied'),
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 103'), (SELECT section_ID FROM Section WHERE section_name='CS 2'),   (SELECT person_ID FROM Person WHERE person_username='jaafar@example.com'),      16, 19, 2, 'Occupied'),
(5, (SELECT subject_ID FROM Subject WHERE subject_code='MAD 121'), (SELECT section_ID FROM Section WHERE section_name='CS 2'),   (SELECT person_ID FROM Person WHERE person_username='banquerigo@example.com'),    19, 22, 1, 'Occupied'); -- 5:30–7:00 → Lab 1

-- Lab 2
-- MONDAY (day_ID = 1)
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='NW 1A'), (SELECT person_ID FROM Person WHERE person_username='abirin@example.com'), 1, 4, 2, 'Occupied'),  -- 7:00–8:30 → Lab 2
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='NW 1B'), (SELECT person_ID FROM Person WHERE person_username='abirin@example.com'), 10, 13, 2, 'Occupied'), -- 10:00–11:30 → Lab 2
(1, (SELECT subject_ID FROM Subject WHERE subject_code='IT 314'), (SELECT section_ID FROM Section WHERE section_name='IT 3A'), (SELECT person_ID FROM Person WHERE person_username='escorial.j@example.com'), 13, 16, 2, 'Occupied'), -- 1:00–2:30 → Lab 2
(1, (SELECT subject_ID FROM Subject WHERE subject_code='ADS 133'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='catadman@example.com'), 16, 19, 2, 'Occupied'), -- 2:30–4:00 → Lab 2
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CC 105'), (SELECT section_ID FROM Section WHERE section_name='IT 3B'), (SELECT person_ID FROM Person WHERE person_username='saavedra@example.com'), 19, 22, 2, 'Occupied'), -- 5:30–7:00 → Lab 2

-- TUESDAY (day_ID = 2)
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='CS 1B'), (SELECT person_ID FROM Person WHERE person_username='abirin@example.com'), 1, 4, 2, 'Occupied'),  -- 7:00–8:30 → Lab 2
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='CS 1A'), (SELECT person_ID FROM Person WHERE person_username='jailani@example.com'), 10, 13, 2, 'Occupied'), -- 10:00–11:30 → Lab 2
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 131'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jez@example.com'), 13, 16, 2, 'Occupied'), -- 1:00–2:30 → Lab 2
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 131'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jez@example.com'), 16, 19, 2, 'Occupied'), -- 2:30–4:00 → Lab 2
(2, (SELECT subject_ID FROM Subject WHERE subject_code='IT 311'), (SELECT section_ID FROM Section WHERE section_name='IT 3C'), (SELECT person_ID FROM Person WHERE person_username='arip.jp@example.com'), 19, 22, 2, 'Occupied'), -- 5:30–7:00 → Lab 2

-- WEDNESDAY (day_ID = 3)
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='IT 1B'), (SELECT person_ID FROM Person WHERE person_username='abirin@example.com'), 1, 4, 2, 'Occupied'),  -- 7:00–8:30 → Lab 2
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='AD 1B'), (SELECT person_ID FROM Person WHERE person_username='abirin@example.com'), 10, 13, 2, 'Occupied'), -- 10:00–11:30 → Lab 2
(3, (SELECT subject_ID FROM Subject WHERE subject_code='IT 314'), (SELECT section_ID FROM Section WHERE section_name='IT 3B'), (SELECT person_ID FROM Person WHERE person_username='escorial.j@example.com'), 13, 16, 2, 'Occupied'), -- 1:00–2:30 → Lab 2
(3, (SELECT subject_ID FROM Subject WHERE subject_code='ADS 133'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='catadman@example.com'), 16, 19, 2, 'Occupied'), -- 2:30–4:00 → Lab 2
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CC 105'), (SELECT section_ID FROM Section WHERE section_name='IT 3C'), (SELECT person_ID FROM Person WHERE person_username='saavedra@example.com'), 19, 22, 2, 'Occupied'), -- 5:30–7:00 → Lab 2

-- THURSDAY (day_ID = 4)
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='AD 1A'), (SELECT person_ID FROM Person WHERE person_username='balan@example.com'), 1, 4, 2, 'Occupied'),  -- 7:00–8:30 → Lab 2
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CC 103'), (SELECT section_ID FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='jaafar@example.com'), 4, 7, 2, 'Occupied'),  -- 8:30–10:00 → Lab 2
(4, (SELECT subject_ID FROM Subject WHERE subject_code='IT 145'), (SELECT section_ID FROM Section WHERE section_name='IT 4A'), (SELECT person_ID FROM Person WHERE person_username='zabala@example.com'), 10, 13, 2, 'Occupied'), -- 10:00–11:30 → Lab 2
(4, (SELECT subject_ID FROM Subject WHERE subject_code='IT 314'), (SELECT section_ID FROM Section WHERE section_name='IT 3C'), (SELECT person_ID FROM Person WHERE person_username='escorial.j@example.com'), 13, 16, 2, 'Occupied'), -- 1:00–2:30 → Lab 2
(4, (SELECT subject_ID FROM Subject WHERE subject_code='ADS 133'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='catadman@example.com'), 16, 19, 2, 'Occupied'), -- 2:30–4:00 → Lab 2
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CC 105'), (SELECT section_ID FROM Section WHERE section_name='IT 3A'), (SELECT person_ID FROM Person WHERE person_username='saavedra@example.com'), 19, 22, 2, 'Occupied'), -- 5:30–7:00 → Lab 2

-- FRIDAY (day_ID = 5)
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 103'), (SELECT section_ID FROM Section WHERE section_name='IT 2'), (SELECT person_ID FROM Person WHERE person_username='jailani@example.com'), 1, 4, 2, 'Occupied'),  -- 7:00–8:30 → Lab 2
(5, (SELECT subject_ID FROM Subject WHERE subject_code='IT 145'), (SELECT section_ID FROM Section WHERE section_name='IT 4B'), (SELECT person_ID FROM Person WHERE person_username='balan@example.com'), 10, 13, 2, 'Occupied'), -- 10:00–11:30 → Lab 2
(5, (SELECT subject_ID FROM Subject WHERE subject_code='IT 145'), (SELECT section_ID FROM Section WHERE section_name='IT 4C'), (SELECT person_ID FROM Person WHERE person_username='zabala@example.com'), 13, 16, 2, 'Occupied'), -- 1:00–2:30 → Lab 2
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='IT 1A'), (SELECT person_ID FROM Person WHERE person_username='balan@example.com'), 16, 19, 2, 'Occupied'), -- 4:00–5:30 → Lab 2

-- SATURDAY (day_ID = 6)
(6, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 115'), (SELECT section_ID FROM Section WHERE section_name='NW 1B'), (SELECT person_ID FROM Person WHERE person_username='balan@example.com'), 1, 4, 2, 'Occupied'),  -- 7:00–8:30 → Lab 2
(6, (SELECT subject_ID FROM Subject WHERE subject_code='IT 143'), (SELECT section_ID FROM Section WHERE section_name='IT 4A'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 4, 7, 2, 'Occupied'),  -- 8:30–10:00 → Lab 2
(6, (SELECT subject_ID FROM Subject WHERE subject_code='IT 143'), (SELECT section_ID FROM Section WHERE section_name='IT 4B'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 10, 13, 2, 'Occupied'), -- 10:00–11:30 → Lab 2
(6, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 115'), (SELECT section_ID FROM Section WHERE section_name='NW 1A'), (SELECT person_ID FROM Person WHERE person_username='balan@example.com'), 13, 16, 2, 'Occupied'), -- 1:00–2:30 → Lab 2
(6, (SELECT subject_ID FROM Subject WHERE subject_code='IT 143'), (SELECT section_ID FROM Section WHERE section_name='IT 4C'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 16, 19, 2, 'Occupied'); -- 2:30–4:00 → Lab 2

--LR 1
-- MONDAY (day_ID = 1)
(1, (SELECT subject_ID FROM Subject WHERE subject_code='ADS 133'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='catadman@example.com'), 10, 13, 3, 'Occupied'), -- 11:30–1:00 → LR 1
(1, (SELECT subject_ID FROM Subject WHERE subject_code='OS 137'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='arip.e@example.com'), 16, 19, 3, 'Occupied'), -- 2:30–4:00 → LR 1
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='NW 1A'), (SELECT person_ID FROM Person WHERE person_username='rojas@example.com'), 19, 22, 3, 'Occupied'), -- 4:00–5:30 → LR 1

-- TUESDAY (day_ID = 2)
(2, (SELECT subject_ID FROM Subject WHERE subject_code='ATFL 135'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='maravillas@example.com'), 4, 7, 3, 'Occupied'), -- 8:30–10:00 → LR 1
(2, (SELECT subject_ID FROM Subject WHERE subject_code='ATFL 135'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='maravillas@example.com'), 7, 10, 3, 'Occupied'), -- 10:00–11:30 → LR 1
(2, (SELECT subject_ID FROM Subject WHERE subject_code='SIPP 125'), (SELECT section_ID FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='lines@example.com'), 10, 13, 3, 'Occupied'), -- 11:30–1:00 → LR 1
(2, (SELECT subject_ID FROM Subject WHERE subject_code='ATFL 135'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='maravillas@example.com'), 13, 16, 3, 'Occupied'), -- 1:00–2:30 → LR 1
(2, (SELECT subject_ID FROM Subject WHERE subject_code='IT 211'), (SELECT section_ID FROM Section WHERE section_name='IT 2'), (SELECT person_ID FROM Person WHERE person_username='ballaho@example.com'), 16, 19, 3, 'Occupied'), -- 4:00–5:30 → LR 1

-- WEDNESDAY (day_ID = 3)
(3, (SELECT subject_ID FROM Subject WHERE subject_code='IT 312'), (SELECT section_ID FROM Section WHERE section_name='IT 3C'), (SELECT person_ID FROM Person WHERE person_username='arip.jp@example.com'), 4, 7, 3, 'Occupied'), -- 8:30–10:00 → LR 1
(3, (SELECT subject_ID FROM Subject WHERE subject_code='ADS 133'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='catadman@example.com'), 10, 13, 3, 'Occupied'), -- 11:30–1:00 → LR 1
(3, (SELECT subject_ID FROM Subject WHERE subject_code='OS 137'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='arip.e@example.com'), 16, 19, 3, 'Occupied'), -- 2:30–4:00 → LR 1
(3, (SELECT subject_ID FROM Subject WHERE subject_code='IT 143'), (SELECT section_ID FROM Section WHERE section_name='IT 4A'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 19, 22, 3, 'Occupied'), -- 5:30–7:00 → LR 1

-- THURSDAY (day_ID = 4)
(4, (SELECT subject_ID FROM Subject WHERE subject_code='ADS 133'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='catadman@example.com'), 10, 13, 3, 'Occupied'), -- 11:30–1:00 → LR 1
(4, (SELECT subject_ID FROM Subject WHERE subject_code='OS 137'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='arip.e@example.com'), 16, 19, 3, 'Occupied'), -- 2:30–4:00 → LR 1
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='NW 1A'), (SELECT person_ID FROM Person WHERE person_username='rojas@example.com'), 19, 22, 3, 'Occupied'), -- 4:00–5:30 → LR 1

-- FRIDAY (day_ID = 5)
(5, (SELECT subject_ID FROM Subject WHERE subject_code='ATFL 135'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='maravillas@example.com'), 4, 7, 3, 'Occupied'), -- 8:30–10:00 → LR 1
(5, (SELECT subject_ID FROM Subject WHERE subject_code='ATFL 135'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='maravillas@example.com'), 7, 10, 3, 'Occupied'), -- 10:00–11:30 → LR 1
(5, (SELECT subject_ID FROM Subject WHERE subject_code='SIPP 125'), (SELECT section_ID FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='lines@example.com'), 10, 13, 3, 'Occupied'), -- 11:30–1:00 → LR 1
(5, (SELECT subject_ID FROM Subject WHERE subject_code='ATFL 135'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='maravillas@example.com'), 13, 16, 3, 'Occupied'), -- 1:00–2:30 → LR 1
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='IT 1B'), (SELECT person_ID FROM Person WHERE person_username='rojas@example.com'), 19, 22, 3, 'Occupied'), -- 4:00–5:30 → LR 1

-- SATURDAY (day_ID = 6)
(6, (SELECT subject_ID FROM Subject WHERE subject_code='SE 131'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='jaafar@example.com'), 1, 4, 3, 'Occupied'), -- 7:00–8:30 → LR 1
(6, (SELECT subject_ID FROM Subject WHERE subject_code='SE 131'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='jaafar@example.com'), 7, 10, 3, 'Occupied'), -- 10:00–11:30 → LR 1
(6, (SELECT subject_ID FROM Subject WHERE subject_code='SE 131'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='jaafar@example.com'), 13, 16, 3, 'Occupied'), -- 1:00–2:30 → LR 1
(6, (SELECT subject_ID FROM Subject WHERE subject_code='CC 104'), (SELECT section_ID FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='jaafar@example.com'), 19, 22, 3, 'Occupied'); -- 4:00–5:30 → LR 1

-- LR 2
-- MONDAY (day_ID = 1)
(1, (SELECT subject_ID FROM Subject WHERE subject_code='NC 127'), (SELECT section_ID FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='banquerigo@example.com'), 4, 7, 4, 'Occupied'), -- 8:30–10:00 → LR 2
(1, (SELECT subject_ID FROM Subject WHERE subject_code='NC 127'), (SELECT section_ID FROM Section WHERE section_name='CS 2'), (SELECT person_ID FROM Person WHERE person_username='flores@example.com'), 10, 13, 4, 'Occupied'), -- 11:30–1:00 → LR 2
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 133'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='tahil@example.com'), 13, 16, 4, 'Occupied'), -- 1:00–2:30 → LR 2
(1, (SELECT subject_ID FROM Subject WHERE subject_code='WD 123'), (SELECT section_ID FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='ballaho@example.com'), 16, 19, 4, 'Occupied'), -- 4:00–5:30 → LR 2
(1, (SELECT subject_ID FROM Subject WHERE subject_code='IT 145'), (SELECT section_ID FROM Section WHERE section_name='IT 4B'), (SELECT person_ID FROM Person WHERE person_username='balan@example.com'), 19, 22, 4, 'Occupied'), -- 5:30–7:00 → LR 2

-- TUESDAY (day_ID = 2)
(2, (SELECT subject_ID FROM Subject WHERE subject_code='DS 111'), (SELECT section_ID FROM Section WHERE section_name='CS 1A'), (SELECT person_ID FROM Person WHERE person_username='lines@example.com'), 4, 7, 4, 'Occupied'), -- 8:30–10:00 → LR 2
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CALC 139'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='belamide@example.com'), 7, 10, 4, 'Occupied'), -- 10:00–11:30 → LR 2
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='NW 1B'), (SELECT person_ID FROM Person WHERE person_username='rojas@example.com'), 10, 13, 4, 'Occupied'), -- 11:30–1:00 → LR 2
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CALC 139'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='belamide@example.com'), 13, 16, 4, 'Occupied'), -- 1:00–2:30 → LR 2
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CALC 139'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='belamide@example.com'), 16, 19, 4, 'Occupied'), -- 2:30–4:00 → LR 2
(2, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 213'), (SELECT section_ID FROM Section WHERE section_name='NW 2'), (SELECT person_ID FROM Person WHERE person_username='arip.ja@example.com'), 19, 22, 4, 'Occupied'), -- 4:00–5:30 → LR 2
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CDI 108'), (SELECT section_ID FROM Section WHERE section_name='CRIM 4D'), (SELECT person_ID FROM Person WHERE person_username='timpangco@example.com'), 22, 25, 4, 'Occupied'), -- 5:30–7:00 → LR 2

-- WEDNESDAY (day_ID = 3)
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='CS 1A'), (SELECT person_ID FROM Person WHERE person_username='belamide@example.com'), 7, 10, 4, 'Occupied'), -- 10:00–11:30 → LR 2
(3, (SELECT subject_ID FROM Subject WHERE subject_code='IT 312'), (SELECT section_ID FROM Section WHERE section_name='IT 3B'), (SELECT person_ID FROM Person WHERE person_username='arip.jp@example.com'), 10, 13, 4, 'Occupied'), -- 11:30–1:00 → LR 2
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='AD 1A'), (SELECT person_ID FROM Person WHERE person_username='belamide@example.com'), 13, 16, 4, 'Occupied'), -- 1:00–2:30 → LR 2
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='CS 1B'), (SELECT person_ID FROM Person WHERE person_username='belamide@example.com'), 16, 19, 4, 'Occupied'), -- 4:00–5:30 → LR 2
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CDI 108'), (SELECT section_ID FROM Section WHERE section_name='CRIM 4C'), (SELECT person_ID FROM Person WHERE person_username='timpangco@example.com'), 19, 22, 4, 'Occupied'), -- 5:30–7:00 → LR 2

-- THURSDAY (day_ID = 4)
(4, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 214'), (SELECT section_ID FROM Section WHERE section_name='NW 2'), (SELECT person_ID FROM Person WHERE person_username='arip.ja@example.com'), 1, 4, 4, 'Occupied'), -- 7:00–8:30 → LR 2
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 133'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='tahil@example.com'), 7, 10, 4, 'Occupied'), -- 10:00–11:30 → LR 2
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CC 104'), (SELECT section_ID FROM Section WHERE section_name='CS 2'), (SELECT person_ID FROM Person WHERE person_username='jaafar@example.com'), 10, 13, 4, 'Occupied'), -- 11:30–1:00 → LR 2
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 133'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='tahil@example.com'), 13, 16, 4, 'Occupied'), -- 1:00–2:30 → LR 2
(4, (SELECT subject_ID FROM Subject WHERE subject_code='WD 123'), (SELECT section_ID FROM Section WHERE section_name='CS 2'), (SELECT person_ID FROM Person WHERE person_username='ballaho@example.com'), 16, 19, 4, 'Occupied'), -- 4:00–5:30 → LR 2
(4, (SELECT subject_ID FROM Subject WHERE subject_code='IT 312'), (SELECT section_ID FROM Section WHERE section_name='IT 3C'), (SELECT person_ID FROM Person WHERE person_username='arip.jp@example.com'), 19, 22, 4, 'Occupied'), -- 5:30–7:00 → LR 2

-- FRIDAY (day_ID = 5)
(5, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 214'), (SELECT section_ID FROM Section WHERE section_name='NW 2'), (SELECT person_ID FROM Person WHERE person_username='arip.ja@example.com'), 1, 4, 4, 'Occupied'), -- 7:00–8:30 → LR 2
(5, (SELECT subject_ID FROM Subject WHERE subject_code='DS 111'), (SELECT section_ID FROM Section WHERE section_name='CS 1A'), (SELECT person_ID FROM Person WHERE person_username='lines@example.com'), 4, 7, 4, 'Occupied'), -- 8:30–10:00 → LR 2
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CALC 139'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='belamide@example.com'), 7, 10, 4, 'Occupied'), -- 10:00–11:30 → LR 2
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='NW 1B'), (SELECT person_ID FROM Person WHERE person_username='rojas@example.com'), 10, 13, 4, 'Occupied'), -- 11:30–1:00 → LR 2
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CALC 139'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='belamide@example.com'), 13, 16, 4, 'Occupied'), -- 1:00–2:30 → LR 2
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CALC 139'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='belamide@example.com'), 16, 19, 4, 'Occupied'), -- 2:30–4:00 → LR 2
(5, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 213'), (SELECT section_ID FROM Section WHERE section_name='NW 2'), (SELECT person_ID FROM Person WHERE person_username='arip.ja@example.com'), 19, 22, 4, 'Occupied'), -- 4:00–5:30 → LR 2
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CDI 108'), (SELECT section_ID FROM Section WHERE section_name='CRIM 4D'), (SELECT person_ID FROM Person WHERE person_username='timpangco@example.com'), 22, 25, 4, 'Occupied'), -- 5:30–7:00 → LR 2

-- SATURDAY (day_ID = 6)
(6, (SELECT subject_ID FROM Subject WHERE subject_code='IT 311'), (SELECT section_ID FROM Section WHERE section_name='IT 3C'), (SELECT person_ID FROM Person WHERE person_username='arip.ja@example.com'), 4, 7, 4, 'Occupied'), -- 8:30–10:00 → LR 2
(6, (SELECT subject_ID FROM Subject WHERE subject_code='IT 311'), (SELECT section_ID FROM Section WHERE section_name='IT 3A'), (SELECT person_ID FROM Person WHERE person_username='arip.ja@example.com'), 10, 13, 4, 'Occupied'), -- 11:30–1:00 → LR 2
(6, (SELECT subject_ID FROM Subject WHERE subject_code='IT 311'), (SELECT section_ID FROM Section WHERE section_name='IT 3B'), (SELECT person_ID FROM Person WHERE person_username='arip.ja@example.com'), 16, 19, 4, 'Occupied'), -- 2:30–4:00 → LR 2
(6, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 115'), (SELECT section_ID FROM Section WHERE section_name='NW 1A'), (SELECT person_ID FROM Person WHERE person_username='balan@example.com'), 19, 22, 4, 'Occupied'); -- 5:30–7:00 → LR 2

-- LR 3
-- MONDAY (day_ID = 1)
(1, (SELECT subject_ID FROM Subject WHERE subject_code='IT 145'), (SELECT section_ID FROM Section WHERE section_name='IT 4C'), (SELECT person_ID FROM Person WHERE person_username='balan@example.com'), 1, 4, 5, 'Occupied'), -- 7:00–8:30 → LR 3
(1, (SELECT subject_ID FROM Subject WHERE subject_code='OS 137'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='arip.e@example.com'), 7, 10, 5, 'Occupied'), -- 10:00–11:30 → LR 3
(1, (SELECT subject_ID FROM Subject WHERE subject_code='IT 313'), (SELECT section_ID FROM Section WHERE section_name='IT 3B'), (SELECT person_ID FROM Person WHERE person_username='banquerigo@example.com'), 10, 13, 5, 'Occupied'), -- 11:30–1:00 → LR 3
(1, (SELECT subject_ID FROM Subject WHERE subject_code='DS 111'), (SELECT section_ID FROM Section WHERE section_name='AD 1B'), (SELECT person_ID FROM Person WHERE person_username='lines@example.com'), 13, 16, 5, 'Occupied'), -- 1:00–2:30 → LR 3
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='AD 1A'), (SELECT person_ID FROM Person WHERE person_username='rojas@example.com'), 16, 19, 5, 'Occupied'), -- 2:30–4:00 → LR 3
(1, (SELECT subject_ID FROM Subject WHERE subject_code='IT 212'), (SELECT section_ID FROM Section WHERE section_name='IT 2'), (SELECT person_ID FROM Person WHERE person_username='escorial.j@example.com'), 19, 22, 5, 'Occupied'), -- 4:00–5:30 → LR 3

-- TUESDAY (day_ID = 2)
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 131'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jez@example.com'), 4, 7, 5, 'Occupied'), -- 8:30–10:00 → LR 3
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='AD 1B'), (SELECT person_ID FROM Person WHERE person_username='rojas@example.com'), 7, 10, 5, 'Occupied'), -- 10:00–11:30 → LR 3
(2, (SELECT subject_ID FROM Subject WHERE subject_code='IT 143'), (SELECT section_ID FROM Section WHERE section_name='IT 4C'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 10, 13, 5, 'Occupied'), -- 11:30–1:00 → LR 3
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CC 104'), (SELECT section_ID FROM Section WHERE section_name='IT 2'), (SELECT person_ID FROM Person WHERE person_username='jaafar@example.com'), 13, 16, 5, 'Occupied'), -- 1:00–2:30 → LR 3
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='IT 1A'), (SELECT person_ID FROM Person WHERE person_username='rojas@example.com'), 19, 22, 5, 'Occupied'), -- 4:00–5:30 → LR 3

-- WEDNESDAY (day_ID = 3)
(3, (SELECT subject_ID FROM Subject WHERE subject_code='OS 137'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='arip.e@example.com'), 7, 10, 5, 'Occupied'), -- 10:00–11:30 → LR 3
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CC 104'), (SELECT section_ID FROM Section WHERE section_name='NW 2'), (SELECT person_ID FROM Person WHERE person_username='jaafar@example.com'), 10, 13, 5, 'Occupied'), -- 11:30–1:00 → LR 3
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 133'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='tahil@example.com'), 16, 19, 5, 'Occupied'), -- 2:30–4:00 → LR 3

-- THURSDAY (day_ID = 4)
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CC 103'), (SELECT section_ID FROM Section WHERE section_name='CS 2'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 1, 4, 5, 'Occupied'), -- 7:00–8:30 → LR 3
(4, (SELECT subject_ID FROM Subject WHERE subject_code='OS 137'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='arip.e@example.com'), 7, 10, 5, 'Occupied'), -- 10:00–11:30 → LR 3
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CC 103'), (SELECT section_ID FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 10, 13, 5, 'Occupied'), -- 11:30–1:00 → LR 3
(4, (SELECT subject_ID FROM Subject WHERE subject_code='DS 111'), (SELECT section_ID FROM Section WHERE section_name='AD 1B'), (SELECT person_ID FROM Person WHERE person_username='lines@example.com'), 13, 16, 5, 'Occupied'), -- 1:00–2:30 → LR 3
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='AD 1A'), (SELECT person_ID FROM Person WHERE person_username='rojas@example.com'), 16, 19, 5, 'Occupied'), -- 2:30–4:00 → LR 3
(4, (SELECT subject_ID FROM Subject WHERE subject_code='IT 212'), (SELECT section_ID FROM Section WHERE section_name='IT 2'), (SELECT person_ID FROM Person WHERE person_username='escorial.j@example.com'), 19, 22, 5, 'Occupied'), -- 4:00–5:30 → LR 3

-- FRIDAY (day_ID = 5)
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 131'), (SELECT section_ID FROM Section WHERE section_name='CS 3B'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jez@example.com'), 4, 7, 5, 'Occupied'), -- 8:30–10:00 → LR 3
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='AD 1B'), (SELECT person_ID FROM Person WHERE person_username='rojas@example.com'), 7, 10, 5, 'Occupied'), -- 10:00–11:30 → LR 3
(5, (SELECT subject_ID FROM Subject WHERE subject_code='IT 143'), (SELECT section_ID FROM Section WHERE section_name='IT 4C'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 10, 13, 5, 'Occupied'), -- 11:30–1:00 → LR 3
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 131'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jez@example.com'), 16, 19, 5, 'Occupied'), -- 2:30–4:00 → LR 3

-- SATURDAY (day_ID = 6)
(6, (SELECT subject_ID FROM Subject WHERE subject_code='MAD 121'), (SELECT section_ID FROM Section WHERE section_name='AD 2'), (SELECT person_ID FROM Person WHERE person_username='banquerigo@example.com'), 4, 7, 5, 'Occupied'), -- 8:30–10:00 → LR 3
(6, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 115'), (SELECT section_ID FROM Section WHERE section_name='NW 1B'), (SELECT person_ID FROM Person WHERE person_username='balan@example.com'), 10, 13, 5, 'Occupied'), -- 11:30–1:00 → LR 3
(6, (SELECT subject_ID FROM Subject WHERE subject_code='MAD 121'), (SELECT section_ID FROM Section WHERE section_name='CS 2'), (SELECT person_ID FROM Person WHERE person_username='banquerigo@example.com'), 16, 19, 5, 'Occupied'); -- 2:30–4:00 → LR 3

-- LR 4
-- MONDAY (day_ID = 1)
(1, (SELECT subject_ID FROM Subject WHERE subject_code='IT 312'), (SELECT section_ID FROM Section WHERE section_name='IT 3A'), (SELECT person_ID FROM Person WHERE person_username='arip.jp@example.com'), 7, 10, 6, 'Occupied'), -- 10:00–11:30 → LR 4
(1, (SELECT subject_ID FROM Subject WHERE subject_code='DS 111'), (SELECT section_ID FROM Section WHERE section_name='CS 1B'), (SELECT person_ID FROM Person WHERE person_username='lines@example.com'), 10, 13, 6, 'Occupied'), -- 11:30–1:00 → LR 4
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='IT 1A'), (SELECT person_ID FROM Person WHERE person_username='escorial.a@example.com'), 13, 16, 6, 'Occupied'), -- 1:00–2:30 → LR 4
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='IT 1B'), (SELECT person_ID FROM Person WHERE person_username='escorial.a@example.com'), 19, 22, 6, 'Occupied'), -- 4:00–5:30 → LR 4

-- TUESDAY (day_ID = 2)
(2, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 133'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='tahil@example.com'), 7, 10, 6, 'Occupied'), -- 10:00–11:30 → LR 4
(2, (SELECT subject_ID FROM Subject WHERE subject_code='IT 312'), (SELECT section_ID FROM Section WHERE section_name='IT 3B'), (SELECT person_ID FROM Person WHERE person_username='arip.jp@example.com'), 13, 16, 6, 'Occupied'), -- 1:00–2:30 → LR 4
(2, (SELECT subject_ID FROM Subject WHERE subject_code='SIPP 125'), (SELECT section_ID FROM Section WHERE section_name='CS 2'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 16, 19, 6, 'Occupied'), -- 2:30–4:00 → LR 4

-- WEDNESDAY (day_ID = 3)
(3, (SELECT subject_ID FROM Subject WHERE subject_code='IT 314'), (SELECT section_ID FROM Section WHERE section_name='IT 3A'), (SELECT person_ID FROM Person WHERE person_username='escorial.j@example.com'), 7, 10, 6, 'Occupied'), -- 10:00–11:30 → LR 4
(3, (SELECT subject_ID FROM Subject WHERE subject_code='IT 145'), (SELECT section_ID FROM Section WHERE section_name='IT 4A'), (SELECT person_ID FROM Person WHERE person_username='balan@example.com'), 10, 13, 6, 'Occupied'), -- 11:30–1:00 → LR 4
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='NW 1A'), (SELECT person_ID FROM Person WHERE person_username='escorial.a@example.com'), 16, 19, 6, 'Occupied'), -- 2:30–4:00 → LR 4
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='NW 1B'), (SELECT person_ID FROM Person WHERE person_username='arip.jp@example.com'), 19, 22, 6, 'Occupied'), -- 4:00–5:30 → LR 4

-- THURSDAY (day_ID = 4)
(4, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 215'), (SELECT section_ID FROM Section WHERE section_name='NW 2'), (SELECT person_ID FROM Person WHERE person_username='arip.jp@example.com'), 7, 10, 6, 'Occupied'), -- 10:00–11:30 → LR 4
(4, (SELECT subject_ID FROM Subject WHERE subject_code='DS 111'), (SELECT section_ID FROM Section WHERE section_name='CS 1B'), (SELECT person_ID FROM Person WHERE person_username='lines@example.com'), 10, 13, 6, 'Occupied'), -- 11:30–1:00 → LR 4
(4, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 116'), (SELECT section_ID FROM Section WHERE section_name='NW 1B'), (SELECT person_ID FROM Person WHERE person_username='escorial.a@example.com'), 16, 19, 6, 'Occupied'), -- 2:30–4:00 → LR 4
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CC 103'), (SELECT section_ID FROM Section WHERE section_name='NW 2'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 19, 22, 6, 'Occupied'), -- 4:00–5:30 → LR 4

-- FRIDAY (day_ID = 5)
(5, (SELECT subject_ID FROM Subject WHERE subject_code='IT 314'), (SELECT section_ID FROM Section WHERE section_name='IT 3B'), (SELECT person_ID FROM Person WHERE person_username='escorial.j@example.com'), 7, 10, 6, 'Occupied'), -- 10:00–11:30 → LR 4
(5, (SELECT subject_ID FROM Subject WHERE subject_code='IT 213'), (SELECT section_ID FROM Section WHERE section_name='IT 2'), (SELECT person_ID FROM Person WHERE person_username='arip.ja@example.com'), 13, 16, 6, 'Occupied'), -- 1:00–2:30 → LR 4
(5, (SELECT subject_ID FROM Subject WHERE subject_code='SIPP 125'), (SELECT section_ID FROM Section WHERE section_name='CS 2'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 16, 19, 6, 'Occupied'), -- 2:30–4:00 → LR 4

-- SATURDAY (day_ID = 6)
(6, (SELECT subject_ID FROM Subject WHERE subject_code='FIL 101'), (SELECT section_ID FROM Section WHERE section_name='IT 1B'), NULL, 4, 7, 6, 'Occupied'); -- 8:30–10:00 → LR 4

-- LR 5
-- MONDAY (day_ID = 1)
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 131'), (SELECT section_ID FROM Section WHERE section_name='CS 3C'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jez@example.com'), 7, 10, 7, 'Occupied'), -- 10:00–11:30 → LR 5
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CC 100'), (SELECT section_ID FROM Section WHERE section_name='AD 1B'), (SELECT person_ID FROM Person WHERE person_username='balan@example.com'), 10, 13, 7, 'Occupied'), -- 11:30–1:00 → LR 5
(1, (SELECT subject_ID FROM Subject WHERE subject_code='CC 105'), (SELECT section_ID FROM Section WHERE section_name='IT 3B'), (SELECT person_ID FROM Person WHERE person_username='saavedra@example.com'), 16, 19, 7, 'Occupied'), -- 2:30–4:00 → LR 5
(1, (SELECT subject_ID FROM Subject WHERE subject_code='DS 111'), (SELECT section_ID FROM Section WHERE section_name='AD 1A'), (SELECT person_ID FROM Person WHERE person_username='lines@example.com'), 19, 22, 7, 'Occupied'), -- 4:00–5:30 → LR 5

-- TUESDAY (day_ID = 2)
(2, (SELECT subject_ID FROM Subject WHERE subject_code='IT 312'), (SELECT section_ID FROM Section WHERE section_name='IT 3A'), (SELECT person_ID FROM Person WHERE person_username='arip.jp@example.com'), 1, 4, 7, 'Occupied'), -- 7:00–8:30 → LR 5
(2, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 116'), (SELECT section_ID FROM Section WHERE section_name='NW 1A'), (SELECT person_ID FROM Person WHERE person_username='escorial.a@example.com'), 7, 10, 7, 'Occupied'), -- 10:00–11:30 → LR 5
(2, (SELECT subject_ID FROM Subject WHERE subject_code='IT 313'), (SELECT section_ID FROM Section WHERE section_name='IT 3A'), (SELECT person_ID FROM Person WHERE person_username='banquerigo@example.com'), 10, 13, 7, 'Occupied'), -- 11:30–1:00 → LR 5
(2, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 116'), (SELECT section_ID FROM Section WHERE section_name='NW 1A'), (SELECT person_ID FROM Person WHERE person_username='escorial.a@example.com'), 16, 19, 7, 'Occupied'), -- 2:30–4:00 → LR 5
(2, (SELECT subject_ID FROM Subject WHERE subject_code='IT 143'), (SELECT section_ID FROM Section WHERE section_name='IT 4B'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 19, 22, 7, 'Occupied'), -- 4:00–5:30 → LR 5

-- WEDNESDAY (day_ID = 3)
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CSE 133'), (SELECT section_ID FROM Section WHERE section_name='CS 3A'), (SELECT person_ID FROM Person WHERE person_username='tahil@example.com'), 7, 10, 7, 'Occupied'), -- 10:00–11:30 → LR 5
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CC 103'), (SELECT section_ID FROM Section WHERE section_name='IT 2'), (SELECT person_ID FROM Person WHERE person_username='loenzo.jen@example.com'), 10, 13, 7, 'Occupied'), -- 11:30–1:00 → LR 5
(3, (SELECT subject_ID FROM Subject WHERE subject_code='CC 105'), (SELECT section_ID FROM Section WHERE section_name='IT 3C'), (SELECT person_ID FROM Person WHERE person_username='saavedra@example.com'), 16, 19, 7, 'Occupied'), -- 2:30–4:00 → LR 5

-- THURSDAY (day_ID = 4)
(4, (SELECT subject_ID FROM Subject WHERE subject_code='ACT 116'), (SELECT section_ID FROM Section WHERE section_name='NW 1B'), (SELECT person_ID FROM Person WHERE person_username='escorial.a@example.com'), 7, 10, 7, 'Occupied'), -- 10:00–11:30 → LR 5
(4, (SELECT subject_ID FROM Subject WHERE subject_code='IT 313'), (SELECT section_ID FROM Section WHERE section_name='IT 3C'), (SELECT person_ID FROM Person WHERE person_username='banquerigo@example.com'), 10, 13, 7, 'Occupied'), -- 11:30–1:00 → LR 5
(4, (SELECT subject_ID FROM Subject WHERE subject_code='CC 105'), (SELECT section_ID FROM Section WHERE section_name='IT 3A'), (SELECT person_ID FROM Person WHERE person_username='saavedra@example.com'), 16, 19, 7, 'Occupied'), -- 2:30–4:00 → LR 5
(4, (SELECT subject_ID FROM Subject WHERE subject_code='DS 111'), (SELECT section_ID FROM Section WHERE section_name='AD 1A'), (SELECT person_ID FROM Person WHERE person_username='lines@example.com'), 19, 22, 7, 'Occupied'), -- 4:00–5:30 → LR 5

-- FRIDAY (day_ID = 5)
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='CS 1B'), (SELECT person_ID FROM Person WHERE person_username='jaafar@example.com'), 4, 7, 7, 'Occupied'), -- 8:30–10:00 → LR 5
(5, (SELECT subject_ID FROM Subject WHERE subject_code='CC 101'), (SELECT section_ID FROM Section WHERE section_name='CS 1A'), (SELECT person_ID FROM Person WHERE person_username='jaafar@example.com'), 10, 13, 7, 'Occupied'), -- 11:30–1:00 → LR 5
(5, (SELECT subject_ID FROM Subject WHERE subject_code='IT 314'), (SELECT section_ID FROM Section WHERE section_name='IT 3C'), (SELECT person_ID FROM Person WHERE person_username='escorial.j@example.com'), 16, 19, 7, 'Occupied'), -- 2:30–4:00 → LR 5
(5, (SELECT subject_ID FROM Subject WHERE subject_code='IT 143'), (SELECT section_ID FROM Section WHERE section_name='IT 4B'), (SELECT person_ID FROM Person WHERE person_username='lorenzo.jen@example.com'), 19, 22, 7, 'Occupied'), -- 4:00–5:30 → LR 5

-- SATURDAY (day_ID = 6)
(6, (SELECT subject_ID FROM Subject WHERE subject_code='CDI 108'), (SELECT section_ID FROM Section WHERE section_name='CRIM 4A'), (SELECT person_ID FROM Person WHERE person_username='timpangco@example.com'), 7, 10, 7, 'Occupied'), -- 10:00–11:30 → LR 5
(6, (SELECT subject_ID FROM Subject WHERE subject_code='CDI 108'), (SELECT section_ID FROM Section WHERE section_name='CRIM 4B'), (SELECT person_ID FROM Person WHERE person_username='timpangco@example.com'), 16, 19, 7, 'Occupied'), -- 2:30–4:00 → LR 5
(6, (SELECT subject_ID FROM Subject WHERE subject_code='CDI 108'), (SELECT section_ID FROM Section WHERE section_name='CRIM 4C'), (SELECT person_ID FROM Person WHERE person_username='timpangco@example.com'), 19, 22, 7, 'Occupied'); -- 5:30–7:00 → LR 5