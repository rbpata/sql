-- Customer Table

select last_name,length(last_name) as String_length
from customer
where length(last_name)>9;