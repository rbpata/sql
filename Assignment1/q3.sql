--Customer Table

select first_name,last_name,join_date,monthly_discount,monthly_discount+(monthly_discount*0.2) as Addition,monthly_discount-(monthly_discount*0.2) as sub
from customer;