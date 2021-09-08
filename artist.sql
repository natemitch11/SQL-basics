-- add 3 new artists to the pre-existing table
insert into artist(name) values('DJ KHALED');
insert into artist(name) values('Wardruna');
insert into artist(name) values('Pablo Picasso');
--select 10 artist in reverse alphabetical orders
select * from artist order by name desc limit 10;
--Select 5 artists in alphabetical order
select * from artist order by name limit ;
--Select all artists that start with the word ‘Black’
select * from artist where name like 'Black%';
--Select all artists that contain the word ‘Black’
select * from artist where name like '%Black%';