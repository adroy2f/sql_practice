SELECT * FROM employee;

select DISTINCT emp_city from employee;

select * from employee order by emp_state;

select * from employee order by emp_lname;

select emp_fname || ' works in ' || emp_city || ' office.' AS "Where do they Work?"FROM employee;