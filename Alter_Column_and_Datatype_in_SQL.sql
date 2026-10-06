CREATE TABLE DataEmp(
user_id SERIAL PRIMARY KEY,
username VARCHAR(50) NOT NULL,
age INT CHECK (age>=18),
city VARCHAR(50) DEFAULT 'DELHI' 
);

INSERT INTO DataEmp (username, age, city)
VALUES
('Divyanshu', 22, 'DELHI'),
('Ayush', 21, 'NOIDA'),
('Rahul', 24, 'JAIPUR'),
('Aman', 23, 'LUCKNOW'),
('Rohit', 25, 'GURUGRAM');



-- to rename to username column we use  ALTER

ALTER TABLE DataEmp
RENAME COLUMN username TO full_name;

-- change the column's datatypes from integer to smallint
ALTER TABLE DataEmp
ALTER COLUMN age TYPE smallint;

-- to add any constraints to any columns

ALTER TABLE DataEmp
ALTER COLUMN city SET NOT NULL;

SELECT *FROM DataEmp;