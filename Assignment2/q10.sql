--Customer Table

select * from customer
where last_name like '%i%' or  last_name like  '%j%'  or  last_name like '%h%'
order by monthly_discount desc;