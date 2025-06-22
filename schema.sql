-- schema.sql

-- Parent Table
CREATE TABLE Parent (
    parent_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(20)
);

-- Class and Section Table
CREATE TABLE Class_Section (
    class_section_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(20),
    section_name VARCHAR(5)
);

-- Student Table
CREATE TABLE Student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    class_section_id INT,
    parent_id INT,
    contact VARCHAR(20),
    FOREIGN KEY (class_section_id) REFERENCES Class_Section(class_section_id),
    FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);

-- Teacher Table
CREATE TABLE Teacher (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(20)
);

-- Subject Table
CREATE TABLE Subject (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    class_section_id INT,
    teacher_id INT,
    FOREIGN KEY (class_section_id) REFERENCES Class_Section(class_section_id),
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id)
);

-- Homework Table
CREATE TABLE Homework (
    homework_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_id INT,
    title VARCHAR(200),
    description TEXT,
    assigned_date DATE,
    due_date DATE,
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);

-- Homework Submission Table
CREATE TABLE Homework_Submission (
    submission_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    homework_id INT,
    submission_date DATE,
    status ENUM('Submitted', 'Pending', 'Late'),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (homework_id) REFERENCES Homework(homework_id)
);
