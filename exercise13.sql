select customer_name, sales, city from
(select a.customer_name, SUM(b.sales)as sales, max(a.city) as city
from customer as a 
JOIN sales as b on a.customer_id=b.customer_id 
group by a.customer_name) as fc 
WHERE fc.sales>1000 and fc.city='New York City' or fc.sales<500 and fc.city='Mesa';
