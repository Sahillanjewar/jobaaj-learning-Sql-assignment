select * from sales;
--	Total sales (in $), sorted in descending order
select product_id,sum(sales) as total_sales
from sales
group by 1 order by 2 desc;

--	Total sales quantity
select product_id,sum(quantity) as total_quantity
from sales
group by 1;

--	Number of orders

select product_id,count(order_id) as total_orders
from sales
group by 1;

--	Maximum sales value
select product_id,max(sales) as max_sales
from sales
group by 1 order by 2 desc;

--	Minimum sales value
select product_id,min(sales) as min_sales
from sales
group by 1 order by 2 asc;

--	Average sales value
select product_id,avg(sales) as avg_sales
from sales
group by 1;

--the list of product IDs where the quantity sold exceeds 10.
select product_id,sum(quantity) as total_quantity
from sales
group by 1
having sum(quantity)>10;
