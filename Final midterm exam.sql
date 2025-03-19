--question no--01

CREATE table emp1287829(
eid number(6) CONSTRAINT emp1287829_eid_pk PRIMARY KEY,
ename varchar2(30),
salary number(8,2),
hire_date date,
address varchar2(60));

--question no--02

alter table emp1287829
ADD(department_id number(6),dept_name VARCHAR2(30));

--question no--03

INSERT into emp1287829 values(01,'Imran',100000,'01-sep-2025','Azimpur',80,'JAVA');
INSERT into emp1287829 values(02,'Imran',100000,'01-sep-2025','Azimpur',80,'JAVA');
INSERT into emp1287829 values(03,'Imran',100000,'01-sep-2025','Azimpur',80,'JAVA');
INSERT into emp1287829 values(04,'Imran',100000,'01-sep-2025','Azimpur',80,'JAVA');
INSERT into emp1287829 values(05,'Imran',100000,'01-sep-2025','Azimpur',80,'JAVA');

--question no-04
create VIEW empvu 
as select ename,dept_name,salary
from emp1287829;

--question no-05

create sequence emp_eid_seq
start with 106
increment by 1
maxvalue 9999
nocache
nocycle;

--question no-06

insert into emp1287829(eid,ename,salary,hire_date,address,department_id,dept_name)
select emp_eid_seq.nextval, first_name,salary,hire_date,country_name,department_id,department_name
from employees natural join departments natural join locations natural join countries
where department_id in (select employee_id
                            from employees
                                where salary>4000);


select *from emp1287829;
drop table emp1287829; 
drop VIEW empvu;
drop  sequence emp_eid_seq;