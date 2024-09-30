--1. Extract the middle 3 characters from the string 'ABCDEFG'.

SELECT SUBSTRING('ABCDEFG',3,3)

--2 2. From a table 'Employees' with a column 'FullName', write a query
-- to extract the first name (assuming it's always the first word before a space).

SELECT LEFT(FULLNAME, CHARINDEX(' ',FULLNAME,0)) AS FIRST_NAME
FROM EMPLOYEES;

--3. Extract the first 5 characters from the string 'SQL Server 2022'.
SELECT SUBSTRING('SQL Server 2022', 1,5) AS FIRST_5_CHARS;

--4. From a 'Products' table with a 'ProductCode' column, write a query to get the first 3 characters of each product code.
SELECT SUBSTRING(PRODUCT_ID,1,3) AS FIRST_3_CHARS FROM
PRODUCT;

--5. Extract the last 4 characters from the string 'ABCDEFGHIJKL'.
SELECT RIGHT('ABCDEFGHIJKL',4) AS LAST_4;
--6. From an 'Orders' table with an 'OrderID' column (format: ORD-YYYY-NNNN), write a query to extract just the
-- numeric portion at the end.
SELECT RIGHT(ORDERID,4) AS NUMERIC_VALUE_OF_ID;

--7. Write a query to find the length of the string 'SQL Server Functions'.
SELECT LEN('SQL Server Functions') AS LENGTH
--8. From a 'Customers' table, find customers whose names are longer than 20 characters.
SELECT * FROM CUSTOMERS
WHERE LEN(CUSTOMERNAME)>10;

--9. Compare the results of character count and byte count for the string 'SQL Server' with a trailing space.
SELECT LEN('SQL Server   ') AS STRINGLENGTH;
--OUTPUT= 10
SELECT DATALENGTH('SQL Server   ') AS BYTELENGTH
--OUTPUT=13
--10. Write a query to find the byte count of an empty string and explain the result.
SELECT DATALENGTH('') AS BYTELENGTH;
--EMPTY STRING is valid but empty sequence


--11. Find the position of 'Server' in the string 'Microsoft SQL Server'.
SELECT CHARINDEX('Server','Microsoft SQL Server') AS STARTINDEX;

--12. From an 'Emails' table, write a query to extract the domain name from email addresses.
SELECT SUBSTRING(EMAIL, CHARINDEX('@',EMAIL)+1,LEN(EMAIL))
FROM EMAILEMP;

--13. Find the position of the first number in the string 'ABC123DEF456'.
SELECT PATINDEX('%[0-9]%','ABC123DEF456') AS FIRST_NUMBER;

--14. Write a query to find all product names from a 'Products' table that contain a number.
SELECT PRODUCT_NAME
FROM PRODUCT 
WHERE PATINDEX('%[0-9]%', PRODUCT_NAME) > 0;

--15. Join the strings 'SQL', 'Server', and '2022' with spaces between them.
SELECT 'SQL'+' '+'Server'+' '+' '+ '2022' AS CONCATINATEDSTRING;

--16. From 'Employees' table with 'FirstName' and 'LastName' columns, create a 'FullName' column.
SELECT CONCAT(FIRSTNAME, ' ', LASTNAME) AS FULLNAME FROM Employees ;


--17. Join the array C with a hyphen as the separator.
SELECT CONCAT('SQL','-', 'Server','-', '2022') AS JOINEDSTRING;
--18. From an 'Addresses' table, combine 'Street', 'City', 'State', and 'ZIP' columns into a single address string.
SELECT CONCAT(Street,', ', City,', ', State,', ',  ZIP) AS ADDRESS FROM Addresses;

--19. Change all occurrences of 'a' to 'e' in the string 'database management'.
SELECT REPLACE('database management','a','e');
--20. From a 'Products' table, write a query to replace all spaces in product names with underscores.
SELECT REPLACE(PRODUCT_NAME,' ','-') FROM PRODUCT;

