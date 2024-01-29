select cname, mname , rid
from (customer join rentals on customer.cid= rentals.cid )  join movies on rentals.mid=movies.mid
limit 10;

select emp_name, dept_name
from employee inner join department
where employee.dept_no= department.dept_no;

select emp_name, dept_name
from employee left join department using(dept_no);

select emp_name, dept_name
from employee right join department using(dept_no);

select cname , rid, mname 
from (customer left join rentals using (cid)) left join movies using mid;