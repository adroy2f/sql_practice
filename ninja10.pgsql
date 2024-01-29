Select emp_id, emp_fname, emp_lname 
from employee
where emp_id=18;

Select emp_id, emp_fname, emp_lname 
from employee
where emp_fname like '%e%';

Select emp_id, emp_fname, emp_lname 
from employee
where (emp_fname like '%e%' or emp_lname like '%e%') and emp_state='cailifornia';
-- and dob > 12/31/1999::date;

Select emp_fname, emp_lname 
from employee
where  pdob < cast('now' as timestamp - '10 years' as interval) ;
