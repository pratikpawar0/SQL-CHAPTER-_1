-- 1. Create Database
CREATE DATABASE Pratik_BOD;

-- 2. Use Database
USE Pratik_BOD;

-- 3. Create Table
CREATE TABLE pratik_Brith (
    id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    brith DATE NOT NULL,
    phone VARCHAR(11) NOT NULL,
    city VARCHAR(40) NOT NULL,
    CONSTRAINT PK PRIMARY KEY (id)
);

-- 4. Add New Column
ALTER TABLE pratik_Brith
ADD email VARCHAR(50) NOT NULL;

-- 5. Insert Data (3 Records)
INSERT INTO pratik_Brith (id, name, brith, phone, city, email)
VALUES 
(1, 'Pratik', '2003-11-20', '9876543210', 'Indore', 'pratik@gmail.com'),
(2, 'Rahul', '2002-05-15', '9123456780', 'Mumbai', 'rahul@gmail.com'),
(3, 'Amit', '2001-08-10', '9988776655', 'Pune', 'amit@gmail.com');

-- 6. Insert 2 More Records (Task)
INSERT INTO pratik_Brith 
VALUES
(4, 'Sneha', '2000-02-25', '9090909090', 'Delhi', 'sneha@gmail.com'),
(5, 'Neha', '1999-07-30', '8080808080', 'Nagpur', 'neha@gmail.com');

-- 7. Update Email of One User
UPDATE pratik_Brith
SET email = 'rahul_new@gmail.com'
WHERE id = 2;

-- 8. Delete One Record Using Name
DELETE FROM pratik_Brith
WHERE name = 'Neha';

-- 9. View Data
SELECT * FROM pratik_Brith;