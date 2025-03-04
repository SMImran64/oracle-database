
--used natural join

SELECT first_name,last_name,salary,location_id
from employees 
natural JOIN departments
natural join locations
NATURAL JOIN countries;

--used on clause

select e. first_name, d. department_id, d.department_name, l.location_id, c.country_id,l.city, r.region_id

from employees e
join departments d on d.department_id = e.department_id
join locations l on l. location_id = d. location_id
join countries c on c.country_id = l.country_id
join regions r on r.region_id = c.region_id;


