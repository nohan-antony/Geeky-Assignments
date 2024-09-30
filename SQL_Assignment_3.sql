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

--21. Create a string of 10 asterisks (*).
SELECT REPLICATE('*',10);


--22. Write a query to pad all product codes in a 'Products' table to a length of 10 characters with leading zeros.
SELECT RIGHT(REPLICATE('0',10)+PRODUCT_ID,10) AS PRODCUT_ID_10 FROM PRODUCT;

--23. Insert the string 'New ' at the beginning of 'York City'.
UPDATE CUSTOMERS
SET CITY='New '+CITY
WHERE CITY='York City';
SELECT * FROM CUSTOMERS;
--24. From an 'Emails' table, mask the username part of email addresses, showing only the first and last characters.
SELECT * FROM EMAILEMP;
SELECT CONCAT(LEFT(EMAIL,1),REPLICATE('*',LEN(EMAIL)-2),RIGHT(EMAIL,1)) AS MASKED 
FROM EMAILEMP;

--25. Convert the string 'sql server' to uppercase.
SELECT UPPER('sql server');
--26. Write a query to convert all customer names in a 'Customers' table to uppercase.
SELECT UPPER(CUSTOMERNAME)AS CUSTOMERNAME FROM CUSTOMERS;

--27. Convert the string 'SQL SERVER' to lowercase.
SELECT LOWER('SQL SERVER') AS LOWER_CASE;
--28. From a 'Products' table, write a query to convert all product descriptions to lowercase.
SELECT LOWER(PRODUCT_ID) FROM PRODUCT;
--29. Remove trailing spaces from the string 'SQL Server    '.
SELECT RTRIM('SQL Server    ');
--30. Write a query to remove trailing spaces from all email addresses in an 'Employees' table.
SELECT RTRIM(EMAIL) AS EMAIL FROM EMAILEMP;

--31. Remove leading spaces from the string '   SQL Server'.
SELECT LTRIM('   SQL Server');
--32. From a 'Comments' table, write a query to remove leading spaces from all comment texts.
SELECT LTRIM(COMMENT) FROM COMMENTS;

--33. Display the current date in the format 'dd-MM-yyyy'.
SELECT CONVERT(DATE, GETDATE()) AS CURRENT_DATE;
--34. From an 'Orders' table with an 'OrderTotal' column, display the total as a currency with 2 decimal places.
SELECT CAST(SUM(OrderTotal) AS decimal(10,2) ) AS ODERTOTAL_FORMATED;

--35. Separate the string 'apple,banana,cherry' into individual fruits.
SELECT VALUE AS FRUIT FROM
STRING_SPLIT('apple,banana,cherry',',') AS FRUITS
--36. From a 'Skills' table with a 'SkillList' column containing comma-separated skills, write a query to create a row 
--for each individual skill.

SELECT SKILL_LIST FROM Skills
STRING_SPLIT(SkillList,',') AS SKILL_LIST;
-----------------------------------------------------------------------------------------

--Date and Time Functions

--37. Write a query to display the current date and time.
SELECT GETDATE()

--38. From an 'Orders' table, find all orders placed in the last 24 hours.
SELECT *
FROM ODERS
WHERE ODERDATE>=DATEADD(day, -1, GETDATE());

--39. Display the current UTC date and time.
SELECT GETUTCDATE() AS CurrentUTCDateTime;

--40. Write a query to show the time difference between local time and UTC time.
SELECT 
    SYSDATETIMEOFFSET() AS LocalDateTimeWithOffset,
    GETUTCDATE() AS UTCDateTime,
    DATEDIFF(MINUTE, GETUTCDATE(), SYSDATETIMEOFFSET()) AS DifferenceInMinutes

--41. Convert the current date and time to 'Pacific Standard Time'.
SELECT 
    SYSDATETIME() AS CurrentDateTime,
    SYSDATETIME() AT TIME ZONE 'UTC' AT TIME ZONE 'Pacific Standard Time' AS PSTDateTime;
--42. From a 'Flights' table with a 'DepartureTime' column in UTC, convert all departure times to 'Eastern Standard Time'.
SELECT DepartureTime  AT TIME ZONE 'UTC' AT TIME ZONE 'Eastern Standard Time' AS EASTERN_STD_TIME
FROM FLIGHTS ;


--43. Add 3 months to the current date.
   SELECT DATEADD(DAY, 10, GETDATE()) AS NewDate;
--44. From an 'Employees' table, write a query to calculate each employee's retirement date (65 years from their 'DateOfBirth').
SELECT DATEADD(YEAR, 65, DateOfBirth) AS RETIERMENT
FROM  Employees;

--45. Calculate the number of days between '2023-01-01' and '2023-12-31'.
SELECT DATEDIFF(DAY, '2023-01-01' , '2023-12-31') AS DAYBETWEEN;

--46. From an 'Orders' table, find the average number of days between order date and ship date.


--47. Extract the month number from the date '2023-09-15'.
--48. From a 'Sales' table, write a query to group total sales by the quarter of the sale date.

--49. Extract the year from the current date.
--50. From an 'Employees' table, find all employees hired in the year 2022.
--51. Check if '2023-02-30' is a valid date.
--52. Write a query to find all rows in a 'UserInputs' table where the 'EnteredDate' column contains invalid dates.

--53. Find the last day of the current month.
--54. From a 'Subscriptions' table, write a query to extend all subscription end dates to the end of their respective months.

--55. Display the current date and time.
--56. Compare the results of two different methods to get the current timestamp - are they always the same?

--57. Get the current date and time with higher precision than standard methods.
--58. Write a query to insert the current high-precision timestamp into a 'Logs' table.

--59. Display the current UTC date and time with high precision.
--60. Calculate the difference in microseconds between the current local time and UTC time.

--61. Get the current date, time, and time zone offset.
--62. From a 'GlobalEvents' table, convert all event times to include time zone offset information.

--63. Extract the month number from the date '2023-12-25'.
--64. From a 'Sales' table, find the total sales for each month of the previous year.

--65. Extract the day of the month from '2023-03-15'.
--66. Write a query to find all orders from an 'Orders' table that were placed on the 15th day of any month.

--67. Get the name of the month for the date '2023-09-01'.
--68. From an 'Events' table, write a query to display the day of the week (in words) for each event date.

--69. Create a date for Christmas Day 2023.
--70. Write a query to convert separate year, month, and day columns from a 'Dates' table into a single DATE column.




