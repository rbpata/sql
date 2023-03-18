--Customer and Package Table

select first_name,last_name,customer.pack_id,package.speed
from customer
inner join package
on package.pack_id = customer.pack_id
where customer.pack_id in (22,27)
order by last_name asc;