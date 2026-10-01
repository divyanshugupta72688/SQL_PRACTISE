CREATE TABLE Users(
user_id SERIAL PRIMARY KEY,
username VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
age INT,
city VARCHAR(50)
);
SELECT*FROM Users;
INSERT INTO Users(username,email,age,city) VALUES
('Divyanshu Gupta','gdivyanshu@gmail.com',25,'Hardoi'),
('Params singh','sParam@gmail.com',22,'jaunpur'),
('Prakhar Gupta','Parakhar@gmail.com',25,'Hardoi');

/* IF U WANT TO SHOW ONLY USER ID AND USERNAME */
SELECT user_id,username FROM Users;

/* UPDATES DATA*/
--1=>
UPDATE Users
SET age = 24
WHERE username = 'Divyanshu Gupta';

--2=>
UPDATE Users
SET age=25,username='Ayush Gupta'
WHERE username = 'Prakhar Gupta';

/* to show data in ascending or descending order*/
SELECT * FROM Users ORDER BY user_id ASC;