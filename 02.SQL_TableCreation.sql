
----- TABLE Creation  ----- 

-- we need to select the Database first before creating the Table

-- we can create table 
CREATE TABLE Employees 
( 
	EmployeeID int,
	EmpName varchar(30),
	Age int,
	Salary Decimal(10,2),
	[location] varchar(30)				-- using [location] to resist the sq server own keywords here the location is a defaul keyword
);



----- INSERT values to TABLE  ----- 

INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age,Salary,[location])
VALUES (1,'RAM',25,110000,'Noida');

INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age,Salary,[location])
VALUES (2,'JAY',28,90000,'Munbai');


INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age,Salary,[location])
VALUES (3,'Ayush',20,70000,'Goa'),(4,'Sree',24,190000,'Gurugram');  --// multiple line inserting

INSERT INTO EMPLOYEES (EmployeeID,EmpName,Age)
VALUES (5,'Suma',25);



----- Select Command  ----- 

select EmployeeID,EmpName,Age,Salary,[location] from Employees;

select * from Employees;
