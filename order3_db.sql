create role postgres with login superuser password 'postgres';
ALTER DATABASE orderdb OWNER TO postgres;
ALTER DATABASE order_db OWNER TO postgres;
\q
CREATE ROLE postgres WITH LOGIN SUPERUSER PASSWORD 'postgres';
CREATE ROLE
ALTER DATABASE order_db OWNER TO postgres;
\q
SELECT * FROM orders;
\q
SELECT * FROM orders;
\q
SELECT * FROM orders;
psql -U sales_clerk -d order_db -h localhost -W
\q
ALTER ROLE sales_clerk WITH PASSWORD 'NewPassword123';
\q
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 8, Q1
SELECT customer_name, city
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);
\q
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 8, Q1
SELECT customer_name, city
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);
\q
GRANT USAGE ON SCHEMA public TO sales_clerk;

GRANT SELECT ON TABLE customers, products, orders TO sales_clerk;
\q
\c order_db
-- Name: Sanika Kangane
-- Roll No: YOUR_ROLL_NUMBER
-- Assignment 11, Q1
SELECT
    order_id,
    meta_data->>'payment_method' AS payment_method
FROM orders;
-- Name: Sanika Kangane
-- Roll No: YOUR_ROLL_NUMBER
-- Assignment 11, Q2
SELECT
    order_id,
    meta_data->'shipping'->>'city' AS shipping_city
FROM orders;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 11, Q1
SELECT
    order_id,
    meta_data->>'payment_method' AS payment_method
FROM orders;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 11, Q2
SELECT
    order_id,
    meta_data->'shipping'->>'city' AS shipping_city
FROM orders;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 11, Q3
SELECT
    order_id,
    meta_data->>'payment_method' AS payment_method
FROM orders
WHERE meta_data->>'status' IN ('pending', 'shipped');
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 11, Q4
SELECT
    meta_data->>'payment_method' AS payment_method,
    COUNT(*) AS order_count
FROM orders
GROUP BY meta_data->>'payment_method';
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 11, Q5
UPDATE orders
SET meta_data = jsonb_set(
    meta_data,
    '{status}',
    '"delivered"'
)
WHERE order_id = 3;
SELECT
    order_id,
    meta_data
FROM orders
WHERE order_id = 3;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 12, Q1
SELECT
    product_name,
    tags
FROM products
WHERE 'new' = ANY(tags);
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 12, Q2
SELECT
    product_name
FROM products
WHERE tags @> ARRAY['furniture', 'office'];
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 12, Q3
SELECT
    product_name,
    array_length(tags, 1) AS tag_count
FROM products;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 12, Q4
SELECT
    product_name,
    monthly_sales[6] AS june_sales
FROM products
ORDER BY monthly_sales[6] DESC;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 12, Q5
UPDATE products
SET tags = array_append(tags, 'clearance')
WHERE product_id = 105;
SELECT
    product_id,
    product_name,
    tags
FROM products
WHERE product_id = 105;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 13, Q1
SELECT
    order_id,
    order_date,
    TO_CHAR(order_date, 'Month') AS month_name
FROM orders;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 13, Q2
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    COUNT(*) AS order_count
FROM orders
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY order_year;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 13, Q3
SELECT
    order_id,
    order_date
FROM orders
WHERE order_date >= (
    SELECT MAX(order_date)
    FROM orders
) - INTERVAL '30 days'
ORDER BY order_date;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 13, Q4
SELECT
    c.customer_name,
    CURRENT_DATE - MAX(o.order_date) AS days_since_last_order
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY c.customer_name;
-- Name: Sanika Kangane
-- Roll No: 150096725211
-- Assignment 13, Q5
SELECT
    order_id,
    order_date,
    TO_CHAR(order_date, 'Day') AS day_name
FROM orders;
\s order3_db.sql;
