/* =========================================================
   QUERY FOR CREATE TABLE
   ========================================================= */

CREATE TABLE BACCHEINFOR (
    Baccha_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    location VARCHAR(50),
    Phone_no VARCHAR(15) UNIQUE
);


/* =========================================================
   QUERY FOR INSERT DATA INTO TABLE
   ========================================================= */

INSERT INTO BACCHEINFOR(name, location, Phone_no)
VALUES
    ('Divyanshu Gupta', 'Hardoi', '91-7268805398'),
    ('Param Singh', 'JaunPur', '91-7268805758'),
    ('Prakhar Chaubey', 'GajiPur', '91-6357894271');


/* =========================================================
   TO SHOW ALL THE DATA
   ========================================================= */

SELECT * FROM BACCHEINFOR;


/* =========================================================
   TO DELETE A SPECIFIC ROW
   ========================================================= */

DELETE FROM BACCHEINFOR
WHERE Baccha_id = 1;


/* =========================================================
   TO DELETE ENTIRE DATA FROM TABLE
   ========================================================= */

/*
TRUNCATE removes all rows/data from the table.

But the TABLE STRUCTURE remains.
*/

TRUNCATE TABLE BACCHEINFOR;


/* =========================================================
   TRUNCATE WITH RESTART IDENTITY
   ========================================================= */

/*
RESTART IDENTITY resets the SERIAL sequence.

After using RESTART IDENTITY,
the next inserted ID will start again from 1.
*/

TRUNCATE TABLE BACCHEINFOR RESTART IDENTITY;


/* =========================================================
   UPDATE QUERY
   ========================================================= */

/*
UPDATE is used to modify existing data
in a table.
*/

UPDATE BACCHEINFOR
SET location = 'Delhi'
WHERE name = 'Param Singh';


/* =========================================================
   TO SHOW UPDATED DATA
   ========================================================= */

SELECT * FROM BACCHEINFOR;


/* =========================================================
   ORDER BY - ASCENDING ORDER
   ========================================================= */

/*
ASC = Ascending Order

Small to Large:
1, 2, 3, 4...

For text:
A, B, C...
*/

SELECT * FROM BACCHEINFOR
ORDER BY Baccha_id ASC;


/* =========================================================
   ORDER BY - DESCENDING ORDER
   ========================================================= */

/*
DESC = Descending Order

Large to Small:
4, 3, 2, 1...

For text:
Z, Y, X...
*/

SELECT * FROM BACCHEINFOR
ORDER BY Baccha_id DESC;


/* =========================================================
   TO DELETE THE ENTIRE TABLE
   ========================================================= */

/*
DROP TABLE removes:
1. Table
2. Data
3. Table Structure
*/

DROP TABLE BACCHEINFOR;