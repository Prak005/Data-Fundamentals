CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

CREATE TABLE IF NOT EXISTS students (
    student_id   INT PRIMARY KEY,
    name         VARCHAR(50),
    department   VARCHAR(10),
    math         INT,
    science      INT,
    programming  INT,
    attendance   INT
);


INSERT INTO students VALUES (1, 'Amit',  'CS', 78, 85, 90, 92);
INSERT INTO students VALUES (2, 'Riya',  'CS', 88, 79, 85, 90);
INSERT INTO students VALUES (3, 'Karan', 'IT', 65, 70, 72, 80);
INSERT INTO students VALUES (4, 'Pooja', 'IT', 92, 91, 95, 96);
INSERT INTO students VALUES (5, 'Rahul', 'CS', 55, 60, 58, 70);


--Task 1: Display all student records
SELECT * FROM students;


--Task 2: Calculate average marks of each student
SELECT
    student_id,
    name,
    department,
    ROUND((math + science + programming) / 3.0, 2) AS average_marks
FROM students;


--Task 3: Identify the top-performing student
SELECT
    student_id,
    name,
    department,
    ROUND((math + science + programming) / 3.0, 2) AS average_marks
FROM students
ORDER BY average_marks DESC
LIMIT 1;


--Task 4: Calculate department-wise average marks
SELECT
    department,
    AVG((math + science + programming) / 3.0) AS dept_avg
FROM students
GROUP BY department;


--Task 5: Identify students scoring below 60 marks
SELECT
    name,
    (math + science + programming) / 3.0 AS average_marks
FROM students
WHERE (math + science + programming) / 3.0 < 60;


--Task 6: Calculate overall class average
SELECT
    AVG((math + science + programming) / 3.0) AS class_avg
FROM students;
