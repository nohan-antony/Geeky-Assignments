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

-- 3.



