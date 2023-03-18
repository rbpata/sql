--Customer and Package Table

select * from customer
inner join package
on customer.pack_id = package.pack_id;