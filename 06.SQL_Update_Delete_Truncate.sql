

----- SQL Update, Delete, Truncate  ----- 

-- Update
-- update <table name>
-- set <column 1> < assignment operataer> < value 1>,<column 2> < assignment operataer> < value 2>
-- where <condition (specify which column)>


-- update is used to modify the existing recoreds from the table

select * from Employees;

update Employees
set Salary = 200000
where Employees.EmployeeID = 1;

update Employees
set Salary = 300000
where EmpName = 'Jay';

update Employees
set Salary = 50000 , [location] = 'banglaore'
where Salary is null;

update Employees
set Salary = 60000
where [location] = 'kochi' and EmployeeID = 8;


-- Delete

-- delete used to delete the row from a existing record 

Delete from Employees
where [location] = 'Goa' and EmpName like 'Sanjay';			-- delete a specific column

Delete from Employees;										-- delete the entire records


-- Truncate

create table TestTable( game_id int, game_names varchar(20), game_price int);   -- create table

insert into TestTable(game_id, game_names, game_price) values(1,'GTA',3000);	-- insert data to table

select * from TestTable;														-- check the data in table

Truncate table TestTable;														-- Truncate Table // viping the all recored

