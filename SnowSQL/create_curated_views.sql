set database_name = 'GOINGDATAWAY_SALES';
set schema_name = 'CURATED';

Use database identifier($database_name);
Use schema identifier($schema_name);

CREATE VIEW IF NOT EXISTS customer_monthly_sales_2019_view as
select c.CustomerID as cust_id, c.LastName as cust_last_name, c.FirstName as cust_first_name, year(s.date) as "YEAR", month(s.date) as "MONTH", sum(p.price) tot_amnt
from raw.sales s, raw.customers c,  raw.products p
where s.CustomerID = c.CustomerID
and s.ProductID = p.ProductID
and year(s.date) = 2019
group by c.CustomerID, c.LastName, c.FirstName, year(s.date), month(s.date);


CREATE VIEW IF NOT EXISTS top_ten_customers_amount_view as
select top 10 c.CustomerID as cust_id, c.LastName as cust_last_name, c.FirstName as cust_first_name, sum(p.price * p.quantity) tot_amnt_purchased
from raw.sales s, raw.customers c,  raw.products p
where s.CustomerID = c.CustomerID
and s.ProductID = p.ProductID
group by c.CustomerID, c.LastName, c.FirstName
order by sum(p.price) desc;

CREATE VIEW IF NOT EXISTS product_sales_view as
select s.OrderID, s.SalesPersonID as "SalesPerson ID",s.CustomerID as "Customer ID",s.ProductID as "Product ID"
,p.name as "Product Name", p.price as "Product Price", s.Quantity , (p.price * p.quantity) as "Total Sales Amount"
, s.Date as "Order Date", year(s.date) as "Sales Year", month(s.date) as "Sales Month"
from raw.sales s, raw.customers c,  raw.products p
where s.CustomerID = c.CustomerID
and s.ProductID = p.ProductID;


