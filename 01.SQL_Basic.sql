----- SELECT -----

-- SELECT IS USED TO DISPLAY OR RETRIVE DATA
-- eg: 
SELECT 100 AS AGE;

SELECT 'HI ANANTHU' AS NAME, 48 AS AGE;

--"AS" for assignment keyword

----- 2 Type Commands in SQL Server  -----

-- single line commands are

/*Multiple line comments Test
Multiple line comments Test
Multiple line comments Test
Multiple line comments Test
Multiple line comments Test */

-- single line comments Test

----- Variables  -----

-- varibale is used to store temporary value
-- we use DECLARE to use to declare the variable with "@" the variable name start
-- eg:
DECLARE @AGE INT = 10;
SELECT @AGE AS CUSTOMERAGELIMITE;
SELECT @AGE+10 AS CUSTOMERAGELIMITE20;
SELECT @AGE-10 AS CUSTOMERAGE0;

-- OR

DECLARE @gender VARCHAR;
SET @gender = 'M';
SELECT @gender AS customerGender;

----- DataTypes  -----

--Category			Common Data Types	  Based on Situations used DataTypes								

--Numeric	      =>	INT,			 TINYINT, SMALLINT, BIGINT, DECIMAL(p,s), FLOAT
--String & Text   =>	VARCHAR(n),		 NVARCHAR(n), CHAR(n), VARCHAR(MAX)
--Date & Time     =>	DATE, TIME,		 DATETIME2, SMALLDATETIME
--Binary Strings  => 	BINARY,			 VARBINARY, VARBINARY(MAX)
--Booliean		  => 	bit


----------------------------------------- String & Text

DECLARE @myname1 char(7);
SET @myname1 = 'Jacky';
select @myname1 as myname;

DECLARE @myplace1 VARCHAR(max);		-- maximun length , long content
SET @myplace1 = 'GOA';
select @myplace1 as myname;

--NVARCHAR(n) ,NCHAR() -  different languages

DECLARE @myname2  NVARCHAR(7);
SET @myname2 = N'Hindi';			--by assign the value like different langauge use N before the N'____' like this way
select @myname2 as myname;

----------------------------------------- Date and time
-- DATE,TIME, DATETIME, DATETIME2

DECLARE @borndate DATE ;
SET @borndate = '2026-10-20';
SELECT @borndate as BornDate;

DECLARE @wakeuptime TIME;
SET @wakeuptime = '01:26:10';
SELECT @wakeuptime AS 'wakeup time';

DECLARE @borndatetime DATETIME;
SET @borndatetime = '2026-10-20 01:26:10';
SELECT @borndatetime AS 'Born Date Time';

DECLARE @borndatetime1 DATETIME2;
SET @borndatetime1 = '2026-10-20 01:26:10.23412346162'; 
SELECT @borndatetime1 AS 'Born Date Time';

-- difference between datetime and datetime2.
--datetime not possible "01:26:10.23412346162" and datetime2 is possible "01:26:10.23412346162"


----------------------------------------- Binary

-- for url storing 

DECLARE @myimage BINARY(3);				-- storing the fixed length
SET @myimage = 0X89504E; 
SELECT @myimage AS 'My Image';


DECLARE @myimage1 VARBINARY(5);				-- storing the actual length
SET @myimage1 = 0X89504E; 
SELECT @myimage1 AS 'My Image';


-- in real time we use
DECLARE @myimage2 VARBINARY(MAX);				-- VARBINARY(MAX)
SET @myimage2 = 0X89504E; 
SELECT @myimage2 AS 'My Image';


----------------------------------------- xml
DECLARE @mywebpage XML;				-- used for html content
SET @mywebpage = '<employee><p>times of india</p></employee>'; 
SELECT @mywebpage AS 'My WebSite';


----------------------------------------- guid (global unique identifier)

-- for sensitive information

DECLARE @internalId uniqueidentifier = newid();			-- we use uniqueidentifier = newid();	it automaticaly create new id each exicution
SELECT @internalId AS 'My internal ID';





----- DATALENGTH TO FIND THE LENGTH OF THE VARIABLE  ----- 

DECLARE @myname char(7);
SET @myname = 'Jacky';
select @myname as myname, DATALENGTH(@myname) AS NAMELENGTH;  -- THE length is 7 because char(7) 

DECLARE @myplace VARCHAR(7);
SET @myplace = 'GOA';
select @myplace as myname, DATALENGTH(@myplace) AS NAMELENGTH;  -- THE length is 3 the varchar count by letter by letter the values as length
