--Package Table

create table package(
    pack_id number(3) primary key,
    speed number(3) check (speed<=50),
    strt_date date,
    monthly_payment number(8,2),
    sector_id number(3) references sectors(sector_id)
);