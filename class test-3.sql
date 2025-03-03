--question-01

select first_name ,hire_date
from employees
where hire_date between '01-jan-2002' and  '31-dec-2005';  

 



--question -2


select first_name ,hire_date,job_id
from employees
where job_id like 'IT_PROG'
        OR job_id LIKE 'SA%';

--QUESTION-3

select first_name ,hire_date,job_id
FROM employees
where hire_date> '01-jan-2008';

--question-4
select  *from employees
where employee_id like '150'
    or employee_id like '160';

--question-5

select first_name,salary,commission_pct,hire_date
from employees
 where salary<10000;





 
