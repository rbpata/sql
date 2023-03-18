select first_name,last_name,customer.pack_id,package.speed from customer c
join package on package.pack_id= customer.pack_id
where customer.pack_id in (11,12)
order by last_name asc;