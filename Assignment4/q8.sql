--Customer and Package Table

select first_name,customer.monthly_discount,package.pack_id,customer.secondary_phone_no
from customer
join package
on customer.pack_id = package.pack_id
join sectors
on package.sector_id = sectors.sector_id
where sectors.sector_name = 'Bussiness';