- E-commerce Platform Schema

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    RegistrationDate DATE
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(200),
    Price DECIMAL(10, 2),
    CategoryID INT
);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Questions

-- 1. List all products with their category names, including products without a category.
SELECT C.CATEGORYNAME, P.PRODUCTNAME
FROM PRODUCTS P LEFT JOIN Categories C ON C.CATEGORYID=P.CATEGORYID;

-- 2. Display all customers and their order history, including customers who haven't placed any orders.
SELECT CU.CUSTOMERID, CU.CUSTOMERNAME,CU.Email,CU.RegistrationDate, O.ORDERID,O.ORDERDATE
FROM Customers AS CU LEFT JOIN ORDERS O ON O.CUSTOMERID=CU.CustomerID;
-- 3. Show all categories and the products in each category, including categories without any products.
SELECT C.CATEGORYID,C.CATEGORYNAME,P.PRODUCTID,P.PRODUCTNAME
FROM CATEGORIES C LEFT JOIN PRODUCTS P ON P.CATEGORYID=C.CATEGORYID;

-- 4. List all possible customer-product combinations, regardless of whether a purchase has occurred.
SELECT CU.CUSTOMERID, CU.CUSTOMERNAME, P.PRODUCTID,P.PRODUCTNAME FROM CUSTOMERS CU
CROSS JOIN PRODUCTS P;

-- 5. Display all orders with customer and product information, including orders where either the customer or product information is missing.
SELECT O.ORDERID, O.CUSTOMERID, CU.CUSTOMERNAME, OD.PRODUCTID,P.PRODUCTNAME
FROM ORDERS O LEFT JOIN Customers CU ON O.CUSTOMERID=CU.CUSTOMERID
LEFT JOIN ORDERDETAILS OD ON OD.ORDERID=O.ORDERID
LEFT JOIN PRODUCTS P ON OD.PRODUCTID=P.PRODUCTID;

-- 6. Show all products that have never been ordered, along with their category information.
-- 6. Show all products that have never been ordered, along with their category information.
SELECT P.PRODUCTID, P.PRODUCTNAME FROM PRODUCTS P
LEFT JOIN ORDERDETAILS OD ON P.PRODUCTID=OD.PRODUCTID
WHERE OD.ORDERID IS NULL;

-- 7. List all customers who have placed orders in the last week, along with the products they've purchased.
SELECT CU.CUSTOMERID, CU.CUSTOMERNAME,P.PRODUCTID, P.PRODUCTNAME,O.ORDERDATE
FROM CUSTOMERS CU LEFT JOIN ORDERS O ON O.CUSTOMERID=CU.CUSTOMERID
LEFT JOIN ORDERDETAILS OD ON O.ORDERID=OD.ORDERID
LEFT JOIN PRODUCTS P ON P.PRODUCTID=OD.PRODUCTID
WHERE O.ORDERDATE>=DATEADD(DAY,-7,GETDATE());

-- 8. Display all categories with products priced over $100, including categories without such products.
SELECT DISTINCT C.CATEGORYID, C.CATEGORYNAME
FROM CATEGORIES C LEFT JOIN PRODUCTS P ON P.CATEGORYID=C.CATEGORYID WHERE P.PRICE>100;
-- 9. Show all orders placed before 2023 and any associated product information.
SELECT O.ORDERID,O.ORDERDATE,P.PRODUCTID,O.ORDERDATE
FROM ORDERS O LEFT JOIN ORDERDETAILS OD ON OD.ORDERID=O.ORDERID
LEFT JOIN PRODUCTS P ON OD.PRODUCTID=P.PRODUCTID
WHERE YEAR(O.ORDERDATE)<'2023';

-- 10. List all possible category-customer combinations, regardless of whether the customer has purchased a product from that category.
SELECT C.CATEGORYID, C.CATEGORYNAME,CU.CUSTOMERID,CU.CUSTOMERNAME
FROM CUSTOMERS CU CROSS JOIN CATEGORIES C;