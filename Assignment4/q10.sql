--Customer Table

select first_name,city,state,birth_date,monthly_discount
from customer
where monthly_discount > (select monthly_discount from customer where customer_id = 2);
