
-- 57. display datails of departments in which the maximum salary is more than 10000
select *
from hr. DEPARTMENTS
where department_id in (
    select DEPARTMENT_ID
    from hr. employees
    group by DEPARTMENT_ID
    having max(salary)>10000);

-- 58. display details of departments by 'King'

select *
from hr. departments
where manager_id in (SELECT employee_id 
FROM HR. EMPLOYEES
where last_name like 'King');

-- -60. Display employees who did not do any job in the past.

select *
from hr.EMPLOYEES
where employee_id not in (
    select employee_id 
    from hr. JOB_HISTORY
);
-- 63. Display details of manager who manages more than 5 employees.

select *
from hr. EMPLOYEES
where EMPLOYEE_ID in (select manager_id
from hr. EMPLOYEES
group by MANAGER_ID
having count(MANAGER_ID)>5);

-- 65. Display the departments into which no employee joined in last two years.
