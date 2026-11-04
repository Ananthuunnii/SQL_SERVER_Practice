create database DBJOINS_TABLE;
use DBJOINS_TABLE;



-- JOINS --

-- joins are used to compain related data between two tables

create table department
(
	depId int primary key,
	depName varchar(20)
);

select * from department;

insert into department(depId,depName) values(1,'IT');
insert into department(depId,depName) values(2,'Mechanical');  
insert into department(depId,depName) values(3,'Electronic');  
insert into department(depId,depName) values(4,'Civil');  
insert into department(depId,depName) values(5,'Web and craft'); 

create table project
(
	projectId int primary key,
	ProjectName varchar(20)
);

insert into project(projectId,ProjectName) values(101,'A1');
insert into project(projectId,ProjectName) values(102,'A2');  
insert into project(projectId,ProjectName) values(103,'A3');  
insert into project(projectId,ProjectName) values(104,'A4');  
insert into project(projectId,ProjectName) values(105,'A5'); 


create table employee
(
	empId int primary key,
	empName varchar(20),
	deptId int,
	projectId int
)
insert into employee(empId,empName,deptId,projectId) values(1001,'Hulk',1,102);
insert into employee(empId,empName,deptId,projectId) values(1002,'Spiderman',2,103);  
insert into employee(empId,empName,deptId,projectId) values(1003,'Blackpanter',3,101);  
insert into employee(empId,empName,deptId,projectId) values(1004,'Ironman',1,104);  
insert into employee(empId,empName,deptId,projectId) values(1005,'Batman',3,102); 
insert into employee(empId,empName) values(1006,'Batman'); 
insert into employee(empId,empName) values(1007,'Batman'); 



-- INNER JOINS --

-- used to fetch matching records from both table

select e.empName, d.depName from employee e inner join department d on d.depId = e.deptId;



-- LEFT JOINS --

-- used to fetch all matching record from left table and matching records from right table

select * from employee e left join department d on d.depId = e.deptId;
-- all recored from employee table and matching record from department table



-- RIGHT JOINS --

-- used to fetch all matching record from right table and matching records from left table

select * from employee e right join department d on d.depId = e.deptId;
-- all recored from department table and matching record from employee table



-- FULL OUTER JOINS --

-- used to fetch all matching record from both table matched and unmatched records
-- full outer = left + right


-- SELF JOINS --

-- used to join a table with itself. retrive the data from same table


create table SYS_COMPANY
(
	empID int primary key,
	empName varchar(20),
	managerID int
);

insert into SYS_COMPANY(empId,empName) values(101,'Barath'); 
insert into SYS_COMPANY(empId,empName,managerID) values(102,'Shiva',101); 
insert into SYS_COMPANY(empId,empName,managerID) values(103,'Rooni',101); 
insert into SYS_COMPANY(empId,empName,managerID) values(104,'Dev',102); 
insert into SYS_COMPANY(empId,empName,managerID) values(105,'Vishal',102); 
insert into SYS_COMPANY(empId,empName,managerID) values(106,'Varun',105); 
insert into SYS_COMPANY(empId,empName,managerID) values(107,'Batman',105); 

truncate table SYS_COMPANY;

select * from SYS_COMPANY;

-- WHO is the manager of the company

select e.empName,m.empName from SYS_COMPANY E inner join SYS_COMPANY M on E.managerID = M.empID;
