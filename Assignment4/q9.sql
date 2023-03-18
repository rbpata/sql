--Customer and Package Table

select first_name,monthly_discount,customer.pack_id
from customer
join package
on customer.pack_id = package.pack_id
where package.monthly_payment > (select avg(monthly_payment) from package);