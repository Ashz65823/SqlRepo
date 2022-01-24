select * from employees;
select * from emp_contacts;

select * from employees e 
inner join emp_contacts ec on
e.emp_id=ec.emp_id;

select * from employees e 
left outer join emp_contacts ec on
e.emp_id=ec.emp_id;

select * from employees e 
right outer join emp_contacts ec on
e.emp_id=ec.emp_id;

select * from employees e 
cross join emp_contacts ec on
e.emp_id=ec.emp_id;

select * from employees e 
cross join emp_contacts ec;

select * from employees e 
, emp_contacts ec;
