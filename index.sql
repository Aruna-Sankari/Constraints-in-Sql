--  Employee Table --

--  creating table with a constraint  --
create table employee(empid int primary key auto_increment,ename varchar(10) NOT NULL,job_desc varchar(10) default 'unassigned',sal int,Pan varchar(10) unique,check(sal>10000));
desc employee;

-- Insert the values --
insert into employee values(1,'Ramya','Manager',50000,'1045AGU90'),
(2,'Maha','HR',80000,'23OPRD853'),
(3,'Vijaya','Sales',30000,'127JRF832'),
(4,'Gowri','Analyst',20000,'108EJL902'),
(5,'Aarthi','HR',80000,'841GRV612'),
(6,'Aruna','Sales',30000,'45YUM9021');
select * from employee;

-- Student Table --
create table stu(ID Int Primary Key,Name varchar(10),CGPA Decimal(3,2));

-- Insert the values --
insert into stu values(1,'Arun',9.32),(2,'Subi',7.21),(3,'Priya',1.10),(4,'Ishu',5.25),(5,'Sneha',6);
select * from stu;
Insert into stu(Id,name)values(6,'valli');
select * from stu;

-- To add the not null constraint --
Alter table stu modify name varchar(10) not null;
desc stu;

-- To drop the not null constraint --
Alter table stu modify name varchar(10); 
desc stu;

-- add default constraint --
Alter table stu alter name set default 'unassigned';
desc stu;

-- drop default constraint --
Alter table stu alter name drop default;
desc stu;

-- add check constraint --
alter table stu add constraint chk_cgpa check(CGPA<20);   -- 1st method --
alter table stu add check(id<10); -- 2nd method(Easy) --

-- drop check constraint --
alter table stu drop check chk_cgpa;
alter table stu drop id;