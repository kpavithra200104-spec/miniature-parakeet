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







