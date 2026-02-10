--  1
select a.region,sum(b.sales) as total_sales
from customer as a
inner join sales as b
on a.customer_id=b.customer_id
group by a.region
order by 1;

--2
select a.product_name,sum(b.sales) as highest_sales
from product as a
inner join sales b
on a.product_id=b.product_id
group by a.product_name
order by highest_sales desc;

-- 3
select discount,avg(profit) as avg_profit,sum(profit) as total_profit,count(*) as no_of_orders
FROM sales
GROUP BY Discount
ORDER BY Discount;

-- 4
select a.segment,sum(b.sales) as total_sales
from customer as a
inner join sales as b
on a.customer_id=b.customer_id
group by a.segment;

-- 5
select a.category,sum(b.sales) as total_sales 
from product as a
inner join sales as b
on a.product_id=b.product_id
group by a.category;

-- 6
select ship_mode,count(*) no_of_shipping
from sales
group by ship_mode;

-- 7
select date_trunc('month',order_date) as month,sum(sales) as total_sales
from sales
group by date_trunc('month', order_date)
order by month;

-- 8
select state,count(distinct customer_id) as no_of_cus
from customer
group by state;

-- 9
select a.customer_id,sum(b.sales) as top_sales
from customer as a
inner join sales b
on a.customer_id=b.customer_id
group by a.customer_id
order by top_sales desc limit 5;

-- 10
select a.sub_category,sum(b.sales) as total_salesby_subcategory
from product as a
inner join sales as b
on a.product_id=b.product_id
group by 1;

