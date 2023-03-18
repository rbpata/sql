--Pack_Grades Table

create table pack_grades(
    grade_id number(3) primary key,
    grade_name varchar2(30) not null,
    min_price number(8,2),
    max_price number(8,2)
);