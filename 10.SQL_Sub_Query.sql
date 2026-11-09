----------  SUB Query -------------

--# a query inside another query that's the subquery


--  Types of subquery
-- 1. Single row sub query
-- 2. Multi row sub query
-- 3. Corelated sub query
-- 4. Nested sub query


create table department(
	departmentId int primary key,
	departmentName varchar(20)
);

insert into department(departmentId,departmentName) values (1,'HR');
insert into department(departmentId,departmentName) values (2,'IT');
insert into department(departmentId,departmentName) values (3,'Finance');
insert into department(departmentId,departmentName) values (4,'Marketing');

create table Employeees(
	employeeId int primary key,
	employeeName varchar(20),
	employeAge int,
	salary decimal(10,2),
	departmentId int
);

insert into Employeees(employeeId,employeeName,employeAge,salary,departmentId) values (1,'Jone',28,80000,1);
insert into Employeees(employeeId,employeeName,employeAge,salary,departmentId) values (2,'Rone',25,180000,2);
insert into Employeees(employeeId,employeeName,employeAge,salary,departmentId) values (3,'leo',30,810000,3);
insert into Employeees(employeeId,employeeName,employeAge,salary,departmentId) values (4,'smith',38,50000,2);
insert into Employeees(employeeId,employeeName,employeAge,salary,departmentId) values (5,'warner',18,30000,1);
insert into Employeees(employeeId,employeeName,employeAge,salary,departmentId) values (6,'bastin',58,20000,4);
insert into Employeees(employeeId,employeeName,employeAge,salary,departmentId) values (7,'unes',42,10000,3);
insert into Employeees(employeeId,employeeName,employeAge,salary,departmentId) values (8,'ishade',20,100000,2);
insert into Employeees(employeeId,employeeName,employeAge,salary,departmentId) values (9,'speed',45,250000,1);
insert into Employeees(employeeId,employeeName,employeAge,salary,departmentId) values (10,'beast',68,45000,4);



--#Query+SubQuery
select * from department;
select * from Employeees;

-- return employid,employename who's department is "hr"
select employeeId,employeeName 
from Employeees
where departmentid in (select departmentId from department where departmentName = 'HR')

-- return employees with salary is grater then avg salary

select employeeName from Employeees where salary > (select avg(salary) from Employeees)

-- retu the employee who age is grater then the average age

select employeeName from Employeees where employeAge > (select avg(age) from Employees);




-- IN operater 

select departmentId from department where departmentName IN ('HR','IT');			-- we get the hr and it related department

select employeeId,employeeName 
from Employeees
where departmentid NOT IN (select departmentId from department where departmentName = 'HR')


-- NOT IN operater 
select departmentId from department where departmentName NOT IN ('HR','IT');	-- filter out the hr and it from the list and show rest all data

select employeeId,employeeName 
from Employeees
where departmentid NOT IN (select departmentId from department where departmentName = 'HR')



-- ANY Operater used with any composit operater
select Employeename from Employeees where salary > ANY (
select salary from Employeees where departmentid =
(select departmentId from department where departmentName = 'HR'));


-- EXISTs Operater
select * from department d
where exists (select 1 from Employeees e where d.departmentId = e.departmentId)



-- 1. Single row sub query
select employeeId,employeeName 
from Employeees
where departmentid in (select departmentId from department where departmentName = 'HR')

-- 2. Multi row sub query
select Employeename from Employeees where salary > ANY (
select salary from Employeees where departmentid =
(select departmentId from department where departmentName = 'HR'));

--3. Corelated sub query
-- it depends upon the outer query for it's value
--commonly used with exists and not exists operaters 
select * from department d
where exists (select 1 from Employeees e where d.departmentId = e.departmentId)

select * from department d
where exists (select 1 from employeees e where e.salary > 500000 and 
d.departmentID = e.departmentId);												 -- corelated condition


-- 4. Nested sub query

--display the employee name who worked in the IT depaerment

select employeeName from Employeees where departmentId = (
	select departmentId from department where departmentName = (
		select 'IT'	
	)
)




