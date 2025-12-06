-- Task 1.1
SELECT *
FROM mydb.products;

-- Task 1.2
SELECT name, phone
FROM mydb.shippers;

-- Task 2
SELECT 
    AVG(price) AS avg_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM mydb.products;

-- Task 3
SELECT DISTINCT
    category_id,
    price
FROM mydb.products
ORDER BY price DESC
LIMIT 10;
-- Task 4
SELECT COUNT(*) AS products_in_range
FROM mydb.products
WHERE price BETWEEN 20 AND 100;

-- Task 5
SELECT 
    supplier_id,
    COUNT(*)        AS product_count,
    AVG(price)      AS avg_price
FROM mydb.products
GROUP BY supplier_id;
