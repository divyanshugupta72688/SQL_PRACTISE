SELECT*FROM employee;
/*WRITE A QUERY FOR SHOW WHICH EMPLOYEE AGE IS 30*/
SELECT*FROM employee
WHERE age>=30;

-- matches age except 30
SELECT*FROM employee
WHERE age!=30;/*you can write != OR <>*/