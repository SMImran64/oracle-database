

create table emp1287829(
e_id number(7) constraint e_id_pk primary key,
e_name varchar2(30) not null,
salary number (8,2) not null,
hire_date date  not null,
address varchar(25) not null
);

DESCRIBE emp1287829;

SELECT
    * FROM emp1287829;