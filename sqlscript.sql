select upper(first_name),last_name, salary 
from hr. employees;

select upper(first_name),lower(last_name), salary 
from hr. employees;

select initcap(first_name),last_name, salary 
from hr. employees;

select substr(first_name,2,3),last_name, salary 
from hr. employees;

select length(first_name),last_name, salary 
from hr. employees;

select concat(first_name,concat(' ',last_name)),salary 
from hr. employees;

select lpad(first_name),rpad(last_name), salary 
from hr. employees;

select lpad(first_name,10,'P'),rpad(last_name,20, 'E'), salary 
from hr. employees;

select first_name,last_name, salary,job_id,department_id 
from hr. employees 
where substr(job_id,3) = 'Rep';

select first_name,last_name, salary,job_id,department_id 
from hr. employees 
where substr(job_id,3) = 'REP';

select first_name,last_name, salary,job_id,department_id 
from hr. employees;

select first_name,last_name, salary,job_id,department_id 
from hr. employees 
where substr (job_id,2)='VP';

select first_name,last_name, salary,job_id,department_id 
from hr. employees 
where substr (job_id,4)='VP';

select first_name,last_name, salary,job_id,department_id 
from hr. employees 
where substr (job_id,2)='D_';

select first_name,last_name, salary,job_id,department_id 
from hr. employees 
where substr (job_id,2)='D_VP';

select first_name,last_name, salary,job_id,department_id 
from hr. employees 
where substr (job_id,2,1)='D_VP';

select first_name,last_name, salary,job_id,department_id 
from hr. employees 
where substr (job_id,2,1)='D';

select first_name,last_name, salary,job_id,department_id 
from hr. employees 
where substr (job_id,2)='D';

select first_name,last_name, salary,job_id,department_id 
from hr. employees 
where substr (job_id,2,1)='D';

select lpad(substr(first_name,2,3),10,'P'),rpad(last_name), salary,job_id,department_id 
from hr. employees;

select lpad(first_name,10'P',substr(first_name,2,3)),rpad(last_name), salary,job_id,department_id 
from hr. employees;

select lpad(first_name,10,'P',substr(first_name,2,3)),rpad(last_name), salary,job_id,department_id 
from hr. employees;

select lpad((substr(first_name,2,3)),10,'P'),rpad(last_name), salary,job_id,department_id 
from hr. employees;

select substr((lpad(first_name,10,'P')),3,2),last_name, salary,job_id,department_id 
from hr. employees;

select lpad((substr(first_name,2,3)),10,'P'),last_name, salary,job_id,department_id 
from hr. employees;

select lpad((substr(first_name,2,3)),10,'P') as "Perves Idea",last_name, salary,job_id,department_id 
from hr. employees;

select first_name,&(last_name), salary,job_id,department_id 
from hr. employees;

select first_name,&last_name, salary,job_id,department_id 
from hr. employees;

select first_name,last_name, salary,job_id,department_id 
from hr. employees 
where job_id =&id_no;

SELECT last_name 
FROM hr. employees 
WHERE last_name LIKE '_an%';

SELECT last_name 
FROM hr. employees 
WHERE last_name LIKE '__an%';

SELECT last_name 
FROM hr. employees 
WHERE SUBSTR(last_name,2,2) = 'an';

SELECT last_name 
FROM hr. employees 
WHERE SUBSTR(last_name,-1,1) = 'n';

SELECT last_name 
FROM employees 
WHERE SUBSTR(last_name,-3) = 'aan';

SELECT last_name 
FROM hr. employees 
WHERE SUBSTR(last_name,-3) = 'aan';

substr ('Perves Hossain',4,3);


from dual 


substr ('Perves Hossain',4,3);


substr ('Perves Hossain',4,3) 


    from dual;


substr ('Perves Hossain',4,3) 


from hr. dual;


