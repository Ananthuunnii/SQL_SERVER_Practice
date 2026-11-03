

----- SQL Drop, Alter, Temp Table  ----- 

-- Drop

-- Drop is used to delete the table , database, and related objects
-- drop is used to permendaley delete the database object
create database TestDB;															-- create DB

create table TestTable( game_id int, game_names varchar(20), game_price int);   -- create table

insert into TestTable(game_id, game_names, game_price) values(1,'GTA',3000);	-- insert table data

select * from TestTable; 

drop table TestTable;

drop database TestDB;



-- Alter


select * from TestTable;

-- Alter - add
Alter table TestTable
Add game_rating int;

Alter table TestTable
Add game_Size int;


-- Alter - alter
Alter Table TestTable
alter column game_names varchar(10);

-- Alter - drop
Alter Table TestTable
drop column game_Size;





-- Temp Table

-- Temp table is a table that store data temporary during the section end the data will lose

-- local Temp Table

Create Table #myworkTempTable(work_id int,work_name varchar(20));					  -- createing a local Temp Table


insert into #myworkTempTable (work_id,work_name) values (1001,'SDE-III Developer');   -- inserting value to local Temp Table


SELECT * FROM #myworkTempTable;														  -- selecting from local temp Table



-- Global Temp Table

-- we can access the global temporary table any of the section
-- lose the table when the relared acceses section are all closed

Create Table ##mybooksTempTable(book_id int,book_name varchar(30));				       -- createing a Global Temp Table


insert into ##mybooksTempTable (book_id,book_name) values (101,'The Grate Success');   -- inserting value to Global Temp Table


SELECT * FROM ##mybooksTempTable;													   -- selecting from Global temp Table

