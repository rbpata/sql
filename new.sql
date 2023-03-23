-- 1. Display the customer number, first name in lowercase and last name in uppercase for all
-- customers whose customer number is in the range of 80 and 150.

select customer_id, lower(first_name),upper(last_name) 
from customer where customer_id between 80 and 150;

-- Generating Email Addresses
-- a. For all customers – display the last name, first name and email address. The email address
-- will be composed from the first letter of first name concatenated with three first letters of
-- last name concatenated with the string “@mymail.com” (For example : Ram Kedem →
-- RKED@mymail.com).

select last_name, first_name ,substr(first_name,1,1) || substr(last_name,1,3 ) || '@mymail.com' as email
from customer; 

-- b. For all customers – display the last name, first name and email address. The email address
-- will be composed from the first letter of first name concatenated with three last letters of
-- last name concatenated with the string “@mymail.com” (For example : Ram Kedem →
-- RDEM@mymail.com).

-- Display the last name and the length of the last name for all customers where last name’s length is
-- greater than 9 characters.
select last_name, length(last_name) from customer  
where length(last_name)>9; 


-- Phone Numbers :
-- a. Display the first name, last name, main phone number and a new phone number using the
-- REPLACE function. In the new phone number replace all occurrences of “515” with “$$$”.

select first_name,last_name,main_phone_no,replace(main_phone_no,'123','$$$')
as new_num
from customer;
-- b. Display the first name, last name, main phone number and new phone number using the
-- REPLACE function. In the new phone number replace all prefixes of “515” with “$$$” (only if
-- the first 3 digits of the phone number contains the digits “515” replace those digits with
-- “$$$”).

select first_name,last_name,main_phone_no,replace(main_phone_no,'123','$$$')
as new_num
from customer
where substr(main_phone_no,1,3) = '123';


-- Write a query to display first name, last name, package number and internet speed for all
-- customers whose package number equals 22 or 27. Order the query in ascending order by last
-- name.

select first_name,last_name, package.pack_id , package.speed 
from customer 
join package on package.pack_id = customer.pack_id
where package.pack_id in(22,27)
order by last_name asc;


-- Display the package number, internet speed, monthly payment and sector name for all packages
-- (Packages and Sectors tables).

select p.pack_id,speed,monthly_payment,sectors.sector_name
from package p
join sectors
on sectors.sector_id = p.sector_id;


-- Display the customer name, package number, internet speed, monthly payment and sector
-- name for all customers in the business sector (Customers, Packages and Sectorstables).

select first_name,last_name, package.speed,package.monthly_payment,Sectors.sector_name
from customer
join package on customer.pack_id = package.pack_id
join sectors on package.sector_id = sectors.sector_id
where upper(sectors.sector_name) = 'TRADE';

-- Display the first name, last name, internet speed and monthly payment for all customers. Use
-- INNER JOIN to solve this exercise.

select first_name,last_name,package.speed,package.monthly_payment
from customer
INNER join package on customer.pack_id = package.pack_id;


-- Display the first name, last name, city and state for all customers who live in the same state as
-- customer number 170 (Customers table).
select first_name,last_name,city,state 
from customer 
where state = (select state from customer where customer_id = 3);


-- Display the first name, last name and join date for all customers who joined the company after
-- customer number 540 (Customers table).

select first_name,last_name,join_date
from customer
where join_date > (select join_date from customer where customer_id = 3) ;


-- Display the first name, last name, city, state and package number for all customers whose
-- internet speed is “5Mbps” (Customers and Packages table).

select first_name,last_name,city,state,pack_id
from customer
where pack_id in (select pack_id from package where speed = 50);

-- 25. Display the first name, monthly discount and package number for all customers whose monthly
-- payment is greater than the average monthly payment (Customers and Packagestable).

select first_name,monthly_discount,pack_id
from customer
where pack_id in (select pack_id from package where monthly_payment > (select avg(monthly_payment) from package));

-- From Customers table, for all customers, display the first name, join date, join date minus 10 days,
-- join date plus one month and the date difference between join date and current date.

select first_name,join_date,join_date -10,add_months(join_date,1),join_date - sysdate
from customer;