-- Create a new database called school
CREATE DATABASE school;

-- Use the school database
USE school;

-- Create students table to store student information
CREATE TABLE students (
    student_id INT AUTO_INCREMENT,        -- Unique ID for each student
    first_name VARCHAR(50) NOT NULL,       -- Student first name (cannot be NULL)
    last_name VARCHAR(50) NOT NULL,        -- Student last name (cannot be NULL)
    PRIMARY KEY (student_id)               -- Primary Key
);

-- Create courses table to store courses taken by students
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT,          -- Unique ID for each course
    course_name VARCHAR(50),               -- Course name
    student_id INT,                        -- References student who takes the course
    PRIMARY KEY (course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Insert sample data into students table
INSERT INTO students (first_name, last_name)
VALUES 
('Alice', 'Johnson'),
('Bob', 'Smith'),
('Charlie', 'Brown');

-- Insert sample data into courses table
INSERT INTO courses (course_name, student_id)
VALUES 
('Math', 1),
('English', 2),
('History', 1);

-- Join students and courses tables to display student names with their courses
SELECT students.first_name, students.last_name, courses.course_name
FROM students
INNER JOIN courses
ON students.student_id = courses.student_id;


-- Create teachers table to store teachers information
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,        -- Unique ID for each teacher
    teacher_name VARCHAR(50),           -- Teacher name
    course_id INT,                      -- Course taught by the teacher
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);



-- Insert data into teachers table
INSERT INTO teachers (teacher_id, teacher_name, course_id)
VALUES
(201, 'Mr. Green', 1),
(202, 'Ms. Blue', 2),
(203, 'Dr. Black', 3);

-- Display students, their courses, and the teachers who teach those courses
SELECT 
    s.first_name,
    s.last_name,
    c.course_name,
    t.teacher_name
FROM students AS s
INNER JOIN courses AS c
    ON s.student_id = c.student_id  -- Join students with courses using student_id
INNER JOIN teachers AS t
    ON c.course_id = t.course_id; -- Join courses with teachers using course_id

-- Insert a student who is not enrolled in any course
INSERT INTO students (first_name, last_name)
VALUES ('Diana', 'White');

-- Display all students, even those without courses or teachers
SELECT s.first_name, s.last_name, c.course_name, t.teacher_name
FROM students AS s  
LEFT JOIN courses AS c 
     ON s.student_id = c.student_id 
LEFT JOIN teachers AS t
     ON c.course_id = t.course_id;




-- Insert a course with no student enrolled
INSERT INTO courses (course_name, student_id)
VALUES ('Physics', NULL);

-- Display all courses even if no student is enrolled
SELECT 
    s.first_name,
    s.last_name,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
    ON s.student_id = c.student_id;