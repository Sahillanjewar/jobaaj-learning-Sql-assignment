-- 1

select age(current_date,'1939-04-06');

-- 2

select extract(month from order_date) as month_n,
sum(sales) as total_sales
from sales
where product_id in(select product_id from product where sub_category='Chairs')
group by month_n
order by month_n;
