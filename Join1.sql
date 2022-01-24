use zensarTraining;

create table GRADES(
    GRADE_NAME CHAR(1) PRIMARY KEY,
    PF_PERCENTAGE DOUBLE,
    ALLOW_PERCENTAGE DOUBLE
);

insert into GRADES values('A', 12.0, 37.0);
insert into GRADES values('B', 11.0, 25.0);
insert into GRADES values('C', 10.0, 20.0);
insert into GRADES values('D', 10.0, 17.0);
select * from grades;

create table EMPLOYEES(
	EMP_ID INT PRIMARY KEY auto_increment,
    EMP_NAME VARCHAR(25),
    EMP_GENDER CHAR(1),
    EMP_DOB DATE,
    EMP_DOJ DATE,
    EMP_BASIC_SALARY DOUBLE,
    EMP_GRADE CHAR(1),
    foreign key(EMP_GRADE) references GRADES(GRADE_NAME)
);


insert into 
	EMPLOYEES(EMP_NAME,EMP_GENDER,EMP_DOB,EMP_DOJ,EMP_BASIC_SALARY,EMP_GRADE) 
    values('John', 'M','1990-02-14','2016-08-22',24000.00,'A');
insert into 
	EMPLOYEES(EMP_NAME,EMP_GENDER,EMP_DOB,EMP_DOJ,EMP_BASIC_SALARY,EMP_GRADE) 
    values('David', 'M','1989-06-18','2015-08-10',20000.00,'B');  
insert into 
	EMPLOYEES(EMP_NAME,EMP_GENDER,EMP_DOB,EMP_DOJ,EMP_BASIC_SALARY,EMP_GRADE) 
    values('Cathy', 'F','1991-08-04','2016-07-17',18000.00,'C');     
insert into 
	EMPLOYEES(EMP_NAME,EMP_GENDER,EMP_DOB,EMP_DOJ,EMP_BASIC_SALARY,EMP_GRADE) 
    values('Vikram', 'M','1990-09-20','2014-06-16',35000.00,'A');   
insert into 
	EMPLOYEES(EMP_NAME,EMP_GENDER,EMP_DOB,EMP_DOJ,EMP_BASIC_SALARY,EMP_GRADE) 
    values('Sudha', 'F','1989-04-28','2016-05-28',22000.00,'B');  
insert into 
	EMPLOYEES(EMP_NAME,EMP_GENDER,EMP_DOB,EMP_DOJ,EMP_BASIC_SALARY,EMP_GRADE) 
    values('Neha', 'F','1991-09-21','2022-02-27',17000.00,NULL);          
insert into 
	EMPLOYEES(EMP_NAME,EMP_GENDER,EMP_DOB,EMP_DOJ,EMP_BASIC_SALARY,EMP_GRADE) 
    values('Kiran', 'F','1990-10-21','2022-06-11',16000.00,NULL);        
    select * from Employees;

create table EMP_CONTACTS(
	ID	INT auto_increment,
    EMAIL VARCHAR(30),
    PHONE VARCHAR(10),
    EMP_ID INT,
    foreign key(EMP_ID) references EMPLOYEES(EMP_ID),
    primary key(ID)
);

insert into 
	EMP_CONTACTS(EMAIL,PHONE,EMP_ID) 
    values('John@gmail.com','9821255666',1);

insert into 
	EMP_CONTACTS(EMAIL,PHONE,EMP_ID) 
    values('David_1989@gmail.com','8144416532',2); 
    
insert into 
	EMP_CONTACTS(EMAIL,PHONE,EMP_ID) 
    values('Cathy@yahoo.com','9123488222',3); 
    
insert into 
	EMP_CONTACTS(EMAIL,PHONE,EMP_ID) 
    values('Vikram_c@gmail.com','7451225454',4);    
    
insert into 
	EMP_CONTACTS(EMAIL,PHONE,EMP_ID) 
    values('sudha_g@gmail.com','7666612345',5);
    
select * from emp_contacts;
#----------------------------------------------
select * from grades,EMPLOYEES;
#------------------------------------------------------------------

create table cities(
	cityid int primary key,
    cityname	varchar(25),
    state	varchar(25)
);

insert into cities values (101, 'Chennai', 'Tamilnadu');
insert into cities values (102, 'Bangalore', 'Karnataka');
insert into cities values (103, 'Hyderabad', 'Andhra');

create table customers(
	id int primary key,
    name	varchar(25),
    citycode int,
    amount double,
    foreign key(citycode) references cities(cityid)
);

insert into customers values (1, 'J J Pharmachy',101, 250000.00);
insert into customers values (2, 'Apolli Pharmachy',102, 300000.00);
insert into customers values (3, 'Med Plus',101, 150000.00);
insert into customers values (4, 'Health Glow',103, 34000.00);
insert into customers values (5, 'A to Z Medicals',102, 170000.00);
#----------------------------------------------------------------------------
create table c_orders(
	id	int auto_increment primary key,
    orderdate date,
    orderamount double,
    custid	int,
    foreign key(custid) references customers(id)
    );
    
insert into c_orders(orderdate,orderamount,custid) values('2019-10-17', 12000.00, 2); 
insert into c_orders(orderdate,orderamount,custid) values('2020-08-12', 2000.00, 1); 
insert into c_orders(orderdate,orderamount,custid) values('2019-6-12', 6000.00, 2); 
insert into c_orders(orderdate,orderamount,custid) values('2019-5-19', 7000.00, 1); 
insert into c_orders(orderdate,orderamount,custid) values('2019-3-14', 8000.00, 3); 
insert into c_orders(orderdate,orderamount,custid) values('2019-6-18', 10000.00, 3);

create table dummy(
	id	int auto_increment primary key,
    amt	double,
    city varchar(25)
);

insert into dummy(amt,city) values(14000,'Bangalore');
insert into dummy(amt,city) values(12200,'Mumbai');
insert into dummy(amt,city) values(14400,'Kolkata');
insert into dummy(amt,city) values(2000,'Delhi');
insert into dummy(amt,city) values(34000,'Chennai');

drop table dummy;
select * from dummy;
#-----------------------------------------------------------
create table dummy2(
	id int auto_increment,
    data int,
    primary key(id)
);

insert into dummy2(data) values(2);
insert into dummy2(data) values(6);
insert into dummy2(data) values(8);

#------------------------------------------------------------
create table dummy3(
	id int auto_increment,
    cityName	varchar(25),
    data        int,
    primary key(id)
);  
insert into dummy3(cityName,data) values('Chennai',2);
insert into dummy3(cityName,data) values('Mumbai',6);
insert into dummy3(cityName,data) values('Pune',8);
insert into dummy3(cityName,data) values('Chennai',8);
insert into dummy3(cityName,data) values('Mumbai',5);
insert into dummy3(cityName,data) values('Pune',2);
#-----------------------------------------------------------------------

create table customer_ratings(
	id	int auto_increment,
    name varchar(50),
    rating int,
    balance double,
    city varchar(25),
    primary key(id)
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'A to Z &Co',5,1000.00,'Mumbai'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'John Trading corp',4,2000.00,'Delhi'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'Med Lab',6,2000.00,'Kolkata'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'Best Corporation',2,5000.00,'Pune'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'Heath & Glow',3,4000.00,'Indore'
);


insert into customer_ratings(
	name,rating,balance,city
) values(
	'Apollo Pharmacy',8,4000.00,'Hyderabad'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'Rashmi Medical Equipments',1,5000.00,'Patna'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'Health Care',10,3000.00,'Chennai'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'Future Enterprises',8,3000.00,'Chennai'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'SpecMakers Ltd',6,8000.00,'Bangalore'
);
#----------------------------------------