-- Customer Table

-- select CONCAT(CONCAT(first_name,' '),last_name) as FULL_NAME,CONCAT(CONCAT(main_phone_no,', '),secondary_phone_no) as CONTACT_DETAILS
-- from customer;

select first_name || ' ' || last_name as FULL_NAME,
        main_phone_no || ' ' || secondary_phone_no as CONTACT_DETAILS
from customer;