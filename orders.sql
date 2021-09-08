--create table
create table orders(order_id SERIAL PRIMARY KEY, person_id varchar(20), product_name varchar(20), product_price int, quantity int);
--create orders for your Table
insert into orders(person_id, product_name, product_price, quantity) values('Nate', 'Pokeballs', 200, 15);
insert into orders(person_id, product_name, product_price, quantity) values('Genne', 'Potions', 100, 15);
insert into orders(person_id, product_name, product_price, quantity) values('Nate', 'Potions', 100, 6);
insert into orders(person_id, product_name, product_price, quantity) values('Scottie', 'Great Balls', 600, 10);
insert into orders(person_id, product_name, product_price, quantity) values('Marissa', 'Ultra Balls', 1200, 10);
--Select all the records from the orders table
select * from orders;
--Calculate the total number of products ordered
select sum(quantity) from orders; 
--Calculate the total order price
select quantity * product_price from orders;
--Calculate the total order price by a single person_id
select quantity * product_price from orders where person_id = 'Nate';