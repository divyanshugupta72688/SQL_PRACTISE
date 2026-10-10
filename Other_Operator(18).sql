SELECT*FROM employee;
--1)find employee where the email column is null
SELECT first_name,last_name,salary FROM employee
WHERE first_name IS NULL;

--2)list employees sorted by salary is descending order.
SELECT salary FROM employee
ORDER BY salary DESC; 

--3)retrieve the top5- paid employees
SELECT first_name,last_name, salary FROM employee
ORDER BY salary DESC
LIMIT 5 ;

--4)RETREIVE A LIST OF UNIQUE DEPARTMENTS
SELECT COUNT (DISTINCT department) FROM employee;


