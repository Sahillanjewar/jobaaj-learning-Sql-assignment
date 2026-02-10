select * from customer_20_60
select * from sales_2015

select a.state,sum(b.sales) as total_sales
from customer_20_60 as a
right join sales_2015 as b
on a.customer_id=b.customer_id
group by 1;

select * from product;
select * from sales;

select a.product_id,a.product_name,a.category,sum(b.sales) as total_sales,sum(b.quantity) as total_quantity_sold
from product as a
right join sales as b
on a.product_id=b.product_id
group by 1;
