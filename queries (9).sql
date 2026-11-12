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
SELECT * FROM employee
ORDER BY age ASC;
SELECT * FROM employee
ORDER BY salary DESC;




SELECT *
FROM employee
WHERE salary > 30000
ORDER BY salary ASC
LIMIT 3;

SELECT *
FROM employee
ORDER BY salary ASC
LIMIT 1;

SELECT *
FROM employee
ORDER BY age ASC
LIMIT 5;


SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 3;
