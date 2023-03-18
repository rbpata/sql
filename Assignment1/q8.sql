-- Customer Table

select first_name,last_name,monthly_discount,CONCAT(CONCAT(street,' ,'),city) as STREET_CITY
from customer;