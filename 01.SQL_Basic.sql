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
SET @gender = "M";
SELECT @gender AS customerGender;

----- DataTypes  -----

--Category			Common Data Types	  Based on Situations used DataTypes								

--Numeric	      =>	INT,			 TINYINT, SMALLINT, BIGINT, DECIMAL(p,s), FLOAT
--String & Text   =>	VARCHAR(n),		 NVARCHAR(n), CHAR(n), VARCHAR(MAX)
--Date & Time     =>	DATE, TIME,		 DATETIME2, SMALLDATETIME
--Binary Strings  => 	BINARY,			 VARBINARY, VARBINARY(MAX)
--Booliean		  => 	bit



