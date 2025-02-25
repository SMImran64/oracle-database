select  first_name ||' '||last_name as "Employee Name", salary,salary+(salary+300)*0.10 as "Total Salary",
    commission_pct*100||'%'
from hr.employees;