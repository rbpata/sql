--Package and Sector Table

select pack_id,speed,monthly_payment,sectors.sector_name
from package
join sectors
on package.sector_id = sectors.sector_id;