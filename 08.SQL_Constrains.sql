-- SQL keywords are incasesensitive                  --- Importent

--  SQL Constrains --

CREATE DATABASE Training_data4;
USE Training_data4;


CREATE TABLE Employees 
( 
	EmployeeID int,
	EmpName varchar(30),
	Age int,
	Salary Decimal(10,2),
	[location] varchar(30)
);

INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age,Salary,[location])
VALUES (1,'RAM',25,110000,'Noida');

INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age,Salary,[location])
VALUES (2,'JAY',28,90000,'Munbai');


INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age,Salary,[location])
VALUES (3,'Ayush',20,70000,'Goa'),(4,'Sree',24,190000,'Gurugram');

INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age)
VALUES (5,'Suma',25);



-- 0.INFORMATION_SCHEMA -- metadata of all tables

select * from INFORMATION_SCHEMA.Tables;    -- all information and table list

select table_name from INFORMATION_SCHEMA.Tables;   ---  the table list

select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'parenttable';   -- about table   .TABLES 

select TABLE_NAME,COLUMN_NAME,DATA_TYPE from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'parenttable';  -- about columns   .COLUMNS 


select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS; where TABLE_NAME = 'parenttable';  -- to see the constraines



--- the use of constrains the requirements of constraines

-- 1.duplicates ID

INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age,Salary,[location])
VALUES (1,'Loka',30,70000,'Banglaore');

select * from Employees;

-- 2.missing the name, it is null

INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age,Salary,[location])
VALUES (2,NULL,35,70000,'Banglaore');


-- 3.invalid age field with negative value a (-35)

INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age,Salary,[location])
VALUES (3,'Pragash',-35,70000,'Banglaore');

-- 4. incorect salary to negative
INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age,Salary,[location])
VALUES (4,'pushpa',38,-50000,'Banglaore');


-- 5. incorect salary to negative
INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age,Salary,[location])
VALUES (4,'pushpa',38,-50000,'Banglaore');



-----  Types of Constraines -----

-- 1.Primary Key

Create Table Emp1( id int primary key,name varchar(20));

select * from Emp1;
insert into Emp1(id,name) values(1,'elon musk');

-- 2.Unique Key

Create Table Emp2( id int primary key,Username varchar(20) unique);
insert into Emp2(id,Username) values(1,'elon_musk');
insert into Emp2(id,Username) values(2,'elon_eric');
insert into Emp2(id,Username) values(3,NULL);				-- accept one null value

select * from Emp2;

-- 3.NOT NULL
Create Table Emp3( id int primary key,Username varchar(20) unique, EmailID varchar(20) NOT NULL);
insert into Emp3(id,Username,EmailID) values(1,'elon_musk','elon@gmail.com');

select * from Emp3;

-- 3.Check constrain
Create Table Emp4( 
	id int primary key,
	Username varchar(20) unique, 
	Age INT check(Age>=18 AND AGE <=100),
	Salary int check(Salary>0),
	Gender varchar(5) check(Gender in ('m','f')),
	[location] varchar(25) Default 'Hyderabad'
);

select * from Emp4;

insert into Emp4(id,Username,Age,Salary,Gender) values(1,'elon_musk',30,90000,'M');


-- 5.Default Constrain
Create Table Emp5( 
	id int primary key,
	Username varchar(20) unique, 
	Age INT check(Age>=18 AND AGE <=100),
	Salary int check(Salary>0),
	Gender varchar(5) check(Gender in ('m','f')),
	[location] varchar(25) Default 'Hyderabad'
);

select * from Emp5;
insert into Emp5(id,Username,Age,Salary,Gender) values(1,'elon_musk',30,90000,'M');  
-- seee we did't insert the location but by default the location row will be added in the table as 'hyderabad'
-- if we set the value as "NULL" the data store as a null value





-- 6.Foregen Key Constrain
-- it is a key used establish a relationship between 2 tables

create table parenttable( pId int primary key, pName varchar(20))

create table childtable( cId int , cName varchar(20) , foreign key(cId) references parenttable(Pid));


select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS; -- where TABLE_NAME = 'parenttable';


-- 7.IDENTITY - Property
Create Table Emp6( 
	id int primary key identity(1,1),
	Username varchar(20) unique, 
	Age INT check(Age>=18 AND AGE <=100),
	Salary int check(Salary>0),
	Gender varchar(5) check(Gender in ('m','f')),
	[location] varchar(25) Default 'Hyderabad'
);
select * from Emp6;
insert into Emp6(Username,Age,Salary,Gender) values('elon_sparrow',28,85000,'F'); 

-- POINT - 1
-- if we need to insert a specific row with ID using Identity operater 
-- we need to run the "set identity_insert <tablename> on" the we can insert like
-- insert into Emp6(Username,Age,Salary,Gender) values(10,'elon_sparrow',28,85000,'F'); then
-- "set identity_insert <tablename> off"


-- POINT - 2
-- if we use Delete from <table name>				// the identity value start from last value
-- if we use Truncate table <table name>			// the identity value start start as fresh one


--POINT - 3
-- if we unexpetely set the " id int primary key identity(1(start),1(increment)) "
-- starting number as 1 we need to change this using "DBCC checkindent('<tablename>',RESEED,100)
-- so it start from 101



-- 8.  COMPOSITE Key- Concept

-- it is a key used to uniquely identify the one or more columns, 
-- when we use combosite key if one column is not sufficent for the primary key 


Create Table StudentCourses( 
	StudentId int,
	CourseId int, 

	StudentName Varchar(20),
	CourseName Varchar(20),

	--Composite Key
	Primary key(StudentId,CourseId)
);

-- EASY UNDERSTANDING METHOD 

-- main thing is - one student id have many course id
-- or one course id have many student id
-- we can't insert 1 student with 1 course same student id can't assign the same course id 

insert into StudentCourses(StudentId,CourseId,StudentName,CourseName) 
values(1,101,'zara','Life Style'); 

insert into StudentCourses(StudentId,CourseId,StudentName,CourseName) 
values(1,102,'zara','Life Style'); 

insert into StudentCourses(StudentId,CourseId,StudentName,CourseName) 
values(1,103,'zara','Life Style'); 

