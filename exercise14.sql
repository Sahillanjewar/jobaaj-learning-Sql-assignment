select a.customer_name, a.age, bc.* from customer as a
right join (select b.*, c.product_name, c.category from sales as b
            left join product as c
             on b.product_id = c.product_id) as bc
on a.customer_id = bc.customer_id;
