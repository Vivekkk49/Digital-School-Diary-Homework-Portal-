-- queries.sql

-- View all homework for a student
SELECT h.title, h.description, h.assigned_date, h.due_date
FROM Homework h
JOIN Subject s ON h.subject_id = s.subject_id
JOIN Student st ON s.class_section_id = st.class_section_id
WHERE st.student_id = 1;

-- View homework submission status for a student
SELECT h.title, hs.status, hs.submission_date
FROM Homework_Submission hs
JOIN Homework h ON hs.homework_id = h.homework_id
WHERE hs.student_id = 1;

-- View students with pending homework
SELECT st.name, h.title
FROM Homework_Submission hs
JOIN Student st ON hs.student_id = st.student_id
JOIN Homework h ON hs.homework_id = h.homework_id
WHERE hs.status = 'Pending';
