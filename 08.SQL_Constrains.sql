

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

