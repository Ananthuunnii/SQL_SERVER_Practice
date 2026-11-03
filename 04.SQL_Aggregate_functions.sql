
----- SQL Aggregate functions  ----- 

-- Aggregate functions are used to perform claculate on multiple rows and return single summerized  value
-- Aggregate functions are  - count(*), sum(), avg(), min(), max()

-- count()
select count(*) as counts from Employees;  --// counting the Total Rows in the table

select count(empName) as 'employname count' from Employees;   -- counting the employnames itself

select count(*) as counts from Employees group by age;  --// counting the same age by using the group by same age grouped count

-- SUM()
select sum(salary)as 'Total Salary' from Employees;

-- AVG()
select avg(salary) as 'Salary Average' from Employees;

--MIN()
select min(salary) as 'Minimum Salary' from Employees;

--MAX()
select max(salary) as 'Maximum Salary' from Employees;



select count(*) as 'total count', sum(salary) as 'salary sum', avg(age) as 'average age' from employees;

