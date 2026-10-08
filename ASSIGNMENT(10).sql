CREATE TABLE employees(
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(50),
salary DECIMAL(10,2) CHECK (salary>0),
joining_date DATE NOT NULL,
age INT CHECK (age>=18)
);

INSERT INTO employees(first_name,last_name,department,salary,joining_date,age)
VALUES('Divyanshu','Gupta','IT',60000.00,'2027-05-01',22),
('Ayush','Gupta','HR',45000.00,'2027-06-15',23),
('Rahul','Sharma','Finance',55000.00,'2027-07-10',25),
('Priya','Singh','Marketing',48000.00,'2027-08-05',24),
('Aman','Verma','IT',65000.00,'2027-09-20',26);
SELECT * FROM employees;
SELECT* FROM employees ORDER BY employee_id ASC;


/*Q1.RETRIEVE all employees first_names and thier department */
SELECT first_name,department FROM employees;

/*Q2.UPDATE THE SALARY  OF ALL employees in the 'IT' department by increasing it by 10%*/
UPDATE employees
SET salary = (salary*1.10)
WHERE department = 'IT';

/*Q3.DELETE ALL EMPLOYEES WHO ARE OLDER THAN 34 YEARS*/
DELETE FROM employees
WHERE age>=34;

/*Q4.ADD A NEW COLUMN EMAIL IN THE EMPLOYEE TBALE*/
ALTER TABLE employees
ADD COLUMN email VARCHAR(50) 

ALTER TABLE employees
ALTER COLUMN email SET DEFAULT 'gdivyanshu72688@gmail.com';


/*Q5.RENAME THE DEPARTMENT COLUMN TO DEPT_NAME*/
ALTER TABLE employees
RENAME COLUMN department TO dept_name;

/*Q6.RETRIEVE THE NAMES OF EMPLOYEES WHO JOINED AFTER JULY 10 ,2027*/
SELECT first_name,last_name FROM employees
WHERE joining_date>'2027-07-1';

/*Q7.CHANGE THE DATATYPE OF THE SALARY COLUMN TO INTEGER*/
ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER;


SELECT* FROM employees ORDER BY employee_id ASC;