--Sector Table

create table sectors(
    sector_id number(3) primary key,
    sector_name varchar2(30) unique 
);