select fname, lname , points from customers where points>(select avg(points) from customers);
select count(*) from customers where points>(select avg(points) from customers); 

select fname, lname , (select count(lid) from lists where list.pid=people.pid ) from people;
select fname, lname , (select count(lid) from lists where list.pid=people.pid ) as 'No_of_lists' from people order by No_of_lists desc;

select fname, lname , (
        select count(*) 
        from listitems 
        where listitems.lid=list.lid 
        ) as 'No_of_items' 
from people join list using(pid) 
where No_of_lists>=2;
