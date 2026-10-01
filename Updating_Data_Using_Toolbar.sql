CREATE TABLE Personal_Details(
user_id SERIAL PRIMARY KEY,
username VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
age INT,
city VARCHAR(50)
);
INSERT INTO Personal_Details(username,email,age,city) VALUES
('Divyanshu Gupta','gdivyanshu@gmail.com',25,'Hardoi'),
('Params singh','sParam@gmail.com',22,'jaunpur'),
('Prakhar Gupta','Parakhar@gmail.com',25,'Hardoi');
SELECT*FROM Personal_Details;
SELECT*FROM Personal_Details ORDER BY user_id ASC;


/*UPDATE USING LIKE */
UPDATE Personal_Details
SET age = 22
WHERE username LIKE '%Gupta%';

UPDATE Personal_Details
SET age =26
WHERE username LIKE '%singh%';