
--creat a table

CREATE TABLE emp(
emp_id  NUMBER(6) CONSTRAINT emp_id_pk PRIMARY KEY,
  name  VARCHAR2(30) not null,
  salary NUMBER (8,2) not null,
  email  VARCHAR2(25) not null,
  
  CONSTRAINT emp_email_unq UNIQUE(email)
);


DESCRIBE emp;



INSERT into emp VALUES(1,'Imran', 30000, 'imran@gmail.com');
INSERT into emp VALUES(2,'Masud', 5000, 'Masud@gmail.com');
INSERT into emp VALUES(3,'Istiaq', 50000, 'Istiaq@gmail.com');
INSERT into emp VALUES(4,'Atiq', 25000, 'Atiq@gmail.com');


--question2
SELECT department_id,round(avg(salary)),count(department_id)
from employees
GROUP BY department_id
having max(salary)>12000;

--question--3

SELECT first_name
FROM employees
WHERE first_name  LIKE 'S%';

--question-04

SELECT AVG(salary)
FROM employees
GROUP by salary;


--question--05

select hire_date
from employees
order by 1 asc ;



