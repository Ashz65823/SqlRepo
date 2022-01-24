select * from CATEGORY;
select * from PRODUCTS;
select * from persons;
select CATEGORY,avg(PROD_PRICE) from PRODUCTS group by CATEGORY;
select min(salary) from persons;
select min(dob) from persons;
select max(dob) from persons;
select gender,max(dob)from persons group by gender;
#==========================================================
#=========================================================
select designation,min(salary) from persons group by designation; 
select Designation,min(DOB) as 'Date of Birth',max(salary) as Salary from persons group by designation;
select CATEGORY,avg(PROD_PRICE) from PRODUCTS group by CATEGORY;

