-- 1

select max(length(product_name)) as max_len_name from product;

-- 2

select product_name,sub_category,category,('product_name' ||','|| 'sub_catergory'||','|| 'category') as product_concate from product;

-- 3
select * from product;
select product_id,substring(product_id for 3) as short_cate,substring(product_id from 5 for 2) as short_sub_cate,substring(product_id from 8) as id from product;

--4

select string_agg(product_name,',') as product_list
from product
where sub_category='Chairs' or sub_category='Tables';
