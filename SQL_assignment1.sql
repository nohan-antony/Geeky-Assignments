--1. CREATE TABLE: Creates an Employees table with columns for EmployeeID, FirstName, LastName, Department, and Salary

USE MyDBemployee; 

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY, 
    FirstName NVARCHAR(50),      
    LastName NVARCHAR(50),       
    Dept Varchar(50),       
	Salary int
    
);


-- 2.INSERT: Adds three employee records to the table.

INSERT INTO Employees values(1,'John','Mathew','Frontend',20000); 
INSERT INTO Employees values(2,'Thomas','J','Backend',25000); 
INSERT INTO Employees values(3,'Muhammed','Zaakir','Devops',30000); 

-- 3.Select all columns and rows
select * from Employees

--4. Select specific columns
select FirstName from Employees

--5. Select with a WHERE clause to filter results
select FirstName Name from Employees
where Salary>20000

--6. What is the purpose of the IDENTITY keyword in the CREATE TABLE statement?
--Indentity keyword is used to autoincrement values being inserted
CREATE TABLE Custemor (
    id INT IDENTITY(1, 1), Name varchar(20));

--7. Write a SELECT statement to retrieve only the FirstName and Salary of all employees.
select FirstName, Salary
from Employees;

--8. How would you modify the existing UPDATE statement to give all employees in the backend department a 10% raise
update Employees
set Salary=Salary+0.1*Salary
where Dept='Backend';

--9. Write a SELECT statement to find the highest salary in the Employees table.How would you add a new column named
-- "HireDate" of type DATE to the Employees table?
select * from Employees
where Salary=(select MAX(Salary) from Employees);

alter table Employees 
add HireDate date;

--10.  Write an INSERT statement to add a new employee named "Sarah Brown" in the "Marketing" department with a salary of 72000.00.
insert into Employees values(4,'Sarah','Brown','Marketing',72000,'2024-05-22');


--11.  How would you modify the table to ensure that the Salary column cannot contain negative values?
ALTER TABLE Employees
ADD CONSTRAINT chk_salary_positive CHECK (Salary > 0);

--12.How would you add a UNIQUE constraint to the Employees table to ensure that no two employees can have the same email address

 Alter table Employees
add Email Varchar(30) unique;

--13. Write an ALTER TABLE statement to add an "Email" column to the Employees table with a UNIQUE constraint that allows NULL values

--first create email column and use non clustered index with unique constraint
alter table employees
add  Email varchar(20);

create nonclustered index ix_emp_email on
Employees(Email);






