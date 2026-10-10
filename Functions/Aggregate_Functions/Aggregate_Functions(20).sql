--AGGREGATE FUNCTIONS-> IT PERFORMS CALCULATIONS ON A SET OF VALUES
-- AND RETURNS A SINGLE VALUES

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

SELECT*FROM products; 

/*--1.(COUNT)(RETURNS THE NUMBER OF ROWS)*/
SELECT COUNT(*)AS Total_Count_Of_Products
FROM products;

--2.(SUM)(RETURN THE SUM OF THE COLUMN)
SELECT SUM(quantity) AS Total_quantity FROM products;
WHERE catagory = 'Electronics' AND price>=20000;

--3.(AVG)(RETURNS THE AVERAGE VALUE)
SELECT AVG(price) AS AVG_PRICE FROM products;
--4.(MAX)(RETURN THE MAXIMUM VALUE)
SELECT MAX(price)AS Max_Pro
FROM products;
--5.(MIN)(RETURN THE MINIMUM VALUE)
SELECT MIN(price)AS Max_Pro
FROM products;