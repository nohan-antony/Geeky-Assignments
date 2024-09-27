CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

INSERT INTO EMPLOYEES VALUES(1,'JOHN', 'DOE','Marketing',62000,'2018-07-24');
INSERT INTO EMPLOYEES VALUES(2,'ANGEL', 'MARIA','IT',53000,'2020-08-26');
INSERT INTO EMPLOYEES VALUES(3,'CHRISTIAN', 'BALE','Sales',85000,'2021-05-03');
INSERT INTO EMPLOYEES VALUES(4,'NIKITHA', 'BOBBY','MARKETING',30000,'2023-06-07');
INSERT INTO EMPLOYEES VALUES(5,'JR', 'VINI','HR',67800,'2022-01-13');
INSERT INTO EMPLOYEES VALUES(6,'RONALD', 'SUNNY','INTERN',20000,'2024-03-23');


--Retrieve all employees who work in Sales, Marketing, or IT departments.

SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT IN('Marketing','IT','SALES');

--Find all employees with salaries ranging from $50,000 to $75,000 (inclusive).

SELECT* 
FROM EMPLOYEES
WHERE SALARY BETWEEN 50000 AND 75000;

--List all employees whose last name begins with the letter 'S'.

SELECT * FROM EMPLOYEES
WHERE LASTNAME LIKE 'S%'

--Display all employees with exactly five letters in their first name.

SELECT * FROM EMPLOYEES
WHERE LEN(FIRSTNAME)=5;


--Find employees whose last name starts with either 'B', 'R', or 'S'.

SELECT * FROM EMPLOYEES
WHERE LASTNAME LIKE 'B%' OR LASTNAME LIKE 'R%' OR LASTNAME LIKE 'S'

--Retrieve all employees whose first name begins with any letter from 'A' through 'M'.

SELECT * FROM EMPLOYEES
WHERE LEFT(FIRSTNAME,1) BETWEEN 'A' AND 'M';

--List employees whose last name doesn't start with a vowel (A, E, I, O, U).

SELECT * FROM EMPLOYEES
WHERE LEFT(LASTNAME,1) NOT IN ('A','E','I','O','U');

--Identify employees earning more than $80,000 annually. 

SELECT *
FROM EMPLOYEES 
WHERE SALARY>80000

--Find employees who joined the company before 2020. 

SELECT *
FROM EMPLOYEES 
WHERE YEAR(HIREDATE)<2020

-- List all employees not named 'John' (first name).

SELECT *
FROM EMPLOYEES 
WHERE FIRSTNAME !='JOHN'


--Identify Marketing department employees earning $60,000 or less who were hired after June 30, 2019.

SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT='MARKETING' AND (SALARY <=60000 OR HIREDATE > '2019-06-30');

--Find employees whose first name contains the letters 'an' anywhere and ends with 'e'.

SELECT *
FROM EMPLOYEES
WHERE  FIRSTNAME LIKE '%AN%' AND FIRSTNAME LIKE '%E';    

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    Quantity INT,
    UnitPrice DECIMAL(10, 2)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(2)
);


--Calculate the total sales amount for each product. Display the ProductID and total sales amount.

SELECT PRODUCTID , SUM(QUANTITY*UNITPRICE) AS TOTALSALESAMOUNT
FROM SALES
GROUP BY PRODUCTID

--Find the average quantity sold per sale for each product category.

SELECT p.Category, AVG(s.Quantity) AS AverageQuantity
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.Category;

--List the top 5 customers by their total purchase amount. Include the CustomerID and total purchase amount.

SELECT TOP 5 CustomerID, SUM(Quantity * UnitPrice) AS TotalPurchaseAmount
FROM Sales
GROUP BY CustomerID
ORDER BY TotalPurchaseAmount DESC;

--Determine the number of sales made each month in the year 2023. Display the month and the count of sales.

SELECT MONTH(SALEDATE) AS SALES_IN_MONTH, COUNT(SALEID) AS COUNT_OF_SALES
FROM SALES
WHERE YEAR(SALEDATE)='2023'
GROUP BY MONTH(SALEDATE)

--Calculate the total revenue for each state, but only for states with more than $10,000 in total sales.
SELECT C.STATE AS STATE,SUM(S.QUANTITY*S.UNITPRICE)  
FROM SALES S  
JOIN CUSTOMERS C ON C.CUSTOMERID=S.CUSTOMERID
GROUP BY C.STATE
HAVING SUM(S.QUANTITY*S.UNITPRICE) >10000
;

--Find products that have been sold more than 100 times in total. Display the ProductID, ProductName, and the total quantity sold.
SELECT P.PRODUCTID, P.PRODUCTNAME FROM
PRODUCTS P
JOIN SALES S ON P.PRODUCTID=S.PRODUCTID
GROUP BY P.PRODUCTID,P.PRODUCTNAME
HAVING SUM(S.QUANTITY)>5
;

--For each customer, find the date of their first purchase and the date of their most recent purchase.

SELECT CUSTOMERID, MIN(SALEDATE) AS FIRST_DATE, MAX(SALEDATE) AS RECENT_PURCHASE FROM SALES 
GROUP BY CUSTOMERID;

--Find the customers who have made purchases on at
-- least 5 different dates. Display the CustomerID and the count of distinct purchase dates.

SELECT CUSTOMERID, COUNT(DISTINCT SALEDATE) AS CUSTOMER_NO
FROM SALES
GROUP BY CUSTOMERID
HAVING  COUNT( DISTINCT SALEDATE)>1;

