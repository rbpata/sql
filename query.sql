assignment-4
1
select customer_id,lower(first_name),upper(last_name)
from customer
where customer_id between 1 and 3;

2

select last_name,first_name,substr(first_name,1,1) || substr(last_name,1,3) || '@mymail,com' as Email
from customer;
 
select last_name,first_name,substr(first_name,1,1) || substr(last_name,-3,3) || '@mymail,com' as Email
from customer;

3

select last_name,length(last_name) as length
from customer
where length(last_name) > 4;

4

select first_name,last_name,main_phone_no,replace(main_phone_no,'123','$$$')
from customer;

select first_name,last_name,main_phone_no,replace(main_phone_no,'123','$$$')
from customer
where substr(main_phone_no,1,3) = '123';

select first_name,last_name,main_phone_no,regexp_replace(main_phone_no,'^123','$$$')
from customer;

5

select first_name,monthly_discount,monthly_discount+(monthly_discount*0.197)
                                ,round(monthly_discount+(monthly_discount*0.197)) as a
                                ,FLOOR(monthly_discount+(monthly_discount*0.197)) as b
                                ,CEIL(monthly_discount+(monthly_discount*0.197)) as c
from customer;

6

select first_name,join_date,join_date - 10,add_months(join_date,1),months_between(sysdate,join_date)
from customer;

7

select first_name,birth_date,extract(year from sysdate) - extract(year from birth_date) as age 
from customer
where extract(year from sysdate) - extract(year from birth_date) > 10;

8

select * from customer
where sysdate = birth_date;

9 

select first_name,join_date,extract(year from sysdate) - extract(year from join_date)
from customer
where extract(year from sysdate) - extract(year from join_date) >=3;

10

select cast(first_name || ' ' || join_date as varchar2(30)) ,cast(last_name || ' ' || monthly_discount as varchar2(30))
from customer;

11

select last_name,upper(state) || ' ' || cast(customer_id as varchar2(10)) , join_date || ' ' || birth_date
from customer
where substr(last_name,1,1) = 'p' or substr(last_name,1,1) = 'r';

12

select min(last_name)
from customer;

13

select avg(monthly_payment)
from package;

14

select max(last_name)
from customer;

16

select count()
from customer;

19

select count(fax)
from customer
where fax is not null;

20

select count(fax)
from customer
where fax is null;

22

select state,count(customer_id)
from customer
group by state;

23

select speed,avg(monthly_payment)
from package
group by speed;

Assignment - 4

1

select * from package
inner join customer
on customer.pack_id = package.pack_id;

2

select first_name,last_name,customer.pack_id,speed
from customer
inner join package
on package.pack_id = customer.pack_id;

3

select first_name,last_name,customer.pack_id,speed
from customer
inner join package
on package.pack_id = customer.pack_id
where customer_id in (22,27);

4

select * from package
inner join sectors
on sectors.sector_id = package.sector_id;

8

select last_name,first_name,join_date,customer.pack_id,speed,sectors.sector_name
from customer
join package
on package.pack_id = customer.pack_id
join sectors
on sectors.sector_id = package.sector_id
where sectors.sector_name = 'trade' and extract(year from join_date) = '2022';

10

select * from customer
full outer join package
on  customer.pack_id = package.pack_id ; 

11

select first_name,last_name,p.speed,p.monthly_payment
from customer c
-- inner join package p
-- left join package p
full join package p
on c.pack_id = p.pack_id;

15

select c1.last_name,c1.first_name,c1.pack_id
from customer c1
inner join customer c2
on c2.first_name = 'ram' and c2.last_name = 'pata' and c1.pack_id = c2.pack_id;

18

select first_name,last_name,city,state
from customer
where state = (select state from customer where customer_id = 2);

19

select  pack_id,speed,sector_id
from package
where sector_id = (select sector_id from package where pack_id = 12);

20

select first_name,last_name,join_date 
from customer
where join_date > (select join_date from customer where customer_id = 3);

21

select first_name,last_name,join_date
from customer
where extract(month from join_date) = (select extract(month from join_date) from customer where customer_id = 373) and
      extract(year from join_date) = (select extract(year from join_date) from customer where customer_id = 373);

22

select first_name,last_ name,city,state,pack_id 
from customer
where pack_id in (select pack_id from package where speed = 20);

23

select pack_id,speed,strt_date
from package 
where extract(year from strt_date) = (select extract(year from strt_date) from package where pack_id = 14); 

24

select first_name,monthly_discount,pack_id,main_phone_no,secondary_phone_no
from customer
where pack_id in (select pack_id from package where sector_id in (select sector_id from sectors where sector_name = 'trade'));

25

select first_name,monthly_discount,pack_id
from customer
where pack_id in (select pack_id from package where monthly_payment > (select avg(monthly_payment) from package));

26
select first_name,city,state,birth_date,monthly_discount
from customer
where birth_date = (select birth_date from customer where customer_id = 179) and monthly_discount > (select monthly_discount from customer where customer_id = 107);

27

select * from package
where speed =  (select speed from package where pack_id = 13) and monthly_payment > (select monthly_payment from package where pack_id = 15);

