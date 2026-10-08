SELECT*FROM employee
/*RETRIEVE THE FIRST_NAME,SALARY AND CALCULATE A 10%
BOMUS ON THE SALARY*/

SELECT first_name,salary,(salary*0.10)AS Bonus FROM employee;

/*CALCULATE THE ANNUAL SALARY AND SALARY INCREMENT BY 5%
- SHOW MONTHLY NEW SALARY AS WELLL*/
--1-->
SELECT first_name,last_name,salary,(salary*12) AS Annual_Salary,
(salary*0.5)AS increment_Salary,
(salary+salary*0.05) AS new_salary,
(salary*1.05)AS new_salary2
FROM employee;

SELECT*FROM employee;