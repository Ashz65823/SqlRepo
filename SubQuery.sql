select * from employees;
select max(emp_basic_salary) from employees;

#----------------------------------------Subquery -basic -----------------------
select * from employees where EMP_BASIC_SALARY=(select max(EMP_BASIC_SALARY) from employees);
select * from employees where EMP_BASIC_SALARY=(select min(EMP_BASIC_SALARY) from employees);
select * from employees where EMP_BASIC_SALARY>(select avg(EMP_BASIC_SALARY) from employees);
select * from employees where EMP_BASIC_SALARY<(select avg(EMP_BASIC_SALARY) from employees);

#--------------------------------In operation--------------------------------------------------
select * from employees where EMP_GRADE in (select grade_name from grades);
select * from grades where grade_name  IN (select distinct emp_grade from employees);
#--------------------------------------------------------------------------------
select * from customers where citycode=(select cityid from cities where cityname='Bangalore');
select * from customers where citycode<(select cityid from cities where cityname='Bangalore');
select * from customers where citycode>(select cityid from cities where cityname='Bangalore');

select * from customers where citycode IN (select cityid from cities where cityname='Bangalore' or cityname='Chennai');
select * from customers where citycode NOT IN (select cityid from cities where cityname='Bangalore' or cityname='Chennai');

#-----------------------------------Any and All --------------------------------------------
select * from dummy;
select * from customers where amount >  ANY( select amt from dummy);
select * from customers where amount >  ANY( select amt from dummy);

select * from customers where amount =  any( select amt from dummy);
select * from customers where amount >  ALL( select amt from dummy);

select * from dummy;
#----------------------------------------------------------------------------
select * from dummy2;

select name,rating,city from customer_ratings 
	where rating >some(
		select data from dummy2
);
#------------------------------------------------------------------
select * from dummy3; 

select * from customer_ratings
	where (city,rating) IN 
    (select cityName,data from dummy3);
# return all the data that match both the infromation to be retrived


