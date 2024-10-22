-- Active: 1729085763215@@127.0.0.1@5432@university_db
-- create students table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    email VARCHAR(50),
    frontend_mark INT,
    backend_mark INT,
    status VARCHAR(50)
);


--create courses table
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);


-- create enrollment table
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id)
);


-- inserting sample data in students table
INSERT INTO students(student_name, age, email, frontend_mark, backend_mark, status)
VALUES
('Sameer', 21, 'sameer@example.com', 48, 60, NULL),
('Zoya', 23, 'zoya@example.com', 52, 58, NULL),
('Nabil', 22, 'nabil@example.com', 37, 46, NULL),
('Rafi', 24, 'rafi@example.com', 41, 40, NULL),
('Sophia', 22, 'sophia@example.com', 50, 52, NULL),
('Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);


-- inserting sample data in courses table
INSERT INTO courses (course_name, credits)
VALUES
('Next.js', 3),
('React.js', 4),
('Databases', 3),
('Prisma', 3);


-- inserting sample data in enrollment table
INSERT INTO enrollment (student_id, course_id)
VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 2);



-- Query 1
-- inserting a new student record in students table
INSERT INTO students (student_name, age, email, frontend_mark, backend_mark, status)
VALUES('Ahmed', 22, 'ahmed@gmail.com', 58, 60, NULL);



-- Query 2
--retrieve students name who enrolled in Next.js course
SELECT s.student_name
FROM students as s
JOIN enrollment as e ON s.student_id = e.student_id
JOIN courses as c ON e.course_id = c.course_id
WHERE c.course_name = 'Next.js';


-- Query 3
-- Update the status of the student with highest total mark
UPDATE students
SET status = 'Awarded'
WHERE (frontend_mark + backend_mark) = (SELECT MAX(frontend_mark + backend_mark) FROM students);


--Query 4
-- Delete all the courses that have no students enrolled
DELETE FROM courses
WHERE course_id NOT IN (
    SELECT course_id FROM enrollment
);


-- Query 5
-- Retrieving the students using limit starting from the third student
SELECT student_name from students LIMIT 2 OFFSET 2;

