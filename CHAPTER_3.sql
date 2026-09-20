CREATE TABLE Employee(
	emp_id SERIAL,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(100),
	department VARCHAR(100),
	hire_date DATE,
	salary NUMERIC(10,2)
);
SELECT * FROM Employee;