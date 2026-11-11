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
SELECT *
FROM employee
WHERE salary > 35000;
SELECT *
FROM employee
WHERE age > 25 AND salary > 40000;
SELECT *
FROM employee
WHERE department = 'IT'
OR department = 'Sales';
SELECT *
FROM employee
WHERE department != 'HR';
SELECT *
FROM employee
WHERE age > 25 OR salary < 30000;
SELECT *
FROM employee
WHERE salary > 30000
AND age < 30;
SELECT COUNT(*)
FROM employee;
SELECT SUM(salary) AS total_salary
FROM employee;
SELECT AVG(salary) AS average_salary
FROM employee;
SELECT MAX(salary) AS highest_salary
FROM employee;
SELECT MIN(salary) AS lowest_salary
FROM employee;
SELECT COUNT(*) AS total_IT_employees
FROM employee
WHERE department = 'IT';
SELECT AVG(marks) AS average_marks
FROM student;
SELECT department, COUNT(*) AS total_employees
FROM employee
GROUP BY department;
SELECT department, SUM(salary) AS total_salary
FROM employee
GROUP BY department;
SELECT department, AVG(salary) AS average_salary
FROM employee
GROUP BY department;
SELECT department, MAX(salary) AS maximum_salary
FROM employee
GROUP BY department;
SELECT department, MIN(salary) AS minimum_salary
FROM employee
GROUP BY department




