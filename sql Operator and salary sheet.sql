selec * from  employees
select first_name||' '||last_name as "Full Name"
from employees

select first_Name||' '||Last_name as "Full Name", salary as "Basic Salary",salary*0.50 as "House Rent",salary*0.1 as "Travell Allowance"
,salary*0.1 as "Medical Allowance",salary*0.10 as "Insurrance Allowance",salary*0.15 as "Provident Fund",
salary+(salary*0.50)+(salary*0.1)+(salary*0.1)+(salary*0.10)-(salary*0.15) as "Net Monthly Salary",
(salary+(salary*0.50)+(salary*0.1)+(salary*0.1)+(salary*0.10)-(salary*0.15))*12 as " Net Yearly Salary"

from employees;

--tale colmn & data type--

DESCRIBE employees; 

--as used na korleo hbe
select salary "Monthly"
from employees

-- used where 
select employee_id,last_Name, job_id,department_id,salary,hire_date  
from employees
--where department_id = 90;
--where salary <=5000;

--where hire_date between '17-oct-03' and '21-sep-05';

where hire_date in ('17-oct-03','21-sep-05');

--used like oparator
select first_name, last_name 
   FROM employees
   WHERE first_name like 'A%';
   
--   used and operator
select first_name,last_name 
FROM employees
WHERE first_name like 'A%' and last_name like '%a';

--used null operator
select first_name, last_name,salary,commission_pct
   FROM employees 
   WHERE commission_pct is not null;


