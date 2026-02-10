create view Daily_Billing as
select order_line,product_id,sales,discount
from sales
where order_date in(select min(order_date) from sales);

select * from Daily_Billing;

drop view Daily_Billing;
