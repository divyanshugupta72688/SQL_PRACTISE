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

/*
ADDING DISCOUNT_PRICE COLUMNN WITH NULL VALUES
1.LET'S SIMULATE A SCENARIO WHERE DISCOUNT_PRICE IS NULL FOR SOME PRODUCTS.
WE WILL DISPLAY PRICE IF DISCOUNT_PRICE IS NULL..
2.FIRST,ADD A DISCOUNT_PRICE COLUMN AND UPDATE IT FOR 
*/

ALTER TABLE products
ADD COLUMN Discount_price NUMERIC(10,2);

UPDATE products
SET Discount_price = price * (1 - discount_rate / 100)
WHERE product_name NOT IN ('Laptop', 'Desk');

SELECT product_name,price,discount_rate,Discount_price FROM products;


SELECT product_name ,COALESCE(Discount_price,price)AS Final_Price FROM products;

