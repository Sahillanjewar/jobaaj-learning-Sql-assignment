--  1

select * from(
select *,dense_rank() over(partition by state order by total_sales desc) as  ranks
from(select customer_name,state,sum(sales) as total_sales from customer as b left join sales as a on
b.customer_id=a.customer_id group by 1,2 order by 3 desc) as rankedcust) as top_1 where ranks=1;


--  2

select * from (select *,dense_rank() over(order by total_sales desc) ranks
from(
select sub_category,sum(sales) as total_sales from product as b right join sales as a on
b.product_id=a.product_id group by sub_category order by total_sales desc
) as salesby_product
) as top_5 where ranks<=5;

