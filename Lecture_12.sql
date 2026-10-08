CREATE TABLE employee(
emp_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(20),
salary NUMERIC(10,2),
joining_date DATE,
age INT
);

ALTER TABLE employee
RENAME COLUMN emp_id TO employee_id;
SELECT *FROM employee;
/*COPY DATA FROM CSV FILE .*/

COPY
employee(employee_id, first_name, last_name, department, salary, joining_date, age)
FROM 'C:\Users\gdivy\OneDrive\Desktop\SQL\employee_data.csv'
DELIMITER','
CSV HEADER;