
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


----------Special Operaters


