create database zensarTraining;
use zensarTraining;
create table PERSONS(
    ID INT auto_increment PRIMARY KEY,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    GENDER CHAR(1),
    DOB DATE,
    DESIGNATION VARCHAR(25),
    SALARY DOUBLE,
    TAX_PAYER BOOLEAN
);
insert into PERSONS(FIRST_NAME,LAST_NAME,GENDER,DOB,DESIGNATION,SALARY,TAX_PAYER) values('Arun','Bora','M','1980-08-14','engineer',50000.00,true);
insert into PERSONS(FIRST_NAME,LAST_NAME,GENDER,DOB,DESIGNATION,SALARY,TAX_PAYER) values('Charan','Dixit','M','1991-10-12','advocate',21000.00,true);
insert into PERSONS(FIRST_NAME,LAST_NAME,GENDER,DOB,DESIGNATION,SALARY,TAX_PAYER) values('Devanand','Ganguly','M','1992-12-13','professor',120000.00,true);
insert into PERSONS(FIRST_NAME,LAST_NAME,GENDER,DOB,DESIGNATION,SALARY,TAX_PAYER) values('Dharinija','Gade','F','1984-08-15','engineer',80000.00,true);
insert into PERSONS(FIRST_NAME,LAST_NAME,GENDER,DOB,DESIGNATION,SALARY,TAX_PAYER) values('Himani','Dutta','F','1991-06-17','doctor',230000.00,true);
insert into PERSONS(FIRST_NAME,LAST_NAME,GENDER,DOB,DESIGNATION,SALARY,TAX_PAYER) values('Jayeeta','Garg','M','1988-04-20','doctor',90000.00,true);
select first_name from persons where designation ="doctor";
select first_name,last_name from persons where designation ="doctor";
select * from persons order by first_name;
select first_name from persons order by first_name;
select First_name,salary as Salary ,salary + salary * 0.10 as 'Increment Salary' from persons order by first_name ;
select first_name,salary from persons where salary > 100000 and salary <200000;
select first_name,salary from persons where salary between 100000 and 200000;
select first_name,last_name from persons where gender='F';
select first_name,last_name from persons where gender='F' order by salary desc;
select first_name,designation from persons where designation in ('doctor','engineer');
select count(first_name) from persons group by gender;
select length('hello,how are you') as Result;
#----------------------------------------------------------------
#new tables creation
#----------------------------------------
create table CATEGORY(
    ID    INT AUTO_INCREMENT PRIMARY KEY,
    C_NAME    VARCHAR(30),
    C_DESCRIPTION VARCHAR(100),
    C_DISCOUNT DOUBLE
);
create table PRODUCTS(
    PRODUCT_ID INT PRIMARY KEY,
    PROD_NAME VARCHAR(150),
    PROD_PRICE DOUBLE,
    CATEGORY INT,
    foreign key(CATEGORY) references CATEGORY(ID)
 );
 show tables;
#-----------------Category records----------------------
insert into CATEGORY(C_NAME,C_DESCRIPTION,C_DISCOUNT) values('TV','Contains all TV details',0.0);
insert into CATEGORY(C_NAME,C_DESCRIPTION,C_DISCOUNT) values('PHONE','Contains all Phone details',0.0);
insert into CATEGORY(C_NAME,C_DESCRIPTION,C_DISCOUNT) values('REFRIGERATOR','Contains all fridge details',0.0);
#-------------Product records-------------------
insert into PRODUCTS values(101, 'Sony Bravia 4K Ultra HD Android LED TV', 20999.00,1 );
insert into PRODUCTS values(102, 'Toshiba Vidaa OS Series 4K Ultra HD Smart LED TV - 43U5050', 29590.00,1 );
insert into PRODUCTS values(103, 'Samsung 108 cm (43 inches) 4K Ultra HD', 33090.00,1 );
insert into PRODUCTS values(104, 'Nokia C30', 10990.00,2 );
insert into PRODUCTS values(105, 'Apple iPhone 13 Pro Max', 129000,2 );
insert into PRODUCTS values(106, 'Apple iPhone 13 Pro', 119000.00,2 );
insert into PRODUCTS values(107, 'Apple iPhone 13 Mini', 69900.00,2 );
insert into PRODUCTS values(108, 'Apple iPhone SE (2020)', 69900.00,2 );
insert into PRODUCTS values(109, 'LG 26O L 3 Star Smart Inverter Frost-Free Double Door Refrigerator', 28000.00,3);
insert into PRODUCTS values(110, 'Haier 258 L 3 Star Inverter Frost-Free Double Door Refrigerator', 26999.00,3 );
#---------------------------------after table creation and inserting data-----------------------
select * from CATEGORY;
select * from PRODUCTS;
select count(*) from PRODUCTS;
select PROD_NAME,length(PROD_NAME) from products;
select left("Hello how are you ",5) as result;
select first_name,DESIGNATION, left(DESIGNATION,4)from persons;
select first_name,DESIGNATION, right (DESIGNATION,4)from persons;
#-----------------Trim function[Remove extra space]----------------------
Select ('               hello how are you           ') as result;
Select ltrim('               hello how are you           ') as result;
Select rtrim('               hello how are you           ') as result;
Select trim('               hello how are you           ') as result;
#------------Lpad[Add extra space]-----------------
select lpad("hello",15,'x');
Select rpad(first_name,20,'*'),lpad(last_name,20,'%') from persons;
#-------------------Substring-----------------------------------
select substring("zensar java training",5) as output;
select substring("zensar java training",1,8) as output;
select substr(PROD_NAME,5,20),PROD_PRICE from PRODUCTs;
#--------------------Concat-------------------------------
select concat("zensar","Application");
select concat(first_name,' ',last_name)as 'Full Name' from persons;
#-------------------------Format---------------------
select format(13455.898,2);
#--------------------------Position----------------
select position('how' in 'hello how are you');
#---------------------------------Numeric functions---------------
select round (3421.678);
select round(3421.675,2);
select round(prod_price)from products;
#--------------floor------------------
select floor(321.567);
select floor(-32.67);
#---------ciel----------
select ceil(312.77);
#---------count-----------
select count(first_name) from persons;
#-----------max------------------
select max(salary) from persons;
#--------------min----------------
select min(salary) from persons;
#-----------avg------------
select avg(salary) from persons;
#----------------------------------------
select gender,max(salary) from persons group by gender;
select designation,max(salary) as Salary from persons group by designation;
#----------------------LEAST FUNCTIO---------------------------
#--------------------------------------------------------------
select least(first_name,last_name) from persons;
select greatest(first_name,last_name) from persons;
select mod(10,50);
#-----------------------Date and time format----------
select curdate();
select adddate(curdate(),10);
select adddate('2021-10-10 17:42:54:000001',interval 1 day) as Result;
select adddate(curdate(), interval 2 week);
select current_date();
select curtime();
select DOB,adddate(dob,interval 10 year) as 'After 10 years' from persons;
#-----------DATE FORMAT--------------
select dob,date_format(dob,'%Y') as Years from persons;
select dob,date_format(dob,'%m %d %y') as Years from persons;
select dob,date_format(dob,'%D %M %Y') as Years from persons;
select dob,date_format(dob,'%d') as Years from persons;
select dob,date_format(dob,'%d %M %Y') as Years from persons;
select dob,date_format(dob,'%m/%d/%y') as Years from persons;
select dob,date_format(dob,'%a %d %m %Y') as Years from persons;
select datediff(curdate(),dob)from persons;




