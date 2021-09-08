--Create person Table
create table person(person__id serial primary key, name varchar(50), age integer, height_cm integer, city varchar(60), favorite_color varchar(20));
-- add 5 people
insert into person(name, age, height_cm, city, favorite_color)values('Nate Dawg', 27, 181, 'Instanbul', 'Green');
insert into person(name, age, height_cm, city, favorite_color)values('Emma Dawg', 4, 100, 'Moscow', 'Purple');
insert into person(name, age, height_cm, city, favorite_color)values('Scottie Dawg', 2, 90, 'Tokyo', 'Yellow');
insert into person(name, age, height_cm, city, favorite_color)values('Marissa Dawg', 29, 170, 'Oslo', 'Orange');
insert into person(name, age, height_cm, city, favorite_color)values('Genne Dawg', 30, 175, 'Ulaanbaatar', 'Dark Blue');
--select all people by height from tallest to shortest
select * from person order by height_cm desc;
--select all people by height from shortest to tallest
select * from person order by height_cm;
--select all people by age from oldest to youngest
select * from person order by age desc;
--select all people by age where age is older than 20
select * from person where age > 20;
--select all people who are 18
select * from person where age = 18;
--Select all the people in the person table that are less than 20 and older than 30
select * from person where age < 20 and age > 30;
--Select all the people in the person table that are not 27 (use not equals)
select * from person where age <> 27;
--Select all the people in the person table where their favorite color is not red
select * from person where favorite_color <> 'Red';
--Select all the people in the person table where their favorite color is not red and is not blue
select * from person where favorite_color <> 'Red' and favorite_color <> 'Blue';
--Select all the people in the person table where their favorite color is orange or green
select * from person where favorite_color = 'Orange' or favorite_color = 'Green';
--Select all the people in the person table where their favorite color is orange, green or blue (use IN)
select * from person where favorite_color in('Orange', 'Blue', 'Green');
--Select all the people in the person table where their favorite color is yellow or purple (use IN)
select * from person where favorite_color in('Yellow', 'Purple');