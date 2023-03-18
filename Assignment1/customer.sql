    --Customer Table

create table customer(
    customer_id number(3) primary key,
    first_name varchar2(30) not null,
    last_name varchar2(30) not null,
    birth_date date,
    join_date date,
    city varchar2(30),
    state varchar2(30),
    street varchar2(100),
    main_phone_no varchar2(13),
    secondary_phone_no varchar2(13),
    fax varchar2(13),
    monthly_discount number(5,2),
    pack_id number(3) references package(pack_id)
);