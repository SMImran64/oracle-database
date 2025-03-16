create SEQUENCE emp_empid_seq
Start with 5100
increment by 100
maxvalue 999999
nocache
nocycle;

select *from emp; 


insert into emp values(emp_empid_seq.nextval,'Sathe',20000,'sathe@gmail.com',120,'Sathe');




create  view empvu80
as select employee_id,first_name,department_id,salary
from employees
where department_id = 80;

select *from empvu80;

 