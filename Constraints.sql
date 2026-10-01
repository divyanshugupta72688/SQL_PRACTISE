CREATE TABLE Students(
student_id SERIAL PRIMARY KEY,
name varchar(50) NOT NULL,
email varchar(50) UNIQUE,
age INTEGER CHECK (age>=18),
registration_date  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO Students (name, email, age)
VALUES
    ('Divyanshu Gupta', 'gdivyanshu@gmail.com', 21),
    ('Param Singh', 'Singhparam@gmail.com', 22);
INSERT INTO Students (name, email, age,registration_date)
VALUES('Prakhar Sharma','sharamprakhaer@gmail.com',23,'2026-05-02');
	SELECT * FROM Students;

DELETE FROM Students
WHERE student_id = 3;

ALTER TABLE Students
DROP COLUMN age;

TRUNCATE TABLE Students RESTART IDENTITY;

DROP TABLE Students;