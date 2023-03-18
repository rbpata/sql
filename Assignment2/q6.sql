--Customer Table

select first_name,state,city,pack_id
from customer
where pack_id not in (27,10,3);