---------- Functions -------------
-- There are different types of functions. each function is designed for specific purpose
-- function is used to return value or retun table


--# Types of function
-- system functions								-- count(),sum(),cast()
-- scalar function								-- build f or userdefined f return a single value
-- inline table-valued function					-- return multiple rows but use single select statement
-- multiple statement table-valued function		-- retunr multiple rows and have multiple sql statements



-------------------------------------   Specal way of inserting into a table ----------------------------------
insert into myEmployeees (employeeId,employeeName,employeAge,salary,departId)
select 11,'jack',101,500000,4;

select * from myEmployeees; -- checking the insertion

---------------------------------------------------------------------------------------------------------------
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


------ System functions ---

---- aggrigate function

-- count() - return total number of rows
select count(*) from myEmployeees;

-- sum() - return total of the salary
select sum(salary) from myEmployeees;

-- avg() - return the average of the salaty
select avg(salary) from myemployeees;


---- string function

-- upper()
select *,upper(employeeName) as 'uppercase employe name' from myEmployeees;

-- lower()
select *,lower(employeeName) as 'lower employe name' from myEmployeees;

-- substring() -- employname first 3 letter print 
select *,substring(employeeName,1,3) as 'first 2 letter of employe name' from myEmployeees;


-- replace()

-- replace the empname "a" with "@"

select *,replace(employeeName,'a','@') as 'letter replace' from employeees;

-- concat()
-- concat 2 columns - name and department
select * from myEmployeees;

select *,concat(employeeName,' work in ',d.departmentName) as 'employ with department' from myEmployeees m left join department d on d.departmentID = m.departId;




create table myEmployeeesdetails(
	employeeId int primary key,
	employeeName varchar(20),
	employeAge int,
	employJoiningdate date,
	salary decimal(10,2),
	departId int
);
insert into myEmployeeesdetails(employeeId,employeeName,employeAge,employJoiningdate,salary,departId) values (1,'Jone',28,'2021-03-15',80000,1);
insert into myEmployeeesdetails(employeeId,employeeName,employeAge,employJoiningdate,salary,departId) values (2,'Rone',25,'2022-07-04',180000,2);
insert into myEmployeeesdetails(employeeId,employeeName,employeAge,employJoiningdate,salary,departId) values (3,'leo',30,'2019-11-23',810000,3);
insert into myEmployeeesdetails(employeeId,employeeName,employeAge,employJoiningdate,salary,departId) values (4,'smith',38,'2020-01-09',50000,2);
insert into myEmployeeesdetails(employeeId,employeeName,employeAge,employJoiningdate,salary,departId) values (5,'warner',18,'2023-05-30',30000,1);
insert into myEmployeeesdetails(employeeId,employeeName,employeAge,employJoiningdate,salary,departId) values (6,'bastin',58,'2018-09-12',20000,4);
insert into myEmployeeesdetails(employeeId,employeeName,employeAge,employJoiningdate,salary,departId) values (7,'unes',42,'2021-12-01',10000,3);
insert into myEmployeeesdetails(employeeId,employeeName,employeAge,employJoiningdate,salary,departId) values (8,'ishade',20,'2024-02-17',100000,1);
insert into myEmployeeesdetails(employeeId,employeeName,employeAge,employJoiningdate,salary,departId) values (9,'speed',45,'2017-06-25',250000,1);
insert into myEmployeeesdetails(employeeId,employeeName,employeAge,employJoiningdate,salary,departId) values (10,'beast',68,'2016-08-08',45000,4);
insert into myEmployeeesdetails(employeeId,employeeName,employeAge,employJoiningdate,salary) values (11,'mybeast',100,'2000-08-08',155000);
insert into myEmployeeesdetails(employeeId,employeAge,employJoiningdate,salary) values (12,100,'2001-09-08',555000);


select * from myEmployeeesdetails;

select GETDATE() as currentdaydate;
--select year
select employJoiningdate, year(employJoiningdate) as 'joining year' from myEmployeeesdetails;
--select month
select employJoiningdate, month(employJoiningdate) as 'joining month' from myEmployeeesdetails;
--select day
select employJoiningdate, day(employJoiningdate) as 'joining day' from myEmployeeesdetails;

-- add 1 year as next year
select employJoiningdate, year(employJoiningdate) as 'joining year', DATEADD(year,1,employJoiningdate) as 'Next year'
from myEmployeeesdetails;

--date difference
select employJoiningdate, year(employJoiningdate) as 'joining year', datediff(year,employJoiningdate,getdate()) as 'date difference'
from myEmployeeesdetails;
select employJoiningdate, year(employJoiningdate) as 'joining year', datediff(month,employJoiningdate,getdate()) as 'date difference'
from myEmployeeesdetails;
select employJoiningdate, year(employJoiningdate) as 'joining year', datediff(day,employJoiningdate,getdate()) as 'date difference'
from myEmployeeesdetails;


--- mathmathical functions

--abs()
-- return the absolute value
-- a number without a sign(- or +)

select abs(-2000) as 'absolute value 1',abs(+2000) as 'absolute value 2';

-- round()
--to round after decimal

select round(12345.67890,2) as 'round result'; --//12345.67


-- ceiling()
-- round the desimal number to if 12.3 it give 13
select ceiling(12.4) as 'value after ceiling'; --// 13

--floor()
--if the number is 12.89 it give the 12
select floor(12.4) as ' value after floor';    --//12


-- power()
-- find the power of a perticular number
select power(2,3) as '2 power of ';         --//2*2*2 = 8

-- sqrt()
-- squre root of a number
select sqrt(81) as 'sqrt of 2';    --//9

-- Converting Function
-- now the salary in decimal so i want to convert this into intiger
select COLUMN_NAME, DATA_TYPE from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'myEmployeeesdetails'; -- check the column and datatype

--Case()
select cast(salary as int) as 'intiger salary' from myEmployeeesdetails;
select cast(salary as varchar)+'$' as 'variable salary' from myEmployeeesdetails;

--convert()
select convert(varchar, salary)+'$' as 'variable salary' from myEmployeeesdetails;

--try_Convert()
select try_convert(date, '10/13/2026',103) as 'salary';		--103- indian format - dd/mm/yyyy
select try_convert(date, '10/13/2026',101) as ' salary';		--101 us format - mm/dd/yyyy
select try_convert(date, '20261013',112) as ' salary';		--112 make the format from noformat - format = yyyy/mm/dd
--select try_convert(date, '10/13/2026',104) as 'variable salary';


-- ISNull function()

-- replace the null with a speacific value

select * from myEmployeeesdetails where employeeId = 11;  -- // deptid is null okay
select ISNULL(departid,0) from myEmployeeesdetails;

-- coalesce()
select coalesce(null,null,'no value') as result from myEmployeeesdetails;



------ Scalar functions ---
 
-- fn_CaluculateBonus()
-- fn_GetFullName()


---------- UDF(user defined function)  -------------

--Syntax
/*
CREATE FUNCTION <function name>
(
	@parameter datatype;
)
returns datatype
AS
BEGIN
	DECLARE @result datatype;
	--logic
	RETURN @Result;
END;
*/

------------ 1. my own salary bonus function (UDF)

CREATE FUNCTION fn_CalculateBonus
(
    @salary decimal(12,2)
)
RETURNS decimal(12,2)
AS
BEGIN
    RETURN @salary * 0.10;
END;

-- calling my own function
SELECT salary,dbo.fn_CalculateBonus(salary) AS bonus
FROM myEmployeeesdetails;

------------ 2. my own Get fullname bonus function (UDF)

CREATE FUNCTION fn_GetFullName
(
	@employeeName varchar(20)
)
RETURNS varchar(50)
AS
BEGIN
	return UPPER(@employeeName)
END;

-- calling my own function
SELECT salary, dbo.fn_GetFullName(employeeName) AS 'Employe Full Name'
FROM myEmployeeesdetails;



------------  Table-valied function -

-- statements
/*
1. if else statement
2. Case statement (case-> when-> then-> else)
3. while loop
4. temporaty table

---- IF...ELSE

syndax

if(<condition>)
BEGIN
	--<STATEMENT>
END
ELSE
BEGIN
	--<STATEMENT>
END

*/

-- IF...ELSE
DECLARE @SALARY DECIMAL(12,2)
SET @salary = 70000
IF (@salary >= 60000)
BEGIN
	PRINT 'SALARY IS HIGH'
END;
ELSE
BEGIN
	PRINT 'SALARY IS LOW'
END;

--  CHECKING THE DEPARTMENT 
DECLARE @DEMARTMENT VARCHAR(20)
SET @DEMARTMENT = 'IT';
IF (@DEMARTMENT = 'CS')
BEGIN
	PRINT ' DEPARTMENT IS IT'
END
ELSE
BEGIN
	PRINT ' DEPARTMENT IS CS'
END


-------- Case statement

-- used to check multiple conditions
/*
syntax
CASE
	WHEN <condition 1>   THEN <result 1>
	WHEN <condition 2>   THEN <result 2>
	ELSE <result>
END;
*/


select employeeId,employeeName,salary,
case 
	when salary >200000 then 'HIGH'
	when salary <200000 then 'low'
END as 'salary difference'
from myEmployeeesdetails;


select *,
case 
	when departId is null then 0
	when departId = 4 then 0
	else departId
end as 'updated department id'
from myEmployeeesdetails;


---- using the CASE statement in UPDATE 

select * from myEmployeeesdetails;
-- 1
UPDATE myEmployeeesdetails set salary = 
	case 
		when salary >200000 then salary + 10000
		when salary < 200000 then salary + 5000
		else salary
	end

-- 2
update myEmployeeesdetails set departid = 
	case 
		when departId is null and employeeName is null then 0
		else departId
	end

-------- when loop

-- loop again and again using the when
/*
syntax
WHEN 
	BEGIN
		--<STATEMENT>
		SET --UPDATE CONDITION (increment)
	END;
*/

DECLARE @NUMBER INT = 1;

WHILE (@NUMBER <=5)
BEGIN
	PRINT @NUMBER
	SET @NUMBER = @NUMBER+1;
END



-- DYNAMIC SQL Statement

-- normal sql statement is a  'STATIC SQL'
-- here we gonna use the DYNAMIC sql statement
-- using 'EXEC or sp_executesql' we can execute dynamic sql
/*
syntax
*/
select * from Employeees;

declare @department varchar(10) = 1;
declare @sql nvarchar(max);
set @sql = 'select * from Employeees where departmentId = '''+ @department+'''';
exec (@sql);


-- Inline Table-Valued functions

-- it return a table value and we only use single select statement 
--  we can't create temporary table inside the function
/*
	CREATE FUNCTION <function name>
	(
		@parameter Datatype			-- input parameter
	)
	RETURNS TABLE		-- function return the TABLE
	AS
	RETURN
	(
		<Table Data>		-- single select query that return table data
	)	
*/

-- ALTER FUNCTION fn_getEmployeesByDepartments				-- if we need to ALTER the function we can use ALTER FUNCTION and update the function
CREATE FUNCTION fn_getEmployeesByDepartments				-- creating the table function
(
	@department varchar(18),
	@salary int
)
RETURNS TABLE
AS
RETURN
(
	select d.departmentID,d.departmentName,m.employeeId,m.employeeName from myEmployeeesdetails m 
	left join department d on m.departId = d.departmentID
	where d.departmentName = @department and m.salary > @salary
)

select * from dbo.fn_getEmployeesByDepartments('IT',100000);		-- calling the table function
select * from dbo.fn_getEmployeesByDepartments('HR',50000);



-------------------------------------------------------------  IMPORTENT PART USED IN REAL TIME WORKS  -------------------------------------------------------------------

------- Multistatement Table-Valued functions

-- Used for more complex statements then a single select statements
--  it will return table and we can use multiple sql querys like select, insert, create
-- can contain if condition, loops, calculations
/*
	CREATE FUNCTION <function name>
	(
		@parameter Datatype			-- input parameter
	)
	RETURNS @Result TABLE		-- Used to stored the table data in @Result parameter
	(
		Column Name datatype	-- output table column
	)
	AS
	BEGIN
	(
		--multi statements
		RETURN;
	)	
	END;
*/


/*case 
		when departId is null and employeeName is null then 0
		else departId
end*/

---------------------------------Basics -------------------------------------------------------
-- variable declareation

declare @name varchar(20) = 'john';
declare @age int          = 30;
	
select @name,@age;			-- we selecting value like displayig the result
-- or
print @name;				-- printing the value like we do in the javascript console.log()
print @age;

-- for tables declaration we do like

declare @employesTable table
(
	EmployeeID int,
	EmployeeName varchar(20)
)
insert into @employesTable values(1,'Petter');
insert into @employesTable values(2,'Hulk');

select * from @employesTable

-----------------------------------------------------------------------------------------------
-- query 1

create function fn_GetEmployeWithCatogary_1(@department varchar(20))
returns @departmentTable TABLE
(
	EmpId int,
	EmpName varchar(12)
)
AS
BEGIN
	
	insert into @departmentTable

	select m.employeeId,m.employeeName
	from myEmployeeesdetails m
	RETURN								-- just return it will return the @departmentTable parameter which stored table data
END;

select * from dbo.fn_GetEmployeWithCatogary_1('IT');			-- calling the function


-- Query 2
alter function fn_GetEmployeWithCatogary_1(@department varchar(20))
returns @departmentTable TABLE
(
	EmpId int,
	EmpName varchar(12)
)
AS
BEGIN
	
	insert into @departmentTable

	select m.employeeId,m.employeeName
	from myEmployeeesdetails m 
	left join department d on m.departId = d.departmentID
	where d.departmentName = @department; 
	RETURN
END;
select * from dbo.fn_GetEmployeWithCatogary_1('IT');			-- calling the function





create function fn_GetEmployeWithCatogary(@department varchar(20))
returns @departmentTable TABLE
(
	EmpId int,
	EmpName varchar(12),
	EmpSalary decimal(10,2),
	EmpDepartment varchar(20),
	EmpCategory varchar(20)
)
AS
BEGIN
	
	insert into @departmentTable
	select m.employeeId,m.employeeName,m.salary,d.departmentName,
	case
		when m.salary > =50000 then 'High Salary'
		else 'Normal salary'
	end as Categary
	from myEmployeeesdetails m 
	left join department d on m.departId = d.departmentID
	where d.departmentName = @department;
	RETURN
END;

select * from dbo.fn_GetEmployeWithCatogary('HR');


-- Query 4

create function fn_GetEmployeeWithUpdateSalary(@department varchar(12))
returns @employeupdatesalaryTable table
(
	empID int,
	empName varchar(20),
	empSalary decimal(10,2),
	empDepartment varchar(20)
)
as 
begin
	insert into @employeupdatesalaryTable									--- inserting
	select m.employeeId,m.employeeName,m.salary,d.departmentName			-- inserting the value to @employeupdatesalaryTable this variable table from a existing table with conditions
	from myEmployeeesdetails m 
	left join department d on m.departId = d.departmentID
	where d.departmentName = @department;

	update @employeupdatesalaryTable										--- updating , updating the salary with 10001 from the departments
	set empSalary = empSalary + 10001

	return
end;

select * from dbo.fn_GetEmployeeWithUpdateSalary('HR');						-- checking the function working fine or not and this way the function run

