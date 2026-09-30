# DBMS-Assignment-11-12-13

A beginner-friendly DBMS assignment based on **JSON & Advanced Types**. This assignment focuses on practicing advanced SQL queries using the `order_db` database, including JSONB operators and functions, array operators and functions, and date/time functions.

## Assignment Overview

The assignment involves working with the `order_db` database and performing advanced SQL queries on customers, products, and orders.

The work is divided into three main parts:

1. **Assignment 11 — JSON & JSONB**
2. **Assignment 12 — Arrays**
3. **Assignment 13 — Date & Time**

The assignment contains a total of **15 SQL queries**, with 5 questions in each assignment.

## Database

### order_db

The database contains the following main tables:

* **CUSTOMERS**
* **PRODUCTS**
* **ORDERS**

## Tables and Attributes

### CUSTOMERS

* `customer_id` — Primary Key
* `customer_name`
* `city`
* `country`

### PRODUCTS

* `product_id` — Primary Key
* `product_name`
* `category`
* `price`
* `tags`
* `monthly_sales`

### ORDERS

* `order_id` — Primary Key
* `customer_id` — Foreign Key
* `product_id` — Foreign Key
* `order_date`
* `quantity`
* `meta_data`

## Assignment 11 — JSON & JSONB

This assignment focuses on working with JSONB data stored in the `orders` table.

The following queries were performed:

1. Extract the payment method from the order metadata
2. Extract the shipping city from nested JSON data
3. Find orders with pending or shipped status and display their payment method
4. Count orders grouped by payment method
5. Update the order status inside the JSONB data using `jsonb_set()`

## Assignment 12 — Arrays

This assignment focuses on working with PostgreSQL array data types, operators, functions, and array indexing.

The following queries were performed:

1. Find products that contain the `new` tag
2. Find products containing both `furniture` and `office` tags
3. Display the number of tags for each product
4. Display June sales using the sixth element of the `monthly_sales` array
5. Add the `clearance` tag to a product using `array_append()`

## Assignment 13 — Date & Time

This assignment focuses on using PostgreSQL date and time functions for analyzing order dates.

The following queries were performed:

1. Display the month name for each order
2. Count orders placed in each year
3. Find orders placed within the last 30 days from the most recent order date
4. Calculate the number of days since each customer's last order
5. Display the day of the week for each order

## SQL Concepts Used

The assignment covers the following SQL concepts:

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* JOIN
* Aggregate Functions
* COUNT()
* MAX()
* JSONB
* `->`
* `->>`
* `jsonb_set()`
* Array Data Types
* `ANY`
* `@>`
* `array_length()`
* Array Indexing
* `array_append()`
* Date & Time Functions
* `EXTRACT()`
* `TO_CHAR()`
* `CURRENT_DATE`
* `INTERVAL`
* Date Arithmetic
* JSONB Data Manipulation
* Array Data Manipulation

## Screenshots

Screenshots were taken for all 15 SQL queries along with their respective outputs.

### Assignment 11 — JSON & JSONB

* `Assignment-11-Q1-Payment-Method.png`
* `Assignment-11-Q2-Shipping-City.png`
* `Assignment-11-Q3-Pending-Shipped.png`
* `Assignment-11-Q4-Payment-Count.png`
* `Assignment-11-Q5-Update-Status.png`

### Assignment 12 — Arrays

* `Assignment-12-Q1-New-Products.png`
* `Assignment-12-Q2-Furniture-Office.png`
* `Assignment-12-Q3-Tag-Count.png`
* `Assignment-12-Q4-June-Sales.png`
* `Assignment-12-Q5-Add-Clearance-Tag.png`

### Assignment 13 — Date & Time

* `Assignment-13-Q1-Month-Name.png`
* `Assignment-13-Q2-Orders-Per-Year.png`
* `Assignment-13-Q3-Last-30-Days.png`
* `Assignment-13-Q4-Days-Since-Order.png`
* `Assignment-13-Q5-Day-Of-Week.png`

## SQL File

A single SQL file contains all **15 queries**, clearly organized according to Assignment and Question.

### SQL File

`order3_db.sql`

## Tools Used

**PostgreSQL**

**psql Terminal**

## Deliverables

The final submission contains:

1. SQL file containing all 15 queries
2. Screenshots of the output for all 15 queries
3. README file
4. Required document containing the queries/results in the same order

## Learning Outcomes

Through this assignment, the following concepts are practiced:

* Working with JSONB data in PostgreSQL
* Extracting values from JSONB objects
* Accessing nested JSONB values
* Updating JSONB data using `jsonb_set()`
* Working with PostgreSQL arrays
* Searching arrays using `ANY`
* Comparing arrays using `@>`
* Finding array length
* Accessing array elements using indexing
* Adding elements to arrays using `array_append()`
* Extracting year and date information
* Formatting dates using `TO_CHAR()`
* Performing date arithmetic
* Working with intervals
* Calculating days since the last order
* Applying advanced SQL functions to real-world database data

---

## Author

**Sanika Kangane 👩🏻‍💻**
