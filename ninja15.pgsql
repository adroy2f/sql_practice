select fname, lname, count(rid)
from customer natural left join rentals
group by fname, lname;

select fname, lname, count(rid) as '#movies'
from customer natural left join rentals
group by fname, lname
order by #movies desc;
 
select fname, lname, count(rid) as '#movies'
from customer natural left join rentals
group by fname, lname
having fname like "%e%" or lname like "%e%"
order by #movies desc;

select fname, lname, count(lid)
from people natural left join lists
group by fname, lname;

select fname, lname, count(lid) as '#lists'
from people natural left join lists
group by fname, lname
order by #lists desc;

select fname, count(liid) as '#items'
from people left NATURAL  join list left natural join listitems
group by fname
order by #items DESC;

select fnmae, lname, (
        select count(lid) as '#lists' 
        from lists 
        where people.lid=list.lid ),
        count(liid) as '#items'
from people left NATURAL join list left natural join listitems
group by fname, lname
order by #items DESC;