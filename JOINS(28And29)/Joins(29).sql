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


-- 4. FULL JOIN (FULL OUTER JOIN)
-- Returns all records from both tables,
-- including matching and non-matching records.


SELECT e.employee_id,e.first_name,e.last_name,d.department_id,d.department_name
FROM Employee e
FULL OUTER JOIN
Departments d
ON
e.department_id = d.department_id;

-- 5. CROSS JOIN
-- Returns all possible combinations of rows
-- from both tables.

SELECT e.first_name,e.last_name,d.department_id,d.department_name
FROM Employee e
CROSS JOIN
Departments d;


-- 6. SELF JOIN
-- Joins a table with itself.

 SELECT e1.first_name AS EMployee_first_name1,
 e2.first_name AS EMployee_first_name2
 FROM Employee e1 JOIN Employee e2
 ON e1.department_id = e2.department_id AND e1.employee_id!=e2.employee_id; 