create database analytics_db

use analytics_db

create table sales(
order_id int primary key,
customer_name varchar(100),
region varchar(50),
product varchar(100),
quantity int,
sales_amount DECIMAL(10,2)
)

INSERT INTO sales VALUES
(1, 'Aisha Rahman', 'North', 'Laptop', 2, 1800.00),
(2, 'Daniel Smith', 'South', 'Phone', 1, 700.00),
(3, 'Maria Khan', 'East', 'Tablet', 3, 900.00),
(4, 'John Lee', 'West', 'Monitor', 2, 500.00),
(5, 'Sara Ahmed', 'North', 'Keyboard', 5, 250.00)

select * from sales

INSERT INTO sales VALUES
(6, 'Emily Davis', 'South', 'Mouse', 4, 120.00),
(7, 'Michael Brown', 'East', 'Laptop', 1, 950.00),
(8, 'Fatima Noor', 'West', 'Phone', 2, 1400.00),
(9, 'Chris Wilson', 'North', 'Tablet', 2, 600.00),
(10, 'Nadia Islam', 'South', 'Monitor', 1, 300.00),
(11, 'Ryan Taylor', 'East', 'Keyboard', 3, 150.00),
(12, 'Olivia Martin', 'West', 'Laptop', 2, 2000.00),
(13, 'Hasan Chowdhury', 'North', 'Mouse', 6, 180.00),
(14, 'Sophia Lewis', 'South', 'Phone', 3, 2100.00),
(15, 'David Clark', 'East', 'Tablet', 1, 350.00),
(16, 'Amira Hassan', 'West', 'Monitor', 4, 1000.00),
(17, 'Ethan Walker', 'North', 'Keyboard', 2, 100.00),
(18, 'Layla Karim', 'South', 'Laptop', 1, 1100.00),
(19, 'James Anderson', 'East', 'Phone', 2, 1600.00),
(20, 'Zara Ali', 'West', 'Mouse', 5, 150.00)


select * from sales

select product, sales_amount from sales

select * from sales where region ='North'

select * from sales where product ='Laptop'

select * from sales order by sales_amount desc

select * from sales order by customer_name 

select sum(sales_amount) as total_sales from sales

select count(order_id) as total_order from sales

select region, sum(sales_amount) as total_sales from sales group by region

select product, sum(sales_amount) as total_sales from sales group by product

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100)
)

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics'),
(102, 'Phone', 'Electronics'),
(103, 'Tablet', 'Electronics'),
(104, 'Monitor', 'Accessories'),
(105, 'Keyboard', 'Accessories'),
(106, 'Mouse', 'Accessories');

select * from products

select * from sales
select * from products

select sales.order_id, sales.product, products.category, sales.sales_amount from sales inner join products
on sales.product = products.product_name

select products.category, sum(sales.sales_amount) as total_sales from sales inner join products on sales.product= products.product_name
group by products.category

select product, sum(sales_amount) as highest_selling_product from sales group by product order by sum(sales_amount) desc
limit 1