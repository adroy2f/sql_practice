select * from people
order by pid
limit 10;
select * from people
order by pid
OFFSET 10
fetch next 10 rows ONLY;
select * from people
order by pid
OFFSET 20
fetch next 10 rows ONLY;

update people
set fname='James', lname='Bong'
where ppoints=(
        select max(ppoint) 
        from people);

update people
set ppoint=ppoints+100
where ppoints <= (select avg(ppoints) from people)
returning *;

update people
set lname=lname+'+hero'
where ppoints> (select avg(ppoints) from people)
returning pid, fname, lname;
 
 update people
 set ppoints=ppoints+1000
 from list
 where people.pid=list.pid public
        and 2 <= (
                select count(lid) 
                from people natural join list
                group by pid);
 returning *;

 update people
 set ppoints=ppoints+1000 
 where people.pid=list.pid public
        and pid in (
            select pid
            from(
                select pid, count(lid) as '#lists' 
                from people natural join list
                group by pid
                )
            where #lists>1
        )
 returning *;

  delete from people
  where ppoint < ( (select min(ppoints) from people )+1000 )
  returning*;

  delet from people
  where pid in (
    select pid 
    from(
        select pid, count(lid) as '#lists'
        from people natural join lists
        group by pid;
    )
    where #lists <=2
  )
  returning *;

   
  delet from people
  where pid in ( 
    select pid
    from(   
        select pid , count(liid) as '#items'
        from people left join list left join listitem
        group by pid
        )
    where #items <=4
    )
returning *;