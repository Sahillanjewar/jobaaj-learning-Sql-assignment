select a.customer_id,b.customer_id,b.customer_name,a.order_line,a.product_id,a.sales,a.quantity
from sales as a
full join customer as b
on a.customer_id=b.customer_id
order by a.customer_id,b.customer_id;
