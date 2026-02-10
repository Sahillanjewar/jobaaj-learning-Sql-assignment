select * from sales;

--the total sum of all sales values

select sum(sales) as total_sales from sales;

--the number of customers in the north region who are aged between 20 and 30.

select * from customer;
select count(customer_id) from customer where age>=20 and age<=30 and region='north';

--the average age of customers located in the east region.

select avg(age) as avg_age from customer where region='East';

--the minimum and maximum ages of customers from Philadelphia.

select min(age) from customer where city='Philadelphia';
select max(age) from customer where city='Philadelphia';
