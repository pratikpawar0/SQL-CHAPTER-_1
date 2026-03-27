-- ===============================
-- 1. CREATE DATABASE
-- ===============================
CREATE DATABASE company_db;
USE company_db;

-- ===============================
-- 2. CREATE TABLES
-- ===============================

-- Employees Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    salary INT
);

-- Departments Table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Projects Table
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    emp_id INT,
    project_name VARCHAR(50)
);

-- ===============================
-- 3. INSERT DATA
-- ===============================

-- Employees Data
INSERT INTO employees VALUES
(1, 'Pratik', 101, 50000),
(2, 'Rahul', 102, 60000),
(3, 'Sneha', 101, 55000),
(4, 'Amit', 103, 45000),
(5, 'Neha', 102, 70000);

-- Departments Data
INSERT INTO departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance');

-- Projects Data
INSERT INTO projects VALUES
(1, 1, 'Website'),
(2, 2, 'Recruitment'),
(3, 3, 'App Development'),
(4, 1, 'Dashboard'),
(5, 5, 'Training');

-- ===============================
-- 4. BASIC SELECT
-- ===============================
SELECT * FROM employees;

SELECT dept_id, emp_id FROM employees;

-- ===============================
-- 5. WHERE CONDITION
-- ===============================
SELECT emp_id, name, salary
FROM employees
WHERE salary >= 55000;

-- ===============================
-- 6. ORDER BY + LIMIT
-- ===============================
SELECT * 
FROM employees
ORDER BY salary DESC
LIMIT 2;

-- Multiple sorting
SELECT * 
FROM employees
ORDER BY salary DESC, dept_id ASC;

-- ===============================
-- 7. GROUP BY
-- ===============================
SELECT dept_id, COUNT(emp_id) AS total_employees
FROM employees
GROUP BY dept_id;

-- ===============================
-- 8. HAVING
-- ===============================
SELECT dept_id, COUNT(emp_id) AS total_employees
FROM employees
GROUP BY dept_id
HAVING COUNT(emp_id) > 1;

-- ===============================
-- 9. AGGREGATE FUNCTIONS
-- ===============================
SELECT MAX(salary) AS max_salary FROM employees;
SELECT MIN(salary) AS min_salary FROM employees;
SELECT AVG(salary) AS avg_salary FROM employees;

-- ===============================
-- 10. JOINS
-- ===============================

-- INNER JOIN (Employee + Department)
SELECT e.name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- LEFT JOIN (All employees + projects)
SELECT e.name, p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

-- ===============================
-- 11. 3 TABLE JOIN 🔥
-- ===============================
SELECT e.name, d.dept_name, p.project_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN projects p ON e.emp_id = p.emp_id;

-- ===============================
-- 12. SUBQUERY
-- ===============================

-- Employees with above average salary
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- ===============================
-- 13. IMPORTANT INTERVIEW QUERIES
-- ===============================

-- Highest salary
SELECT * 
FROM employees
ORDER BY salary DESC
LIMIT 1;

-- 2nd highest salary
SELECT * 
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- Employees in IT department
SELECT e.name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

-- Count projects per employee
SELECT e.name, COUNT(p.project_id) AS total_projects
FROM employees e
LEFT JOIN projects p ON e.emp_id = p.emp_id
GROUP BY e.name;
