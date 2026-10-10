CREATE TABLE Students_2023(
student_id INT PRIMARY KEY,
student_name VARCHAR(100),
course VARCHAR(50)
);

INSERT INTO Students_2023(student_id,student_name,course)
VALUES(1,'Divyanshu Gupta','Data Science'),
(2,'Param Singh','Computer Science'),
(3,'Parakhar Chaubey','Civil Engineer'),
(4,'Tanmay','Electrical Engineer'),
(5,'Ayush Gupta','AIDS');

SELECT*FROM Students_2023;


CREATE TABLE Students_2024(
student_id INT PRIMARY KEY,
student_name VARCHAR(100),
course VARCHAR(50)
);

INSERT INTO Students_2024(student_id,student_name,course)
VALUES(1,'Divyanshu Gupta','Data Science'),
(2,'Param Singh','Computer Science'),
(6,'Parakhar Singh','Civil Engineer'),
(7,'Kumar Tanmay','Electrical Engineer'),
(8,'Ayush Singh','AIDS');

SELECT*FROM Students_2024;

--1.(UNION OPERATOR)=> COMBINES RESULTS, REMOVE DUPLICATES
SELECT*FROM Students_2023
UNION
SELECT*FROM Students_2024
ORDER BY student_id ASC;

--2.(UNION ALL)=>  COMBINES RESULTS, KEEPS DUPLICATES
SELECT*FROM Students_2023
UNION ALL
SELECT*FROM Students_2024
ORDER BY student_id ASC;

--3.(INTERSECT)=>RETURNS COMMON RESULT
SELECT*FROM Students_2023
INTERSECT
SELECT*FROM Students_2024;
--4.(EXCEPT) RETURNS RESULTS IN FIRST , NOT SECOND
/*
SQL mein EXCEPT ka matlab hota hai: pehli query ke results mein se woh records return karna jo doosri query mein nahi hain.
*/
SELECT*FROM Students_2023
EXCEPT
SELECT*FROM Students_2024;
