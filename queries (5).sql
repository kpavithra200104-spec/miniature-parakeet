CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50)
);
INSERT INTO students
(student_id, name, age, course)
VALUES
(1, 'Arun', 21, 'Computer Science'),
(2, 'Priya', 22, 'BCA');
SELECT * FROM students;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    salary DECIMAL(10,2),
    department VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO employee VALUES
(1, 'Arun', 25, 'Male', 25000, 'IT', 'Chennai'),
(2, 'Priya', 24, 'Female', 30000, 'HR', 'Madurai'),
(3, 'Kumar', 28, 'Male', 35000, 'Sales', 'Coimbatore'),
(4, 'Divya', 26, 'Female', 40000, 'IT', 'Chennai'),
(5, 'Ravi', 30, 'Male', 45000, 'Finance', 'Salem');
SELECT * FROM employee;
SELECT emp_name FROM employee;
DESC employee;
SELECT emp_name, age
FROM employee;
SELECT DISTINCT department
FROM employee;
SELECT emp_name AS employee_name
FROM employee;
SELECT emp_name, salary * 12 AS annual_salary
FROM employee;
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT
);
INSERT INTO student VALUES
(1, 'Arun', 85),
(2, 'Priya', 90),
(3, 'Kumar', 85),
(4, 'Divya', 95),
(5, 'Ravi', 90);
SELECT DISTINCT marks
FROM student;
SHOW COLUMNS FROM students;

CREATE TABLE studentis (
    Student_id INT PRIMARY KEY,
    name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    department VARCHAR(50),
    year INT,
    city VARCHAR(100),
    CGPA DECIMAL(3,1),
    attendance INT
);

INSERT INTO studentis
(Student_id, name, gender, age, department, year, city, CGPA, attendance)
VALUES
(1, 'Arun', 'male', 21, 'computer science', 2, 'chennai', 8.9, 99),
(2, 'Priya', 'female', 22, 'computer applications', 2, 'salem', 9.0, 89),
(3, 'Kumar', 'male', 23, 'information technology', 2, 'coimbatore', 7.9, 100),
(4, 'Divya', 'female', 24, 'HR', 1, 'madurai', 7.8, 90),
(5, 'Ravi', 'male', 23, 'IT', 2, 'chennai', 8.9, 90),
(6, 'Aarav', 'male', 19, 'electronics', 3, 'bengaluru', 6.7, 92),
(7, 'Ananya', 'female', 20, 'mechanical', 3, 'mumbai', 7.8, 81),
(8, 'Rohan', 'male', 18, 'information tech', 4, 'Hyderabad', 8.5, 76),
(9, 'Karthik', 'male', 22, 'civil', 3, 'Kochi', 8.5, 88),
(10, 'Meera', 'female', 21, 'Data science', 3, 'Nagpur', 7.9, 82),
(11, 'Kavya', 'female', 19, 'Information tech', 2, 'Hyderabad', 8.7, 91),
(12, 'Arjun', 'male', 22, 'Electronics', 2, 'Kochi', 9.0, 89),
(13, 'Nithya', 'female', 21, 'Artificial intelligence', 2, 'Mumbai', 8.0, 89),
(14, 'Rahul', 'male', 20, 'Mechanical', 2, 'Kochi', 7.9, 90),
(15, 'Sneha', 'female', 19, 'Civil', 2, 'chennai', 8.7, 90);

SELECT * FROM studentis;
SELECT name FROM studentis;
SELECT * FROM studentis
WHERE city = 'chennai';
SELECT * FROM studentis
WHERE year BETWEEN 1 AND 3;
SELECT * FROM studentis
WHERE city IN ('chennai', 'Kochi','Mumbai');
SELECT * FROM studentis
WHERE name LIKE 'A%';

SELECT * FROM studentis
ORDER BY age ASC;

SELECT * FROM studentis
ORDER BY age DESC;

SELECT * FROM studentis
ORDER BY CGPA DESC;

SELECT * FROM studentis
ORDER BY attendance ASC;


SELECT * FROM studentis
ORDER BY name ASC;


SELECT * FROM studentis
ORDER BY year ASC, CGPA DESC;
SELECT DISTINCT city FROM studentis;
SELECT * FROM studentis
LIMIT 5;
-- 31. Students from Chennai or Kochi,
-- sorted by CGPA
SELECT * FROM studentis
WHERE city IN ('chennai', 'Kochi')
ORDER BY CGPA DESC;

SELECT * FROM studentis
WHERE gender = 'female'
AND name LIKE 'A%';

SELECT DISTINCT city FROM studentis
ORDER BY city ASC;


SELECT * FROM studentis
WHERE year = 2
ORDER BY CGPA DESC
LIMIT 3;


SELECT * FROM studentis
WHERE city LIKE 'C%' OR city LIKE 'M%'
ORDER BY name ASC
LIMIT 5;

SELECT COUNT(*) AS chennai_studentis
FROM studentis
WHERE city = 'chennai';


SELECT SUM(CGPA) AS total_CGPA
FROM studentis;

-- 7. Calculate total attendance
SELECT SUM(attendance) AS total_attendance
FROM studentis;

-- 8. Total age of all students
SELECT SUM(age) AS total_age
FROM studentis;

-- 9. Total CGPA of female students
SELECT SUM(CGPA) AS female_total_CGPA
FROM studentis
WHERE gender = 'female';

-- 10. Total attendance of year 2 students
SELECT SUM(attendance) AS year2_attendance
FROM studentis
WHERE year = 2;

SELECT department, MAX(CGPA) AS highest_CGPA
FROM studentis
GROUP BY department;

-- 1. Count students in each department
SELECT department, COUNT(*) AS total_students
FROM studentis
GROUP BY department;

-- 2. Count male and female students
SELECT gender, COUNT(*) AS total_students
FROM studentis
GROUP BY gender;

-- 3. Find average CGPA in each department
SELECT department, AVG(CGPA) AS average_CGPA
FROM studentis
GROUP BY department;

-- 4. Find maximum CGPA in each department
SELECT department, MAX(CGPA) AS highest_CGPA
FROM studentis
GROUP BY department;

-- 5. Find minimum attendance in each department
SELECT department, MIN(attendance) AS minimum_attendance
FROM studentis
GROUP BY department;

-- 6. Count students in each city
SELECT city, COUNT(*) AS total_students
FROM studentis
GROUP BY city;

-- 7. Find average age in each academic year
SELECT year, AVG(age) AS average_age
FROM studentis
GROUP BY year;

-- 8. Calculate total attendance by gender
SELECT gender, SUM(attendance) AS total_attendance
FROM studentis
GROUP BY gender;

-- 9. Departments having more than 2 students
SELECT department, COUNT(*) AS total_students
FROM studentis
GROUP BY department
HAVING COUNT(*) > 2;

-- 10. Departments with average CGPA above 8
SELECT department, AVG(CGPA) AS average_CGPA
FROM studentis
GROUP BY department
HAVING AVG(CGPA) > 8;

-- 11. Cities having at least 2 students
SELECT city, COUNT(*) AS total_studentis
FROM studentis
GROUP BY city
HAVING COUNT(*) >= 2;

-- 12. Gender groups having average CGPA above 8
SELECT gender, AVG(CGPA) AS average_CGPA
FROM studentis
GROUP BY gender
HAVING AVG(CGPA) > 8;

-- 13. Academic years having more than 3 students
SELECT year, COUNT(*) AS total_students
FROM studentis
GROUP BY year
HAVING COUNT(*) > 3;

-- 14. Departments having maximum CGPA above 8.5
SELECT department, MAX(CGPA) AS highest_CGPA
FROM studentis
GROUP BY department
HAVING MAX(CGPA) > 8.5;

-- 15. Find students having CGPA above average CGPA
SELECT *
FROM studentis
WHERE CGPA > (
    SELECT AVG(CGPA)
    FROM studentis
);

-- 16. Find the student with the highest CGPA
SELECT *
FROM studentis
WHERE CGPA = (
    SELECT MAX(CGPA)
    FROM studentis
);

-- 17. Find students older than the average age
SELECT *
FROM studentis
WHERE age > (
    SELECT AVG(age)
    FROM studentis
);

-- 18. Find students with attendance above average
SELECT *
FROM studentis
WHERE attendance > (
    SELECT AVG(attendance)
    FROM studentis
);

-- 19. Find female students having CGPA above
-- the average CGPA of male students
SELECT *
FROM studentis
WHERE gender = 'female'
AND CGPA > (
    SELECT AVG(CGPA)
    FROM studentis
    WHERE gender = 'male'
);

-- 20. Find students belonging to departments
-- having more than one student
SELECT *
FROM studentis
WHERE department IN (
    SELECT department
    FROM studentis
    GROUP BY department
    HAVING COUNT(*) > 1
);

-- 21. Find students with the lowest CGPA
SELECT *
FROM studentis
WHERE CGPA = (
    SELECT MIN(CGPA)
    FROM studentis
);






