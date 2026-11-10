---------- VIEW -------------
-- we don't need to write long query again and again we can create it as a view and we can use that view or virtual table
-- (the ORDER BY is not workng in view creation but we can use while selecting the view i think)

--# a view is virtual table created from a select query on one or more table 
--# it does't store data separately 
--# it display data dynamically from the original table 
--# only the query definition is stored in the database

create table myEmployeees(
	employeeId int primary key,
	employeeName varchar(20),
	employeAge int,
	salary decimal(10,2),
	departId int
);
insert into myEmployeees(employeeId,employeeName,employeAge,salary,departId) values (1,'Jone',28,80000,1);
insert into myEmployeees(employeeId,employeeName,employeAge,salary,departId) values (2,'Rone',25,180000,2);
insert into myEmployeees(employeeId,employeeName,employeAge,salary,departId) values (3,'leo',30,810000,3);
insert into myEmployeees(employeeId,employeeName,employeAge,salary,departId) values (4,'smith',38,50000,2);
insert into myEmployeees(employeeId,employeeName,employeAge,salary,departId) values (5,'warner',18,30000,1);
insert into myEmployeees(employeeId,employeeName,employeAge,salary,departId) values (6,'bastin',58,20000,4);
insert into myEmployeees(employeeId,employeeName,employeAge,salary,departId) values (7,'unes',42,10000,3);
insert into myEmployeees(employeeId,employeeName,employeAge,salary,departId) values (8,'ishade',20,100000,2);
insert into myEmployeees(employeeId,employeeName,employeAge,salary,departId) values (9,'speed',45,250000,1);
insert into myEmployeees(employeeId,employeeName,employeAge,salary,departId) values (10,'beast',68,45000,4);

-- syntax
/* 
CREATE VIEW <view name>
AS
select <column1>, <column2>
from <tablename>;
*/

-- VIEW

-- create a view to display employeeid , employeename and salary from the employee table

CREATE VIEW employeedetails				-- view name is - employeedetails
as
select employeeId,employeeName,salary from Employeees;

-- calling the view - virtual table
select * from employeedetails;


-- create a view to display employees the salary is grater than 150000
CREATE VIEW highsalaryemp
as
select * from Employeees where salary > 150000;

-- calling the view-virtual table
select * from highsalaryemp;

select * from INFORMATION_SCHEMA.tables;




---  UPDATE  VIEW  TABLE

-- if we update VIEW  it will reflect to the original table					-- importent
/*    Syntax

UPDATE <table name>
SET <columnname> = <value>
where <condition>
*/


-- this is out view table - highsalaryemp

SELECT * FROM highsalaryemp;

-- updating query
UPDATE highsalaryemp
SET employeAge = 42
WHERE employeeId = 9;

select * from Employeees;



---  ALTER  VIEW(virtual)  TABLE
-- used to modify the existing VIEW  it will reflect to the original table.change the definition without changing or droping the view
/*    Syntax

ALTER VIEW < existing view table name>
AS
select <Columns> from <original table>
*/
select * from highsalaryemp;

ALTER VIEW highsalaryemp  
AS
SELECT employeeid,employeeName,employeage from Employeees WHERE employeAge >21;



---  DROP  VIEW(virtual)  TABLE

-- delete the view
/*    Syntax

DROP VIEW <view table name>
*/

DROP VIEW highsalaryemp;





---  VIEW(virtual) TABLE with JOINS
select * from employeees;
select * from department;


CREATE VIEW EMPDEPTFULLDATA
AS
SELECT * FROM department d
inner join employeees e on d.departmentID = e.departmentId;




---  VIEW(virtual) TABLE with AGGREGATE FUNCTIONS
select * from EMPDEPTAGGREGATE;

drop view EMPDEPTAGGREGATE;

CREATE VIEW EMPDEPTAGGREGATE
AS
SELECT d.departmentName,cast(avg(e.salary) as decimal(10,2)) FROM department d
left join myEmployeees e on d.departmentID = e.departID
where e.salary >=80000
group by d.departmentName;


-- STATISTICS
--SUM,MAX,MIN

CREATE VIEW EMPDEPTSTATISTICS
AS
SELECT d.departmentName,
SUM(SALARY) AS 'TOTAL SALARY',
MAX(SALARY) AS 'MAX SALARY',
MIN(SALARY) AS 'MIN SALARY'
FROM department d
INNER join myEmployeees e on d.departmentID = e.departID
group by d.departmentName;