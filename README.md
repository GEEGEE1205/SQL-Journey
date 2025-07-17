### SQL Analysis Portfolio: My Structured Query Language (SQL) Journey

 **Project Overview**

  This repository documents my SQL learning and practical journey as a Data Analyst in training. It includes all SQL concepts I’ve explored, created, and executed using Microsoft SQL Server Management Studio (SSMS). The datasets simulate employee, salary, payment, and retail transaction data across multiple domains.

 **Skills Demonstrated**: 
 
  -  SQL Data Definition Language (DDL)
  -  Data Manipulation Language (DML)
  -  JOINs
  -  Subqueries
  -  Views
  -  Case Statements
  -  Aggregate Functions
  -  Union Operations
  -  Data Cleaning
  -  Backup & Restore
  -  Analysis using SQL.

**Project Case Used**

 - Dataset Categories:

   - Employee Table: HR personnel data (staff ID, names, gender, date of birth, hire date, state of origin, age).
   - Salary Table: Departmental salary structure per staff.
   - Payment Table: Banking and payment method records.
   - Mall Transactions: Transaction records across three mall branches (Ikeja, Lekki, Marina).

**Core SQL Operations**

 1. Table Creation and Management

    - Created tables: Employee, Salary, Payment, and mall-specific tables like Mall_Ikeja.
    - Used ALTER, DROP, TRUNCATE and DELETE for table and data management.
    - Imported data from CSV files into tables.

 2. Data Insertion

    - Used INSERT INTO ... VALUES and CSV imports to populate data.
    - Sample record:
      
    SQL
     INSERT INTO Employee (Staff_id, First_Name, Last_Name, Gender, Date_of_Birth, Hired_Date)
     VALUES ('AB201', 'Ayan', 'Olakun', 'female', '1992-08-22', '2018-02-09');
  

 3. Data Retrieval & Filtering

     - Utilized SELECT, WHERE, IN, NOT IN, BETWEEN, AND/OR and LIKE.
     - Logical operators used to apply multiple filter conditions.

 4. Aggregation & Grouping

      - Used functions like COUNT, SUM, AVG, and GROUP BY to extract business insights:

        - Staff count by state of origin.
        - Average salary by department.
        - Total sales per mall branch and gender.

 5. SQL Joins

      - Applied various JOIN types to merge employee, salary, and payment data:

         -  INNER JOIN
         -  LEFT JOIN
         -  RIGHT JOIN
         -  FULL OUTER JOIN

 6. CASE Statement Usage

    - Classified employee positions based on age.
    - Updated state of origin using CASE WHEN.

    SQL
    CASE
     -  WHEN AGE >= 50 THEN 'SENIOR EXECUTIVE'
     -  WHEN AGE BETWEEN 36 AND 49 THEN 'SENIOR MANAGER'
     -  WHEN AGE BETWEEN 26 AND 35 THEN 'MANAGER'
     -  WHEN AGE <= 25 THEN 'EXECUTIVE TRAINEE'
     -  ELSE 'UNKNOWN'
     -   END AS AGEGROUP


---

**Business Intelligence Analysis Performed**

   - HR Analytics:

     - Age calculation based on date of birth and hire date.
     - Categorization of staff by seniority level.
     - Staff distribution by state and gender.
     - Salary updates with percentage increase.

**Retail Sales Analytics**:

   - Combined mall data using UNION and UNION ALL.
   - Created views for consolidated reporting (VW_DSA_MALL_TRANSACTION).
   - Generated insights:

     - Total sales per mall.
     - Revenue by date, gender, and branch.

---

**Advanced SQL Concepts**

   - Subqueries:

     -  Used to compare and extract top and bottom earners.
     -  Nested inside JOIN operations for relational comparison.

**SQL Views**:

   - Created views for better performance and reusable queries.

     - VW_EMPSAL_TB: Employee + Salary
     - VW_EMPSALPAY_TB: Employee + Salary + Payment

**Backup & Restore**:

   - Included instructions to back up and restore databases via SSMS.

---

 **Sample Insights**

   - Top 3 Highest Paid Employees:

   - SQL
      - SELECT TOP 3 FirstName, LastName, Salary FROM Salary ORDER BY Salary DESC;
 
**Departments With ≥ 3 Employees**:

   - SQL
      - SELECT Department, COUNT(DISTINCT Staff_id) FROM Salary GROUP BY Department HAVING COUNT(*) >= 3;
 
**Mall Branch Sales Analysis**:

   - SQL
     - SELECT BRANCH, SUM([TRANSACTION AMOUNT]) AS [TOTAL SALES]
     - FROM VW_DSA_MALL_TRANSACTION GROUP BY BRANCH ORDER BY [TOTAL SALES] DESC;


---

**Skills Acquired**

   - I have built strong foundations in data handling using SQL.
   - I can analyze datasets, clean data, run comparisons, create views, and optimize queries.
   - This journey prepares me for real-world data analyst roles involving relational databases and SQL reporting.

---

**Next Steps**

   - Explore SQL stored procedures and functions.
   - Integrate SQL with Power BI or Python for visualization.
   - Practice real business cases with larger datasets.

