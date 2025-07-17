create database DSA_Db

create table Employee(
Staff_id varchar (10),
First_Name varchar (100),
Last_Name varchar (100),
Gender varchar (10),
Date_of_Birth date,
Hired_Date date
Primary key (Staff_id)
)

Select *from Employee


insert into Employee
insert into Employee (Staff_id, First_Name, Last_Name, gender,Date_of_Birth, Hired_Date)
values ( 'AB201', 'Ayan', 'Olakun', 'female', '1992-08-22', '2018-02-09'),
( 'AB212', 'okorie', 'mercy', 'female','1988-10-09', '2018-10-09'),
( 'AB223', 'joshua', 'chukwuemeka', 'male','1980-10-09', '2022-02-09'),
( 'AB234', 'sanni', 'ibrahim', 'male','1958-10-09', '2019-09-23'),
( 'AB254', 'mercy', 'olanipekun', 'female','1982-10-09', '2020-02-09'),
( 'AB249', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'),
( 'AB298', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB260', 'deborah', 'justin', 'female','1982-10-09', '1988-02-09'),
( 'AB281', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09')


drop table Employee

truncate table Employee

delete Employee
where Staff_id = 'AB212'

 


-------Import CSV Files Into Database-----
[Employee table] CSV
Salary CSV
Payment CSV

create table [Employee table](
Staff_id varchar (10),
First_Name varchar (100),
Last_Name varchar (100),
Gender varchar (10),
Date_of_Birth date,
Hired_Date date
Primary key (Staff_id)
)
select *from [Employee table]

drop table [Employee table]

create table Salary(
Salary_id int identity (1,1)not null,
Staff_id varchar (225),
Firstname Varchar (225),
Lastname varchar (225),
Department nvarchar (max),
salary Decimal (10,3) 
)


0 


drop table Salary

alter table salary
alter column salary decimal(10,3)

create table Payment(
payment_id int identity (1,1) primary key,
Account_No Bigint not null,
Staff_id int,
Bank varchar(225) default 'Zenith Bank',
Payment_method varchar (50) check (payment_method = 'cash' or  payment_method = 'transfer')
)
 
 select *from Payment

 drop table Payment

  ------ Use of Sql Command------
select *from [Employee table]

   UPDATE [Employee table]
   set LastName = 'Abubakar'
   where staffid = 'AB234'

UPDATE Salary
Set department = 

----CREATE STATE OF ORIGIN---(HOW TO CREATE NEW COLUMN)
Alter table [Employee table]
Add [state of origin] varchar (100)


UPDATE [Employee table]
Set [state of origin] ='Anambra'
where staffid = 'AB249'

UPDATE [Employee table]
Set [state of origin] ='Ebonyi'
where staffid = 'AB200'

UPDATE [Employee table]
Set [state of origin] ='Ekiti'
where staffid = 'AB212'

UPDATE [Employee table]
Set [state of origin] ='Edo'
where staffid = 'AB223'

UPDATE [Employee table]
Set [state of origin] ='Akwa ibom'
where staffid = 'AB234'

UPDATE [Employee table]
Set [state of origin] ='ondo'
where staffid = 'AB240'

UPDATE [Employee table]
Set [state of origin] ='Osun'
where staffid = 'AB249'

UPDATE [Employee table]
Set [state of origin] ='Lagos'
where staffid = 'AB254'

UPDATE [Employee table]
Set [state of origin] ='Ogun'
where staffid = 'AB260'

UPDATE [Employee table]
Set [state of origin] ='Abuja'
where staffid = 'AB268'

UPDATE [Employee table]
Set [state of origin] ='Kogi'
where staffid = 'AB270'

UPDATE [Employee table]
Set [state of origin] ='Kwara'
where staffid = 'AB278'

UPDATE [Employee table]
Set [state of origin] ='Rivers'
where staffid = 'AB281'

UPDATE [Employee table]
Set [state of origin] ='Cross River'
where staffid = 'AB282'

UPDATE [Employee table]
Set [state of origin] ='Kaduna'
where staffid = 'AB286'

UPDATE [Employee table]
Set [state of origin] ='Kano'
where staffid = 'AB298'

UPDATE [Employee table]
Set [state of origin] ='Kastina'
where staffid = 'AB299'

UPDATE [Employee table]
Set [state of origin] ='Nassarawa'
where staffid = 'AB401'

UPDATE [Employee table]
Set [state of origin] ='Niger'
where staffid = 'AB405'



------ANALYSIS----
---TOTAL NUMBER OF STAFF---
Select count (distinct staffid) as totalEmployee
from [Employee table]


----TOTAL NO OF STAFF ACCORDING TO STATE Of ORIGIN----

Select [state of origin], count(distinct staffid) as totalEmployee
from [Employee table]
Group by [state of origin]

alter table [Employee table]
alter column HireDate date 

----TOTAL NO OF STAFF ACCORDING TO STATE Of ORIGIN ORDER BY HIGHEST NUMBER OF EMPLOYEE ----

Select [state of origin], count(distinct staffid) as totalEmployee
from [Employee table]
Group by [state of origin]
Order by totalemployee desc


----TOTAL NO OF STAFF ACCORDING TO STATE Of ORIGIN ORDER BY LOWEST NUMBER OF EMPLOYEE ----

Select [state of origin], count(distinct staffid) as totalEmployee
from [Employee table]
Group by [state of origin]
Order by totalemployee Asc


------TOTAL NUMBER OF STAFF FROM DEPARTMENTS-----
Select Department, count(distinct staffid) as totalEmployee
from Salary
Group by department
Order by totalemployee Asc

------USING HAVING-----
Select Department, count(distinct staffid) as totalEmployee
from Salary
Group by department
Having COUNT(Distinct staffid) >=3

----Correcting duplicate department---
Update salary
set department = 'information Tech'
where staffid IN ('AB401','AB249')

Select *from salary

----RELATIONAL/COMPARISON OPERATORs [<,>,<=,>=]-----

SELECT *FROM SALARY
WHERE SALARY >500000

SELECT *FROM SALARY
WHERE SALARY <500000

-----RANGE OPERATORs[BETWEEN,NOT BETWEEN]----

SELECT *FROM SALARY
WHERE SALARY BETWEEN 50000 AND 200000

SELECT *FROM SALARY
WHERE SALARY NOT BETWEEN 100000 AND 500000

-----19/05/2025---
----LIST OPERATORS---
-----IN,NOT IN---(TO SEARCH FOR DATA WITHIN A TABLE)

SELECT *from [Employee table]
where staffid in ('AB270','AB286','AB401')


SELECT *from [Employee table]
where FirstName  in ('Johnson','Mercy','Okorie')

-----Using Not In----(Used to exclude information)
SELECT *from [Employee table]
where staffid Not in ('AB270','AB286','AB401')


SELECT *from [Employee table]
where FirstName Not in ('Johnson','Mercy','Okorie')

-----LOGICAL OPERATORS-----
----AND---(It is TRUE when all conditions are true(OTHRWISE RETURNS FALSE(EMPTY),it tests multiple condition)
-----OR---(It returns TRUE once one condition is met)


SELECT *from [Employee table]
where FirstName ='ADEBOWALE' AND Gender ='MALE'

SELECT *from [Employee table]
where FirstName ='ADEBOWALE' OR Gender ='BOY'


SELECT *FROM salary
where FirstName = 'JOHNSON' OR DEPARTMENT = 'ACCOUNT'


SELECT *FROM salary
where FirstName = 'JOHNSON' And DEPARTMENT = 'Information tech'

-----COMBINING AND + OR ------
SELECT *from [Employee table]
where  Gender ='MALE' or Date_of_birth >= '1990-01-01'
AND [state of origin] ='LAGOS'



-----UPDATE-----
UPDATE Salary
 SET staffid = 'AB260'
 Where Staffid ='AB401'

 ------5% INCREASE IN SALARY----

  UPDATE Salary
 Set Salary = salary * 0.05 (Will return the percentage increase alone)


 UPDATE Salary
 Set Salary = salary * 1.05
 select *from salary

   [OR]

 UPDATE Salary
 Set Salary = salary + (Salary * 0.05)

 ------SQL JOIN FUNCTION-----(SQL OPTIMIZATION

 SELECT *FROM [Employee table]

 SELECT *FROM Salary

 SELECT *FROM Payment
 ------JOIN-----
 SELECT [Employee table].Staffid,
        [Employee table].FirstName,
		[Employee table].Gender,
		[Employee table].HireDate,
		Salary.Salary_id,
		Salary.department,
		Salary.Salary
from [Employee table](primary key)
join Salary
on Salary. staffid = [Employee table].Staffid (column they have in common)
 
 -----INNER JOIN------
 SELECT [Employee table].Staffid,
        [Employee table].FirstName,
		[Employee table].Gender,
		[Employee table].HireDate,
		Salary.Salary_id,
		Salary.department,
		Salary.Salary
from [Employee table]
inner join Salary
on Salary. staffid = [Employee table].Staffid
 
 ------LEFT JOIN----
  SELECT [Employee table].Staffid,
        [Employee table].FirstName,
		[Employee table].Gender,
		[Employee table].HireDate,
		Salary.Salary_id,
		Salary.department,
		Salary.Salary
from [Employee table]
left join Salary
on Salary. staffid = [Employee table].Staffid
 

 -------RIGHT JOIN -----
 SELECT [Employee table].Staffid,
        [Employee table].FirstName,
		[Employee table].Gender,
		[Employee table].HireDate,
		Salary.Salary_id,
		Salary.department,
		Salary.Salary
from [Employee table]
right join Salary
on Salary. staffid = [Employee table].Staffid
 
 -------FULL OUTER JOIN------
 SELECT [Employee table].Staffid,
        [Employee table].FirstName,
		[Employee table].Gender,
		[Employee table].HireDate,
		Salary.Salary_id,
		Salary.department,
		Salary.Salary
from [Employee table]
Full outer join Salary
on Salary. staffid = [Employee table].Staffid
 
 ------JOINING 3 TABLES----
 SELECT [Employee table].Staffid,
        [Employee table].FirstName,
		[Employee table].Gender,
		[Employee table].HireDate,
		Salary.Salary_id,
		Salary.department,
		Salary.Salary,
		Payment.paymentid,
		Payment.Account_No,
		Payment.Bank,
		Payment.Payment_Method
from [Employee table]
 join Salary
on Salary. staffid = [Employee table].Staffid
join Payment
on Payment.staffid = [Employee table].Staffid


-------SUB QUERY------(QUERY INSIDE QUERY)

 SELECT *FROM [Employee table]
 SELECT *FROM Salary
  SELECT *FROM (
  select Staffid,FirstName,LastName,Gender,HireDate, [State of origin]
  from [Employee table]) as [Employee table]
  join(
  select Staffid,department,salary
  from salary) as salary
  on [Employee table].Staffid = Salary.Staffid(UNIQUE IDENTIFIER)

  ------ANALYSIS-----
  SELECT *FROM Salary

  ----TOP  HIGHEST PAID EMPLOYEE-----
   SELECT *FROM (
        SELECT Staffid,	FirstName,LastName,Salary
		from Salary) as Salary
		order by Salary desc

	----TOP 3 HIGHEST PAID EMPLOYEE-----
		 SELECT top 3 *FROM (
        SELECT Staffid,	FirstName,LastName,Salary
		from Salary) as Salary
		order by Salary desc


		----SECOND HIGHEST PAID EMPLOYEE-----
		
		SELECT top 1 *FROM (
        SELECT Staffid,	FirstName,LastName,Salary
		from Salary) as Salary
		order by Salary desc





		 ------TOP 3 LOWEST PAID EMPLOYEE----
		   SELECT top 3*FROM (
        SELECT Staffid,	FirstName,LastName,Salary
		from Salary) as Salary
		order by Salary ASC

		 ------ LOWEST PAID EMPLOYEEs----
		   SELECT *FROM (
        SELECT Staffid,	FirstName,LastName,Salary
		from Salary) as Salary
		order by Salary ASC

	------AVERAGE SALARY BY DEPARTMENT-----

	   SELECT department,AVG(Salary) as AVERAGESALARY
	     FROM(
		 SELECT department,Salary 
		 FROM Salary) as DepartmentSalary
       Group by department

           ---- OR---

 Select department, AVG(Salary) as AVERAGESALARY
 FROM Salary
 group by department

 Select department, AVG(Salary) as AVERAGESALARY
 FROM Salary
 group by department
 ORDER by department DESC

 Select department, AVG(Salary) as AVERAGESALARY
 FROM Salary
 group by department
 ORDER by department ASC

 ---------SQL VIEW-----
 CREATE VIEW VW_EMPSAL_TB
 AS
 SELECT [Employee table].Staffid,
        [Employee table].FirstName,
		[Employee table].Gender,
		[Employee table].HireDate,
		Salary.Salary_id,
		Salary.department,
		Salary.Salary
from [Employee table]
 join Salary
on Salary. staffid = [Employee table].Staffid

------TO CHECK SQL VIEW CREATED-----
SELECT *FROM VW_EMPSAL_TB

-----SQL VIEW FOR 3 TABLES
CREATE VIEW VW_EMPSALPAY_TB
 AS
SELECT [Employee table].Staffid,
        [Employee table].FirstName,
		[Employee table].Gender,
		[Employee table].HireDate,
		Salary.Salary_id,
		Salary.department,
		Salary.Salary,
		Payment.paymentid,
		Payment.Account_No,
		Payment.Bank,
		Payment.Payment_Method
from [Employee table]
 join Salary
on Salary. staffid = [Employee table].Staffid
join Payment
on Payment.staffid = [Employee table].Staffid

SELECT *FROM VW_EMPSALPAY_TB


-----UNION & UNION ALL----

CREATE TABLE Mall_Ikeja(
CUSTOMER_ID INT NOT NULL,
FIRSTNAME VARCHAR (MAX),
LASTNAME VARCHAR (MAX),
CUSTOMER_GENDER NVARCHAR(MAX),
TRANSACTION_DATE DATE DEFAULT GETDATE(),
ADDRESS VARCHAR (MAX),
TRANSACTION_AMOUNT DECIMAL (18,4)
)
SELECT * FROM Mall_Ikeja

  ------or INSERT CSV FILE-------

 SELECT *FROM DSA_Mall_Ikeja

 SELECT *FROM DSA_Mall_Lekki

 SELECT *FROM DSA_Mall_Marina


---- UNON & UNION ALL

 SELECT *FROM DSA_Mall_Ikeja
  union
 SELECT *FROM DSA_Mall_Lekki
 union
 SELECT *FROM DSA_Mall_Marina


 SELECT *FROM DSA_Mall_Ikeja
  union all
 SELECT *FROM DSA_Mall_Lekki
 union all
 SELECT *FROM DSA_Mall_Marina

------ CREATE COLUMN (BRANCH)------

SELECT 
'DSA_Mall_Ikeja' AS BRANCH, CustomerID AS [CUSTOMER ID],
FirstName as [FIRST NAME], LastName as [LAST NAME],
Customer_gender as GENDER,TransactionDate as [DATE],
Address, Transaction_Amount as [TRANSACTION AMOUNT]
FROM DSA_Mall_Ikeja
UNION
select
   'DSA_Mall_Lekki' AS BRANCH, CustomerID AS [CUSTOMER ID],
   FirstName as [FIRST NAME], LastName as [LAST NAME],
   Customer_gender as GENDER,TransactionDate as [DATE],
   Address, Transaction_Amount as [TRANSACTION AMOUNT]
   FROM DSA_Mall_Lekki
   UNION
   select
    'DSA_Mall_Marina' AS BRANCH, CustomerID AS [CUSTOMER ID],
     FirstName as [FIRST NAME], LastName as [LAST NAME],
     Customer_gender as GENDER,TransactionDate as [DATE],
     Address, Transaction_Amount as [TRANSACTION AMOUNT]
	 from DSA_Mall_Marina

	 CREATE VIEW VW_DSA_MALL_TRANSACTION
	 AS
	 SELECT 
'DSA_Mall_Ikeja' AS BRANCH, CustomerID AS [CUSTOMER ID],
FirstName as [FIRST NAME], LastName as [LAST NAME],
Customer_gender as GENDER,TransactionDate as [DATE],
Address, Transaction_Amount as [TRANSACTION AMOUNT]
FROM DSA_Mall_Ikeja
UNION
select
   'DSA_Mall_Lekki' AS BRANCH, CustomerID AS [CUSTOMER ID],
   FirstName as [FIRST NAME], LastName as [LAST NAME],
   Customer_gender as GENDER,TransactionDate as [DATE],
   Address, Transaction_Amount as [TRANSACTION AMOUNT]
   FROM DSA_Mall_Lekki
   UNION
   select
    'DSA_Mall_Marina' AS BRANCH, CustomerID AS [CUSTOMER ID],
     FirstName as [FIRST NAME], LastName as [LAST NAME],
     Customer_gender as GENDER,TransactionDate as [DATE],
     Address, Transaction_Amount as [TRANSACTION AMOUNT]
	 from DSA_Mall_Marina

	 SELECT *FROM [dbo].[VW_DSA_MALL_TRANSACTION]

	 ----- ANALYSIS-----

------	 TOTAL SALES PER BRANCH-----

	 SELECT BRANCH, SUM([TRANSACTION AMOUNT]) AS [TOTAL SALES]
	 FROM [dbo].[VW_DSA_MALL_TRANSACTION]
	 GROUP BY BRANCH 
	 ORDER BY [TOTAL SALES]

	 SELECT BRANCH, SUM([TRANSACTION AMOUNT]) AS [TOTAL SALES]
	 FROM [dbo].[VW_DSA_MALL_TRANSACTION]
	 GROUP BY BRANCH 
	 ORDER BY [TOTAL SALES] DESC

	 ------	 TOTAL SALES PER GENDER-----

	 SELECT GENDER, SUM([TRANSACTION AMOUNT]) AS [TOTAL SALES]
	 FROM [dbo].[VW_DSA_MALL_TRANSACTION]
	 GROUP BY GENDER
	 ORDER BY [TOTAL SALES] DESC

	 ------AVERAGESALES PER BRANCH------
	 SELECT BRANCH, SUM([TRANSACTION AMOUNT]) AS [AVERAGESALES]
	 FROM [dbo].[VW_DSA_MALL_TRANSACTION]
	 GROUP BY BRANCH 
	 ORDER BY [AVERAGESALES] DESC

	 --------SALES PER DATE-----
	 SELECT *FROM [dbo].[VW_DSA_MALL_TRANSACTION]
	 WHERE [DATE] = '2025-05-21'

	 SELECT GENDER ,SUM([TRANSACTION AMOUNT])
	 FROM [dbo].[VW_DSA_MALL_TRANSACTION]
	 WHERE [DATE] = '2025-05-21'
	 GROUP BY GENDER

	 ------ANALYSIS BASED ON BRANCH------
	 SELECT BRANCH,SUM([TRANSACTION AMOUNT]) AS REVENUE
	 FROM[dbo].[VW_DSA_MALL_TRANSACTION]
	 WHERE BRANCH = 'DSA_Mall_Marina'
	 GROUP BY BRANCH

	 SELECT GENDER,BRANCH,SUM([TRANSACTION AMOUNT]) AS [REVENUE]
	 FROM  [dbo].[VW_DSA_MALL_TRANSACTION]
	 WHERE BRANCH = 'DSA_Mall_Marina' AND [DATE] = '2025-05-21'
	 GROUP BY BRANCH,GENDER


	 ------CASE STATEMENTS (WHEN)-----

	 SELECT *FROM [Employee table]

	 ALTER Table [Employee table]
	 drop column [state of origin]

	 ALTER Table [Employee table]
	 Add [state of origin] varchar (255)


 UPDATE [Employee table]
   set [state of origin] = 
   CASE
   When staffid = 'AB200' Then 'Lagos'
   When staffid = 'AB212' Then 'Abuja'
   When staffid = 'AB223' Then 'Osun'
   When staffid = 'AB234' Then 'Oyo'
   When staffid = 'AB240' Then 'Ogun'
   When staffid = 'AB249' Then 'Ekiti'
   When staffid = 'AB254' Then 'Ondo'
   When staffid = 'AB260' Then 'Kogi'
   When staffid = 'AB268' Then 'Niger'
   When staffid = 'AB270' Then 'Kaduna'
   When staffid = 'AB278' Then 'Nassarawa'
   When staffid = 'AB281' Then 'Edo'
   When staffid = 'AB282' Then 'Benue'
   When staffid = 'AB286' Then 'Delta'
   When staffid = 'AB298' Then 'Rivers'
   When staffid = 'AB299' Then 'Anambra'
   When staffid = 'AB401' Then 'Enugu'
   When staffid = 'AB405' Then 'Abia'
   Else 'UNKNOWN'
   END

   SELECT *FROM [Employee table]

   ------STAFFS AGE USING CASE WHEN-----

   ALTER TABLE [Employee table]
   ADD AGE AS DATEDIFF(YEAR,Date_of_Birth,HireDate) -
   CASE
   when MONTH(HireDate) < MONTH(Date_of_Birth)
   OR (MONTH(HireDate) = MONTH(Date_of_Birth)
   AND DAY(HireDate) < DAY(Date_of_Birth))
   THEN 1
   ELSE 0
   END

   -------CATEGORIZE STAFFS POSITION USING CASE WHEN-----
       ----50YRS AND ABOVE =EXECUTIVE DIRECTOR
	   ----36YRS-49YRS =SENIOR MANAGER
	   ----26YRS AND 35YRS =MANAGER
	   ----LESS THAN 25YRS =EXECUTIVE TRAINEE
SELECT Staffid,FirstName,Gender,[state of origin],AGE,
CASE
WHEN AGE >= 50 THEN 'SENIOR EXECUTIVE'S
WHEN AGE BETWEEN 36 AND 49 THEN 'SENIOR MANAGER'
WHEN AGE BETWEEN 26 AND 35 THEN 'MANAGER'
WHEN AGE <= 25 THEN 'EXECUTIVE TRAINEE'
ELSE 'UNKNOWN'
END AS AGEGROUP
FROM [Employee table]

-------FILE  RESTORE------

--GO TO YOUR Db AND RIGHT CLICK
--SELECT RESTORE

-------FILE BACKUP------
--GO TO THE DB YOU WANT TO BACKUP
--RIGHT CLICK
--SELECT BACKUP











