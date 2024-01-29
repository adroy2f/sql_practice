select cname, rid , mname 
from (rentals right join customer using (cid )) left join movies using (mid); 

select mname, rid , cname 
from (rentals right join movies using (mid )) left join customers using (cid); 

select mname, rid , cname 
from (movies left join rentals using (mid )) left join customers using (cid);  

select cname  from customer union select emp_name from employee;

select fname, lname , lname  
from people left join list using (pid)
limit 10; 

select fname, lname , lname, iname
from people left join (list natural join list item natural join item) using (pid)
limit 10; 

select fname , dept_name
from employee join deptaetment using (dept_no)
where dept_name='Sales';

select emp_name, 
(select dept_name from department where dept_name='sales' employee.dept_no = department.dept_no)
as 'department name'
from employess;

select fname , mname , rid
from rentals natural join customers natural join movies
limit 10;

 select fnmae , dept_name
 from employee left join depertment using (dept_id);

select fname ,(select deptname from departmnet where department.dept_id= employee.dept_id)
from employee;

select dept_name , (select emp_name from employee where department.dept_id= employee.dept_id)
from departmnet;

select cname,
(rid, (
        mname from movies where movie.mid=rental.mid
        ) from rentals where rentals.cid= customer.cid )
from customers

select cname from customer union emp_name from employee;

select fname, lname 
    (select liname , iname from list natural join listitems natural join items where list.pid=people.pid )
from people;