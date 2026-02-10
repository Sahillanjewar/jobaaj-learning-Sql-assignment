--   1

select customer_id,
random() as lucky_customer from customer
order by lucky_customer limit 5;


--  2

select sum(floor(sales)) as lower_int_values,
sum(ceil(sales)) as higher_int_values,
sum(round(sales)) as round_sales from sales;
