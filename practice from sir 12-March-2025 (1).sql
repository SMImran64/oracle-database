 SELECT last_name, salary, department_id
 FROM   employees
 WHERE  salary IN (SELECT   MIN(salary)
 FROM 
    employees
 GROUP BY department_id);
  
 
  SELECT last_name, salary, department_id
 FROM   employees
 WHERE  salary IN (2500, 4200, 4400, 6000, 7000, 8300, 
8600, 17000);


 SELECT employee_id, last_name, job_id, salary
 FROM   employees
 WHERE  salary < ANY
 (SELECT salary
 FROM 
 employees
 WHERE  job_id = 'IT_PROG')
 and 
    job_id <> 'IT_PROG';


SELECT salary
 FROM 
 employees
 WHERE  job_id = 'IT_PROG';
 
 
 
 SELECT first_name, department_id, salary
 FROM employees
 WHERE (salary, department_id) IN
 (SELECT min(salary), department_id
 FROM employees
 GROUP BY department_id)
 ORDER BY department_id;
 
 
 
 
 
 
 
 SELECT emp.last_name
 FROM   employees emp
 WHERE  emp.employee_id NOT IN
 (SELECT mgr.manager_id
 FROM   
employees mgr);






SELECT last_name FROM employees
 WHERE  employee_id NOT IN
 (SELECT manager_id 
FROM   employees 
WHERE  manager_id IS NOT NULL);





SELECT manager_id , last_name
FROM   employees 
WHERE  manager_id IS NULL;

select * from 
employees
where last_name='Cambrault';
 

--57. Display details of departments in which the maximum salary
--is more than 10000.

 SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID IN
 ( SELECT DEPARTMENT_ID FROM EMPLOYEES
 GROUP BY DEPARTMENT_ID
 HAVING MAX(SALARY)>10000); 
 
-- 58. Display details of departments managed by ‘Smith’.

SELECT * FROM DEPARTMENTS WHERE MANAGER_ID IN
 (SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE FIRST_NAME='SMITH');

--60. Display employees who did not do any job in the past.
--SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID 
--NOT IN (SELECT EMPLOYEE_ID FROM JOB_HISTORY)

 SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID NOT IN
 (SELECT EMPLOYEE_ID FROM JOB_HISTORY);
 
 
-- 63. Display details of manager who manages more than 5 employees.
SELECT FIRST_NAME FROM EMPLOYEES
 WHERE EMPLOYEE_ID IN
 (SELECT MANAGER_ID FROM EMPLOYEES
 GROUP BY MANAGER_ID
 HAVING COUNT(*)>5);
 
 
-- 65. Display the departments into which no employee joined in last two years.
 SELECT  * FROM DEPARTMENTS
 WHERE DEPARTMENT_ID NOT IN
 ( SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE 
 FLOOR((SYSDATE-HIRE_DATE)/365) < 2 );
 
--  67. Display details of current job for employees who 
--  worked as IT Programmers in the past.
 SELECT * FROM JOBS
 WHERE JOB_ID IN
 (SELECT JOB_ID FROM EMPLOYEES WHERE EMPLOYEE_ID IN
        (SELECT EMPLOYEE_ID FROM JOB_HISTORY WHERE JOB_ID='IT_PROG'));
 
select * from JOB_HISTORY;








