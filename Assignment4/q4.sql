--Package and Sector Table

select * from package
inner join sectors
on package.sector_id = sectors.sector_id;