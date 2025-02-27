select last_name,department_id,salary,hire_date
from employees
ORDER BY hire_date DESC, department_id;


select  last_name,department_id,salary
from employees
order by 3 DESC
 OFFSET 5 ROWS FETCH next 5 rows only;





