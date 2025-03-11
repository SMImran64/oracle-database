SELECT last_name, hire_date
 FROM   employees 
WHERE  hire_date > ( 
                SELECT hire_date 
                    FROM   employees
                        WHERE  last_name = 'Davies'
                        )
     ORDER BY 1 ;
     
     
SELECT last_name, job_id, salary
 FROM   employees
 WHERE  job_id in  
(SELECT job_id
 FROM   employees
 WHERE  last_name = 'Taylor')
 AND
    salary >s

 (SELECT salary
 FROM   employees
 WHERE  last_name = 'Taylor'
 FETCH FIRST 1 ROWS ONLY);
     
     
   SELECT salary
 FROM   employees
 WHERE  last_name = 'Taylor'; 
 
 
-- Create a report that displays the employee number, 
-- last name, and salary of all 
-- employees who earn more than the average salary. 
-- Sort the results in ascending order by salary.
 
 Select employee_id, last_name, salary 
 from employees 
 where salary > (Select avg(salary)
 from employees)
 ORDER BY 3;
 
 
 Select avg(salary)
 from employees;
 
 
 
 
--Write a query that displays the employee number and
--last name of all employees who work in a department
--with any employee whose last name contains the letter
--"u".

Select employee_id, last_name
from employees 
where department_id in (Select department_id from employees
where last_name like '%u%');
 

 
 
 
 
 
 
 
-- The HR department needs a report that displays the 
-- last name, department number, and job ID of all 
-- employees whose department location ID is 1700.
select last_name, department_id, job_id
from employees
where department_id in 
(Select department_id from departments
where location_id=1700
);
 
 Select department_id from departments
where location_id=1700;
     
     
--Create a report for  HR that display the last name
--and salary of every employee who report to king.     
select last_name, salary
from employees
where manager_id in (
select employee_id from employees
where last_name = 'King'
);
 


             
                       