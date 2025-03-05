
-- question no.-01

CREATE TABLE ImranInfo(
    Im_id NUMBER(7) CONSTRAINT Im_id_pk PRIMARY KEY,
    I_Name VARCHAR2(30) not null,
    salary NUMBER (8,2) not null,
    hire_date DATE not null,
    I_address VARCHAR2(25) 
    );

    -- question no.-02

select department_id, round(avg(salary),2),count(DEPARTMENT_ID)
from hr. employees
group by department_id
having max(salary)>12000;

-- question no.-03
select first_name||' '||last_name as "Full Name"
from hr.employees
where first_name like 'S%';


-- question no.-04
SELECT AVG(salary)
FROM hr. employees
WHERE job_id LIKE '%SA%'

-- question no.-05

select FIRST_NAME, hire_date
from hr.employees
order by 2 asc;