-- --List all employee first and last names only that live in Calgary.
select first_name, last_name from employee where city like 'Calgary';
-- Find the birthdate for the youngest employee.
select max(birth_date) from employee;
--or--------------------------------
select * from employee order by birth_date desc limit 1;
-- Find the birthdate for the oldest employee.
select min(birth_date) from employee;
--or--------------------------------
select * from employee order by birth_date limit 1;
-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
select employee_id from employee where first_name = 'Nancy' and last_name = 'Edwards';
select * from employee where reports_to = 2;
-- Count how many people live in Lethbridge.
select count(*) from employee where city like 'Lethbridge';