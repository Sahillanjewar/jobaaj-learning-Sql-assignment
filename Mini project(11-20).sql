-- 11
select a.category,a.product_name,sum(b.sales) as total_sales,
rank() over(partition by a.category order by sum(b.sales) desc) as sales_rank
from product as a
inner join sales as b
on a.product_id=b.product_id
group by a.category,a.product_name
order by a.category,sales_rank;

-- 12
select a.order_date,a.product_id,b.product_name,a.sales,sum(a.sales)
over (partition by b.product_name order by a.order_date) as cumulative_sale
from sales as a
inner join product as b
on a.product_id=b.product_id
order by a.order_date;

-- 13
with customerprofitbyregion as (select a.region,a.customer_id,a.customer_name,
sum(b.profit) as total_profit,
rank() over (partition by a.region order by sum(b.profit) desc) as profit_rank
from customer as a
inner join sales as b
on a.customer_id=b.customer_id
group by a.region,a.customer_id,a.customer_name)
select region,customer_id,customer_name,total_profit,profit_rank
from customerprofitbyregion
where profit_rank <=3
order by region,profit_rank;

-- 14
with customersales as (
select a.segment,a.customer_id,a.customer_name,sum(b.sales) as total_sales
from customer as a
inner join sales as b
on a.customer_id=b.customer_id
group by a.segment,a.customer_id,a.customer_name),
rankedcustomers as (
select *,avg(total_sales)over (partition by segment) as segment_avg_sales,
row_number() over (partition by segment order by total_sales desc) as sales_rank
from customersales)
select segment,customer_id,customer_name,total_sales,segment_avg_sales,sales_rank
from rankedcustomers
order by segment, sales_rank;

-- 15
select a.order_date,a.product_id,b.product_name,a.sales,
lag(a.sales) over (partition by b.product_id
order by a.order_date) as previous_day_sales,a.sales - lag(a.sales) 
over(partition by a.product_id order by a.order_date) as sales_difference
from sales as a
inner join product as b
on a.product_id=b.product_id
order by a.product_id,a.order_date;

-- 16
select b.region,sum(a.sales) as region_sales,sum(a.sales) * 100.0 / sum(sum(a.sales))
over () as percentage_of_total_sales
from sales as a
inner join customer as b
on a.customer_id=b.customer_id
group by b.region
order by percentage_of_total_sales desc;

-- 17
select a.order_date,a.product_id,b.product_name,a.sales,avg(a.sales)
over (partition by a.product_id order by a.order_date) as moving_avg
from sales as a
inner join product as b
on a.product_id=b.product_id
order by a.product_id,a.order_date;

-- 18
select a.order_id,b.customer_id,b.customer_name,a.sales,max(a.sales)
over(partition by b.customer_id) as max_sales,
min(a.sales) over (partition by b.customer_id) as min_sales
from sales as a
inner join customer as b
on a.customer_id=b.customer_id
order by b.customer_id,a.sales desc;

-- 19
select a.order_date,b.customer_id,b.customer_name,a.profit,sum(a.profit)
over (partition by b.customer_id order by a.order_date) as running_total_profit
from sales as a
inner join customer as b
on a.customer_id=b.customer_id
order by b.customer_id,a.order_date;

-- 20
select a.order_id,a.ship_mode,a.sales,
dense_rank() over (partition by a.ship_mode order by a.sales desc) as sales_rank
from sales as a
order by a.ship_mode,sales_rank;
