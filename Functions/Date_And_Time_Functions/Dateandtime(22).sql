DROP TABLE IF EXISTS products;
CREATE TABLE products(
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(50),
catagory VARCHAR(50),
price NUMERIC(10,2),
quantity INT,
added_date DATE,
discount_rate NUMERIC(10,3)
);

INSERT INTO products
(product_name, catagory, price, quantity, added_date, discount_rate)
VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.000),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.000),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.000),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.000),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.000),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.000),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.500),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.000),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.000),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.000);

--1.NOW()-GET CURRENT DATE AND TIME
SELECT NOW()AS current_datetime;

--2.CURRENT_DATE-GET CURRENT DATE
SELECT CURRENT_DATE AS today_date;

--(PRACTICALLY USE)
SELECT added_date,CURRENT_DATE(CURRENT_DATE-added_date)AS date_difference FROM products;

--3.EXTRACT()-EXTRACT PART OF A DATE
--EXTRACT YEAR,MONTH AND  DAY FROM ADDED_DATE COLUMN

SELECT product_name,EXTRACT(YEAR FROM added_date)AS year_added
FROM products;

SELECT product_name,EXTRACT(MONTH FROM added_date)AS month_added
FROM products;

SELECT product_name,EXTRACT(DAY FROM added_date)AS day_added
FROM products;

--4.AGE()-CALCULATE BETWEEN AGE
--CALCULATE THE TIME DIFFERNECE BETWEEN ADDED_DATE AND TODAY'S DATE
SELECT product_name,AGE(CURRENT_DATE,added_date)AS age_since_added FROM products;


--5.TO_CHAR()-FORMATE DATES AS STRINGS
-- FORMATE ADDED DATE IN A CUSTOM FORMATE (DD-MON-YYYY)

SELECT TO_CHAR(added_date,'DD-Mon-YYYY')AS Formated_date FROM products;
