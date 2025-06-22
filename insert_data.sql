-- insert_data.sql

-- Sample Parents
INSERT INTO Parent (name, contact) VALUES
('Ravi Sharma', '9876543210'),
('Meena Verma', '8765432109');

-- Sample Class Sections
INSERT INTO Class_Section (class_name, section_name) VALUES
('10', 'A'),
('9', 'B');

-- Sample Teachers
INSERT INTO Teacher (name, contact) VALUES
('Mr. Rajeev', '7894561230'),
('Ms. Kiran', '7894561231');

-- Sample Students
INSERT INTO Student (name, class_section_id, parent_id, contact) VALUES
('Aman Sharma', 1, 1, '7000000001'),
('Neha Verma', 2, 2, '7000000002');

-- Sample Subjects
INSERT INTO Subject (name, class_section_id, teacher_id) VALUES
('Mathematics', 1, 1),
('Science', 2, 2);

-- Sample Homework
INSERT INTO Homework (subject_id, title, description, assigned_date, due_date) VALUES
(1, 'Algebra Homework', 'Complete exercise 5A and 5B', '2025-06-22', '2025-06-25'),
(2, 'Physics HW', 'Revise Newton Laws and solve numericals', '2025-06-22', '2025-06-24');

-- Sample Submissions
INSERT INTO Homework_Submission (student_id, homework_id, submission_date, status) VALUES
(1, 1, '2025-06-23', 'Submitted'),
(2, 2, NULL, 'Pending');
