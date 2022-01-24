#-------------------------Data Manipulation----------------------
insert into c_orders(orderdate,orderamount,custid) values('2019-3-14', 8000.00, 3); 
Delete from  c_orders where id=3;  
update c_orders set orderdate='2022-01-24' where id=1;

create table Student1(
Rollno int auto_increment,
Name Varchar(30),
Mark int default 0,
dob Date not null,
email varchar(50) unique,
primary key(Rollno)
);

drop table Student1;
#------------------------------------------------
create table Courses1(
id int auto_increment,
name varchar(50),
fees int(50),
constraint cource_id_pk primary key(id)
);
Select * from courses1;
desc courses1;
alter table courses1 add duraction int;