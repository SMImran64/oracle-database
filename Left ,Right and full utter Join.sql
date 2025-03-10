
--create job_grade table

CREATE TABLE job_grades (
grade 		CHAR(1),
lowest_sal 	NUMBER(8,2) NOT NULL,
highest_sal	NUMBER(8,2) NOT NULL
);

ALTER TABLE job_grades
ADD CONSTRAINT jobgrades_grade_pk PRIMARY KEY (grade);

INSERT INTO job_grades VALUES ('A', 1000, 2999);
INSERT INTO job_grades VALUES ('B', 3000, 5999);
INSERT INTO job_grades VALUES ('C', 6000, 9999);
INSERT INTO job_grades VALUES ('D', 10000, 14999);
INSERT INTO job_grades VALUES ('E', 15000, 24999);
INSERT INTO job_grades VALUES ('F', 25000, 40000);

COMMIT;

--used right utter join

SELECT e.last_name,e.department_id,d.department_id
from employees e RIGHT OUTER JOIN departments d
   ON e.department_id = d.department_id;

--used left utter join

SELECT e.last_name,e.department_id,d.department_id
from employees e LEFT OUTER JOIN departments d
   ON e.department_id = d.department_id;
   
--   used full utter join
   
   SELECT e.last_name,e.department_id,d.department_id
from employees e FULL OUTER JOIN departments d
   ON e.department_id = d.department_id;






