--Customer and Package Table

select first_name,last_name,customer.pack_id,package.speed from customer
inner join package
on customer.pack_id = package.pack_id;