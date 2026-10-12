CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INTEGER
);
-- Insert data into Employees
INSERT INTO employee (first_name, last_name, department_id)
VALUES
    ('Rahul', 'Sharma', 101),
    ('Priya', 'Mehta', 102),
    ('Ankit', 'Verma', 103),
    ('Simran', 'Kaur', NULL),
    ('Aman', 'Singh', 101);

-- Display all records
SELECT * FROM employee;

-- Create Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert Data into Departments
INSERT INTO Departments (department_id, department_name)
VALUES
    (101, 'Sales'),
    (102, 'Marketing'),
    (103, 'IT'),
    (104, 'HR');

-- Display all records
SELECT * FROM Departments;

-- 1. INNER JOIN
-- Returns only matching records from both tables.

SELECT e.employee_id,e.first_name,e.last_name,d.department_id,d.department_name
FROM Employee e
INNER JOIN
Departments d
ON
e.department_id = d.department_id;

-- 2. LEFT JOIN (LEFT OUTER JOIN)
-- Returns all records from the left table
-- and matching records from the right table.

SELECT*
FROM Employee e
LEFT JOIN
Departments d
ON
e.department_id = d.department_id;


-- 3. RIGHT JOIN (RIGHT OUTER JOIN)
-- Returns all records from the right table
-- and matching records from the left table.

SELECT*
FROM Employee e
RIGHT JOIN
Departments d
ON
e.department_id = d.department_id;