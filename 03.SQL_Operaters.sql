
----- SQL Operaters  ----- 

-- Operaters are used to perform different types of Operations
-- operaters are 4 ie - arithmatic, comparison, logical, speacl Operaters

----------Arithmatic Operaters
select EmployeeID,EmpName,Age,Salary,Salary + 5000 as 'Bornes salary'  -- adding the 5000 rs for each employess
from Employees;

select EmployeeID,EmpName,Age,Salary,Salary - 5000 as 'without bornes salary'  -- substracting the 5000 rs for each employess
from Employees;

select EmployeeID,EmpName,Age,Salary,Salary * 2 as '2 month salary Total'  -- 2 months salalry total amount for each employess
from Employees;

select EmployeeID,EmpName,Age,Salary,Salary / 2 as 'half month salary Total'  -- half month salalry total amount for each employess
from Employees;

select EmployeeID,EmpName,Age,Salary,Salary % 1700 as 'Per day salary'  -- Per day salalry amount for each employess
from Employees;

----------Comparison Operaters

select * from Employees where EmployeeID = 1 ;
select * from Employees where [location] = 'Goa' ;

select * from Employees where EmployeeID > 1 ;

select * from Employees where EmployeeID < 1 ;

select * from Employees where EmployeeID >= 1 ;

select * from Employees where EmployeeID <= 1 ;

select * from Employees where EmployeeID <> 1 ;
select * from Employees where [location] <> 'Goa' ;

----------Logical Operaters
select * from Employees where [location] = 'Goa' AND Salary > 90000;
select * from Employees where [location] = 'Goa' OR Salary > 90000;

select * from Employees where NOT [location] = 'Goa';  -- the goa location not list and also the location contain null the row also not print

----------Special Operaters

select * from Employees where [location] in ('Goa','Gurugram');


select * from Employees where Age BETWEEN 24 AND 30;	-- 'BETWEEN' is used to fetch record in a perticular range using 'AND' operater


select * from Employees where EmpName LIKE 'J%';		-- "LIKE" used with the "%" to fetch the record based on the requirement 


select * from Employees where Salary IS NULL;	--// fetching the null salary -- 'IS NULL' is used to fetch the null values from the record

select * from Employees where NOT Salary IS NULL;

