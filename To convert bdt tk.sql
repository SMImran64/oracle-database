 SELECT last_name,LENGTH('last_name')
 from employees
 where last_name LIKE 'J%'
     or last_name like 'A%'
     or last_name like 'M%';
  
--  question-2

  select last_name, salary, lpad(salary,15,'$') as SALARY
  from employees;
  
  question --3
  
  select last_name as earns, salary as monthly, salary*3 as "Dream salary"
  from employees;
  
  
  question--4
  select last_name ,hire_date,salary
  from employees;
  where hire_date< 
  
  
  
  