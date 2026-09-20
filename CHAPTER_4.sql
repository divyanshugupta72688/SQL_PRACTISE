/*
TO INSERT DATA INTO ENPLOYEE TABLE
*/
INSERT INTO Employee(name,position,department,hire_date,salary)
	VALUES('Divyanshu Gupta','Data Analyst','Data Science','01-05-2027',38000),
	      ('Param Singh','Data Analyst','Data Science','01-05-2027',35000),
		   ('Rahul Sharma',  'Software Developer', 'Engineering', '2027-05-01', 45000),
			  ('Priya Verma',   'UI/UX Designer',     'Design',      '2027-05-15', 40000),
			  ('Amit Kumar',    'Backend Developer',  'Engineering', '2027-06-01', 48000),
			  ('Neha Singh',    'HR Executive',       'HR',          '2027-06-10', 32000),
			  ('Karan Mehta',   'Data Analyst',       'Data Science','2027-06-20', 36000);

			  
--truncate is used to remove entire data simatounseouly from the table
TRUNCATE TABLE Employee;

-- IF U USE SERIAL DATATYPE IN TABLE THEN U HAVE TO USE 
TRUNCATE TABLE Employee RESTART IDENTITY;

-- to SHOW ENTIRE DATA FROM THE TABLE
SELECT *FROM Employee;