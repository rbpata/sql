--Customer,Package and Sector Table

select first_name,customer.pack_id,package.speed,package.monthly_payment,sectors.sector_name
from customer
join package
on customer.pack_id = package.pack_id
join sectors
on package.sector_id = sectors.sector_id;   