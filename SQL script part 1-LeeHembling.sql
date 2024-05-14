-- Query 1
USE sql_store;

SELECT *
FROM Customers

-- Query 1 continued
WHERE Customer_ID = 1
ORDER BY first_name;

-- Query 2
SELECT last_name, first_name, points, ((Points + 10) * 100) AS Discount_Factor -- Altered for Task 1b
FROM Customers;

-- Task 2
-- Increases price of each product by 10% and add this as a new column called new_price
SELECT name, unit_price, (unit_price * 1.1) AS new_price 
FROM Products;

-- Task 3
-- Finds all the customers with a birth date after 1st January 1990
SELECT first_name, last_name, birth_date
FROM customers
WHERE birth_date > '1990-01-01'
ORDER BY birth_date ASC; -- Extra step to sort results by birth_date in ascending order

-- Task 4
-- Shows the product with the most amount in stock
USE sql_inventory; -- changes schema to sql_inventory
SELECT name, quantity_in_stock
FROM products
ORDER BY quantity_in_stock DESC -- orders results so that highest amount is first
LIMIT 1; -- Only returns the first (therefore highest) result

-- Task 5
-- Displays the most expensive product
SELECT name, unit_price
FROM products
ORDER BY unit_price DESC -- orders results so that highest amount is first
LIMIT 1; -- Only returns the first (therefore highest) result

-- Task 6
-- Displays the oldest customer
USE sql_store;
SELECT first_name, last_name, address, birth_date
FROM customers
ORDER BY birth_date -- Ascending to return oldest first
LIMIT 1; -- We only want the first result
