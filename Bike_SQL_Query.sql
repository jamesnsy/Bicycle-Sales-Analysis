/* I would like to get the following information for each order:
1) customer's full name
2) customer's location (city and state)
3) order date
4) total units sold 
5) total revenue generated 
6) product name of the bike sold 
7) cateogry name
8) store name
9) sales representative in charge of that order
10) brand name

To query for these info, I have to join 7 different tables. */ 

-- Queries using SELECT statement
SELECT
	ord.order_id,
	CONCAT(cus.first_name,' ',cus.last_name) AS customers,
	cus.city,
	cus.state,
	ord.order_date,
	SUM(ite.quantity) AS total_units,
	SUM(ite.quantity * ite.list_price) AS revenue,
	pro.product_name,
	cat.category_name,
	bds.brand_name,
	sto.store_name,
	CONCAT(sta.first_name,' ', sta.last_name) AS sales_rep

-- Combining sales.orders and sales.customers table using inner join 
FROM sales.orders AS ord
INNER JOIN sales.customers AS cus
ON ord.customer_id = cus.customer_id

-- Further combine sales.order_items table using inner join 
INNER JOIN sales.order_items AS ite
ON ord.order_id = ite.order_id

-- Further combine production.products table using inner join
INNER JOIN production.products AS pro
ON ite.product_id = pro.product_id

-- Further combine production.categories table using inner join
INNER JOIN production.categories AS cat
ON pro.category_id = cat.category_id

-- Further combine production.brands table using inner join
INNER JOIN production.brands AS bds
ON pro.brand_id = bds.brand_id

-- Further combine sales.stores table using inner join
INNER JOIN sales.stores AS sto
ON ord.store_id = sto.store_id

-- Further combine sales.staffs table using inner join
INNER JOIN sales.staffs AS sta
ON ord.staff_id = sta.staff_id

-- Aggregate using GROUP BY
GROUP BY
	ord.order_id,
	CONCAT(cus.first_name,' ',cus.last_name),
	cus.city,
	cus.state,
	ord.order_date,
	pro.product_name,
	cat.category_name,
	bds.brand_name,
	sto.store_name,
	CONCAT(sta.first_name,' ', sta.last_name);
