-- the Product ID, Product Name, Sales Value, and Profit.

select product.product_id,product_name,sales,profit
from product inner join sales
on product.product_id=sales.product_id;

-- Query 2

select customer_name,city,sales
from customer inner join sales
on customer.customer_id=sales.customer_id;

select customer.customer_id,sum(sales.sales) as total_sales
from customer inner join sales
on customer.customer_id=sales.customer_id
group by customer.customer_id;
