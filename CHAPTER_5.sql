/*DELETING  SPECIFIC ROWS AND COLUMN */

CREATE TABLE Employee3(
	emp_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(100),
	department VARCHAR(100),
	hire_date DATE,
	salary NUMERIC(10,2)
);

INSERT INTO Employee3(emp_id,name,position,department,hire_date,salary)
	VALUES(1,'Divyanshu Gupta','Data Analyst','Data Science','01-05-2027',38000),
	      (2,'Param Singh','Data Analyst','Data Science','01-05-2027',35000),
		   (3,'Rahul Sharma',  'Software Developer', 'Engineering', '2027-05-01', 45000),
			  (4,'Priya Verma',   'UI/UX Designer',     'Design',      '2027-05-15', 40000),
			  (5,'Amit Kumar',    'Backend Developer',  'Engineering', '2027-06-01', 48000),
			  (6,'Neha Singh',    'HR Executive',       'HR',          '2027-06-10', 32000),
			  (7,'Karan Mehta',   'Data Analyst',       'Data Science','2027-06-20', 36000);

SELECT * FROM Employee3;

-- to delete a specific row from the table we use DELETE KEY WORD

DELETE FROM Employee3
WHERE emp_id=6;

-- to delete a column , table and database we use DROP keyword

ALTER TABLE Employee3
DROP COLUMN salary;

DROP TABLE Employee3;