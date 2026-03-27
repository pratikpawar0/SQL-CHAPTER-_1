-- Create Database
CREATE DATABASE Country;

-- Use Database
USE Country;

-- Create Table
CREATE TABLE students (
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    score INT NOT NULL
);

-- Insert Data
INSERT INTO students (id, first_name, country, score) VALUES
(1, 'Pratik', 'India', 85),
(2, 'Rahul', 'India', 78),
(3, 'John', 'USA', 90),
(4, 'Emma', 'UK', 88),
(5, 'Amit', 'India', 72),
(6, 'Sophia', 'Canada', 95),
(7, 'Liam', 'Australia', 80),
(8, 'Olivia', 'USA', 87),
(9, 'Noah', 'Germany', 76),
(10, 'Ava', 'France', 89);

-- View All Data
SELECT * FROM students;

-- USA Students
SELECT * FROM students 
WHERE country = 'USA';

-- NOT USA Students
SELECT * FROM students 
WHERE country != 'USA';

-- Score Conditions
SELECT * FROM students WHERE score > 70;
SELECT * FROM students WHERE score >= 70;
SELECT * FROM students WHERE score < 70;

-- AND Condition
SELECT * FROM students 
WHERE country = 'USA' AND score < 70;

-- OR Condition
SELECT * FROM students 
WHERE country = 'USA' OR score < 70;

-- NOT Condition
SELECT * FROM students 
WHERE NOT score < 70;

-- BETWEEN
SELECT * FROM students 
WHERE score BETWEEN 40 AND 90;

-- IN
SELECT * FROM students 
WHERE country IN ('India', 'USA', 'UK');

-- NOT IN
SELECT * FROM students 
WHERE country NOT IN ('India', 'USA');

-- LIKE
SELECT * FROM students WHERE first_name LIKE 'A%';
SELECT * FROM students WHERE first_name LIKE '%a';
SELECT * FROM students WHERE first_name LIKE '%li';

-- Extra Practice (Interview Level 🔥)

-- Average Score
SELECT AVG(score) FROM students;

-- Highest Score
SELECT * FROM students 
ORDER BY score DESC
LIMIT 1;

-- Count by Country
SELECT country, COUNT(*) 
FROM students
GROUP BY country;