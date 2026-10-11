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

/*
ASSIGNMENT 1 : CASE WITH AND & OR OPERATORS-STOCK_STATUS
WE WILL CLASSIFY PRODUCTS BASED ON QUANTITY AVAIBALE
1.QUNATITY>=10 IN STOCK
2.QUANITY>=9 AND QUANTITY<=5 LIMITED STOCK
3.QUANTITY >5 OUT OF STOCK
*/


SELECT product_name,quantity,
              CASE
			      WHEN quantity>=10 THEN 'In Stock'
				  WHEN quantity>=5 AND quantity<=9 THEN 'LIMITED STOCK'
				  ELSE 'Out Of Stock'
				END AS Stock_status FROM products;  

/*
ASSIGNMENT 2.CHECK IF THE CATAGORY NAME CONTAINS ELECTRONIS THEN OUTPUT 'ELECTRONICS ITEM' AND FURNITURE OUTPUT 'FURNITURE ITEMS ' AND SO ON...
*/
SELECT*FROM products;
SELECT product_name,catagory,
							CASE
							    WHEN catagory = 'Electronics' THEN 'Electronics ITEM'
								WHEN catagory = 'Furniture' THEN 'Furniture ITEM'
								ELSE 'Accessories Item'
							END AS Catagory_type
							FROM products;