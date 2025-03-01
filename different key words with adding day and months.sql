--question-1
select last_name,salary
from employees
WHERE salary not between 5000 and 12000;
--question-2 
SELECT last_name,department_id
from employees
where department_id like  20 or department_id like 90;
--question-3
select last_name as "employee",salary as "Monthly salary",department_id
from employees

where salary  between 5000 and 12000
and department_id =20 or department_id=50;

--question-4

select last_name,salary,commission_pct
from employees
where commission_pct is not null
order by salary desc;



--question-5

select last_name,salary,commission_pct
from employees
WHERE commission_pct = .2;

--question -6

select employee_id, last_name, salary, salary +salary*0.155 as "New Salary"
from employees;







