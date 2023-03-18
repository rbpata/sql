--Customer Table

select first_name,last_name,pack_id,monthly_discount
from customer
where monthly_discount < 30;