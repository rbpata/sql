-- Customer Table

select customer_id,lower(first_name),upper(last_name)
from customer
where customer_id between 80 and 150;