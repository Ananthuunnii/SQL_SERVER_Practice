

----- SQL Clauses  ----- 

-- is used to define conditions and organize the data. it help to filter,sort, group and retruve the data

-- SQL clauses are - where,group by, order by , havng, distinct(), Top


--where

select EmployeeID,EmpName,Age,Salary from Employees where Salary > 110000.00;


--group by

select [location],sum(salary) from Employees group by [location];  -- grouped based on location the sum of each location total salary


--having
select [location],sum(salary) as 'ttlsalary' from Employees group by [location] having [location] = 'GOA';


--order by    

-- desc(desending order), asc(assending order)

select * from Employees order by Age desc;

select * from Employees order by Age asc;


--Distinct

select distinct [location] from Employees;   --  to remove the duplicates and show unique recoreds from the column

select distinct * from Employees; 


--TOP


select Top 3 * from Employees; 

select Top 3 * from Employees order by Salary desc;   -- top 3 high salary  person will show in result





--Detailed example of - Group by , having ,
-- group by is used to group rows based on common column . mainly group by used with aggregate functions like count,sum,avg,min,max

-- group by comme after where clause

select count(*) as countoflocation, [location] from Employees group by [location];

select sum(salary) as Totalsalary ,[location] from employees group by [location];

select min(salary) as Totalsalary ,[location] from employees group by [location];

select max(salary) as Totalsalary ,[location] from employees group by [location];



-- having clause are used to filter the grouped records after the group by

select max(salary) as 'Totalsalary' ,[location] 
from employees 
group by [location]
having  max(salary) > 150000;


select count(*) as empcount , [location] from Employees group by [location] having count(*) >1;

select count(*) as empcount , [location] from Employees where Salary >100000 group by [location] having count(*) >1;


select * from Employees;

