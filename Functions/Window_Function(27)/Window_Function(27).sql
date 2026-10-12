 /*

```
       SQL WINDOW FUNCTIONS - HINDI NOTES
```

=========================================================

WINDOW FUNCTION KYA HOTA HAI?

Window Function rows ke ek group par calculation karta hai,
lekin individual rows ko combine karke ek row nahi banata.

Matlab:
Har product ki apni row bhi rahegi aur calculation ka
result bhi dikhai dega.

GROUP BY:
Rows ko groups mein divide karke har group ka result deta hai.

WINDOW FUNCTION:
Individual rows ko rakhta hai aur calculation ka result
har row ke saath dikhata hai.

IMPORTANT KEYWORDS:

OVER()        -> Calculation ke liye window define karta hai.
PARTITION BY  -> Rows ko alag-alag groups mein divide karta hai.
ORDER BY      -> Calculation ke liye rows ka order decide karta hai.

*/

# /*

1. CREATE TABLE
   =========================================================

Hum products table ka use karke Window Functions seekhenge.
*/

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

# /*

2. INSERT DATA
   =========================================================

Table mein 10 products insert kar rahe hain.
*/

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

-- Table ka complete data dekhne ke liye
SELECT * FROM products;

# /*

3. ROW_NUMBER()
   =========================================================

ROW_NUMBER() har row ko ek unique number deta hai.

ORDER BY price DESC:
Sabse zyada price wale product ko pehla number milega.

IMPORTANT:
Agar do products ki price same ho, tab bhi unhe alag
numbers milenge.
*/

SELECT
product_name,
catagory,
price,
ROW_NUMBER() OVER(ORDER BY price DESC) AS row_num
FROM products;

# /*

4. RANK()
   =========================================================

RANK() products ko price ke according rank deta hai.

Agar do products ki price same hai, toh unhe same rank
milti hai aur agla rank skip ho sakta hai.

Example:
Prices: 1000, 1000, 800, 500
Ranks:  1,    1,   3,   4
*/

SELECT
product_name,
price,
RANK() OVER(ORDER BY price DESC) AS product_rank
FROM products;

# /*

5. DENSE_RANK()
   =========================================================

DENSE_RANK() bhi ranking deta hai, lekin rank skip nahi hoti.

Example:
Prices: 1000, 1000, 800, 500
Ranks:  1,    1,   2,   3

RANK()    -> 1, 1, 3, 4
DENSE_RANK() -> 1, 1, 2, 3
*/

SELECT
product_name,
price,
DENSE_RANK() OVER(ORDER BY price DESC) AS dense_rank
FROM products;

# /*

6. PARTITION BY
   =========================================================

PARTITION BY data ko groups mein divide karta hai.

Yahan har category ki ranking alag-alag hogi.

Electronics ki ranking 1 se shuru hogi.
Furniture ki ranking 1 se shuru hogi.
Accessories ki ranking 1 se shuru hogi.

ORDER BY price DESC:
Har category mein sabse mehange product ko rank 1 milegi.
*/

SELECT
product_name,
catagory,
price,
DENSE_RANK() OVER(
PARTITION BY catagory
ORDER BY price DESC
) AS category_rank
FROM products;

# /*

7. SUM() OVER()
   =========================================================

SUM() sabhi products ki prices ka total nikalta hai.

OVER() ke saath individual product ki row bhi dikhti hai.

Har product ke saamne total_price same rahega.
*/

SELECT
product_name,
price,
SUM(price) OVER() AS total_price
FROM products;

# /*

8. SUM() OVER(PARTITION BY)
   =========================================================

Yahan har category ki total price niklegi.

Electronics ke products ke saamne Electronics ka total.
Furniture ke products ke saamne Furniture ka total.
Accessories ke products ke saamne Accessories ka total.

Individual product ki row bhi bani rahegi.
*/

SELECT
product_name,
catagory,
price,
SUM(price) OVER(
PARTITION BY catagory
) AS category_total
FROM products;

# /*

9. AVG() OVER()
   =========================================================

AVG() OVER() sabhi products ki average price nikalta hai.

Har product ki row ke saath average price bhi dikhai degi.
*/

SELECT
product_name,
price,
AVG(price) OVER() AS average_price
FROM products;

# /*

10. COUNT() OVER()
    =========================================================

COUNT(*) OVER() total rows ki counting karta hai.

Agar table mein 10 products hain, toh har row ke saamne
10 dikhai dega.
*/

SELECT
product_name,
COUNT(*) OVER() AS total_products
FROM products;

# /*

11. MIN() OVER() AND MAX() OVER()
    =========================================================

MIN() OVER() -> Sabse kam price dikhata hai.
MAX() OVER() -> Sabse zyada price dikhata hai.

Har product ki individual row bhi dikhegi.
*/

SELECT
product_name,
price,
MIN(price) OVER() AS minimum_price,
MAX(price) OVER() AS maximum_price
FROM products;

# /*

12. LAG()
    =========================================================

LAG() pichhli row ki value deta hai.

Yahan price ko descending order mein arrange kiya hai.

Isliye previous_price mein current row se pehle wali
product ki price aayegi.

Pehli row ke liye previous_price NULL hoga.
*/

SELECT
product_name,
price,
LAG(price) OVER(
ORDER BY price DESC
) AS previous_price
FROM products;

# /*

13. LEAD()
    =========================================================

LEAD() agli row ki value deta hai.

Yahan next_price mein current row ke baad wali
product ki price aayegi.

Aakhri row ke liye next_price NULL hoga.
*/

SELECT
product_name,
price,
LEAD(price) OVER(
ORDER BY price DESC
) AS next_price
FROM products;

# /*

14. NTILE()
    =========================================================

NTILE(4) rows ko 4 groups mein divide karta hai.

Yahan products ko price ke descending order mein
4 groups mein divide kiya gaya hai.

Groups mein rows ki sankhya jitni sambhav ho utni
barabar rakhi jaati hai.
*/

SELECT
product_name,
price,
NTILE(4) OVER(
ORDER BY price DESC
) AS price_group
FROM products;

# /*

15. FIRST_VALUE()
    =========================================================

FIRST_VALUE() window ke order ke according pehli value
deta hai.

Yahan price DESC hai, isliye sabse zyada price har row
ke saamne highest_price mein dikhegi.
*/

SELECT
product_name,
price,
FIRST_VALUE(price) OVER(
ORDER BY price DESC
) AS highest_price
FROM products;

# /*

16. LAST_VALUE()
    =========================================================

LAST_VALUE() window frame ki aakhri value deta hai.

UNBOUNDED FOLLOWING ka use karke hum poori window ki
aakhri value tak pahunch sakte hain.

Price DESC hone ki wajah se aakhri price sabse kam hogi.
*/

SELECT
product_name,
price,
LAST_VALUE(price) OVER(
ORDER BY price DESC
ROWS BETWEEN UNBOUNDED PRECEDING
AND UNBOUNDED FOLLOWING
) AS lowest_price
FROM products;

# /*

17. ROW_NUMBER(), RANK() AUR DENSE_RANK() EK SAATH
    =========================================================

Teenon functions ko ek hi query mein dekh sakte hain.

ROW_NUMBER() -> Har row ko unique number deta hai.
RANK() -> Same values par same rank; rank skip ho sakti hai.
DENSE_RANK() -> Same values par same rank; rank skip nahi hoti.

NOTE:
Hamare current products data mein prices unique hain,
isliye RANK() aur DENSE_RANK() ke results same honge.
Same prices hone par difference dikhega.
*/

SELECT
product_name,
price,
ROW_NUMBER() OVER(
ORDER BY price DESC
) AS row_num,

```
RANK() OVER(
    ORDER BY price DESC
) AS product_rank,

DENSE_RANK() OVER(
    ORDER BY price DESC
) AS dense_rank
```

FROM products;

# /*

18. WINDOW FUNCTION VS GROUP BY
    =========================================================

GROUP BY:
Category ke according ek result row per category.

WINDOW FUNCTION:
Har product ki row ke saath category ka total.

GROUP BY EXAMPLE:
*/

SELECT
catagory,
SUM(price) AS category_total
FROM products
GROUP BY catagory;

/*
WINDOW FUNCTION EXAMPLE:

Har product ki row bani rahegi aur category ka total
saath mein dikhai dega.
*/

SELECT
product_name,
catagory,
price,
SUM(price) OVER(
PARTITION BY catagory
) AS category_total
FROM products;

# /*

19. IMPORTANT INTERVIEW NOTES
    =========================================================

Q1. Window Function kya hota hai?

Answer:
Window Function rows ke group par calculation karta hai
aur individual rows ko bhi rakhta hai.

Q2. OVER() kya karta hai?

Answer:
OVER() calculation ke liye window define karta hai.

Q3. PARTITION BY kya karta hai?

Answer:
PARTITION BY data ko groups mein divide karta hai,
lekin individual rows ko combine nahi karta.

Q4. RANK() aur DENSE_RANK() mein difference?

Answer:
RANK() mein rank skip ho sakti hai.
DENSE_RANK() mein rank skip nahi hoti.

Q5. LAG() aur LEAD() kya karte hain?

Answer:
LAG() previous row ki value deta hai.
LEAD() next row ki value deta hai.

Q6. SUM(price) aur SUM(price) OVER() mein difference?

Answer:
SUM(price) aggregate function ki tarah total deta hai.
SUM(price) OVER() har individual row ke saath total dikhata hai.

Q7. ROW_NUMBER() aur RANK() mein difference?

Answer:
ROW_NUMBER() har row ko unique number deta hai.
RANK() same values ko same rank de sakta hai.

=========================================================
END OF NOTES
============

*/
