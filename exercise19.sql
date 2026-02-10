--  1

select * from customer
where customer_name ~*'^[a-z]{5}\s(a|b|c|d)[a-z]{4}$';

--  2

create table zipcode(zip varchar);
insert into zipcode values (234432);
insert into zipcode values (23345);
insert into zipcode values ('sdfe4');
insert into zipcode values ('123&3');
insert into zipcode values (67424);
insert into zipcode values (7895432);
insert into zipcode values (12312);

select * from zipcode;

select * from zipcode where zip ~*'^[0-9]{5,6}$';
