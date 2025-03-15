--used union 

select job_id
from employees
union 
select job_id
from retired_employees;

--used union all
select job_id, employee_id
from employees
union all
select job_id, employee_id
from retired_employees
order by job_id;

--used intersection

SELECT manager_id,department_id
from employees
INTERSECT
select manager_id,department_id
from retired_employees;

--used minus clause

select employee_id,job_id
from employees
where department_id=80
minus
select employee_id,job_id
FROM retired_employees
where department_id =90;



