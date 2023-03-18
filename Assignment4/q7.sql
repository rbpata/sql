--Customer and Package Table

select first_name,last_name,package.speed,package.monthly_payment
from customer
inner join package
on customer.pack_id = package.pack_id;