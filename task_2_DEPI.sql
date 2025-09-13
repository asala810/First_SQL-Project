create database task_2_DEPII
use task_2_DEPII
 

create table Customers(
  CustomerID int primary key ,

   FirstName Varchar(50),
   LastName  Varchar(50),
   Email     Varchar(100),
   Phone     Varchar(20),
   City      Varchar(50)
);


 create table Categories(
 CategoryID int Primary Key,
CategoryName Varchar(100)
);


 create  table Products (
 ProductID int Primary Key,
ProductName Varchar(100),
UnitPrice  Decimal(10,2),
Stock int ,
CategoryID int Foreign Key(CategoryID) references Categories (CategoryID)
);


 create table Orders (
OrderID int Primary Key,
OrderDate Date,
CustomerID int Foreign Key(CustomerID) references Customers (CustomerID),
TotalAmount Decimal(12,2)
);


create table OrderDetails (
OrderDetailID int Primary Key,
OrderID int Foreign Key(OrderID) references Orders (OrderID),
ProductID int Foreign Key(ProductID) references Products (ProductID),
Quantity int ,
UnitPrice Decimal(10,2)
);

-------------------------------------
--inserting data
-------------------------------------
INSERT INTO Customers  (CustomerID,FirstName,LastName,Email,Phone,City)
VALUES
(1, 'John', 'Smith', 'john.smith@email.com', '1234567890', 'New York'),
(2, 'Emily', 'Johnson', 'emily.j@email.com', '2345678901', 'Chicago'),
(3, 'Michael', 'Brown', 'm.brown@email.com', '3456789012', 'Los Angeles'),
(4, 'Sophia', 'Davis', 'sophia.davis@email.com', '4567890123', 'Houston'),
(5, 'Daniel', 'Wilson', 'daniel.w@email.com', '5678901234', 'Miami'),
(6, 'Olivia', 'Martinez', 'olivia.m@email.com', '6789012345', 'Boston'),
(7, 'James', 'Anderson', 'j.anderson@email.com', '7890123456', 'Seattle'),
(8, 'Ava', 'Garcia', 'ava.garcia@email.com', '8901234567', 'Dallas'),
(9, 'William', 'Thomas', 'will.t@email.com', '9012345678', 'Atlanta'),
(10, 'Mia', 'Harris', 'mia.h@email.com', '1122334455', 'Orlando'),
(11, 'Ethan', 'Clark', 'ethan.c@email.com', '2233445566', 'San Diego'),
(12, 'Isabella', 'Lewis', 'isabella.l@email.com', '3344556677', 'San Francisco'),
(13, 'Alexander', 'Young', 'alex.y@email.com', '4455667788', 'Denver'),
(14, 'Charlotte', 'Walker', 'charlotte.w@email.com', '5566778899', 'Las Vegas'),
(15, 'Benjamin', 'Hall', 'ben.h@email.com', '6677889900', 'Detroit'),
(16, 'Amelia', 'Allen', 'amelia.a@email.com', '7788990011', 'Phoenix'),
(17, 'Lucas', 'King', 'lucas.k@email.com', '8899001122', 'Philadelphia'),
(18, 'Harper', 'Wright', 'harper.w@email.com', '9900112233', 'Salt Lake City'),
(19, 'Henry', 'Scott', 'henry.s@email.com', '4455661122', 'Austin'),
(20, 'Ella', 'Green', 'ella.g@email.com', '5566772233', 'Portland');


INSERT INTO Categories  ( CategoryID,CategoryName)
VALUES
(1, 'Beverages'),
(2, 'Snacks'),
(3, 'Dairy'),
(4, 'Electronics'),
(5, 'Stationery'),
(6, 'Bakery'),
(7, 'Frozen Foods'),
(8, 'Personal Care'),
(9, 'Cleaning Supplies'),
(10, 'Fruits'),
(11, 'Vegetables'),
(12, 'Meat'),
(13, 'Seafood'),
(14, 'Cereals'),
(15, 'Condiments'),
(16, 'Household'),
(17, 'Books'),
(18, 'Toys'),
(19, 'Clothing'),
(20, 'Sports Equipment');


INSERT INTO Products( ProductID,ProductName,UnitPrice,Stock,CategoryID)
VALUES(1, 'Cola', 1.50, 100, 1),
(2, 'Chips', 2.00, 50, 2),
(3, 'Milk', 1.20, 80, 3),
(4, 'Laptop', 800.00, 10, 4),
(5, 'Notebook', 2.50, 200, 5),
(6, 'Bread', 1.00, 150, 6),
(7, 'Ice Cream', 3.50, 60, 7),
(8, 'Shampoo', 5.00, 40, 8),
(9, 'Detergent', 12.00, 25, 9),
(10, 'Apple', 0.80, 120, 10),
(11, 'Carrot', 0.60, 90, 11),
(12, 'Chicken Breast', 7.50, 35, 12),
(13, 'Salmon', 10.00, 20, 13),
(14, 'Corn Flakes', 4.00, 50, 14),
(15, 'Ketchup', 2.20, 70, 15),
(16, 'Vacuum Cleaner', 150.00, 15, 16),
(17, 'Novel Book', 12.00, 100, 17),
(18, 'Toy Car', 8.00, 80, 18),
(19, 'T-Shirt', 15.00, 60, 19),
(20, 'Football', 25.00, 30, 20);


INSERT INTO Orders (OrderID,OrderDate,CustomerID,TotalAmount)
VALUES (1, '2025-01-05', 1, 30.00),
(2, '2025-01-07', 2, 120.00),
(3, '2025-01-10', 3, 15.00),
(4, '2025-01-12', 4, 800.00),
(5, '2025-01-15', 5, 12.00),
(6, '2025-01-16', 6, 50.00),
(7, '2025-01-18', 7, 90.00),
(8, '2025-01-20', 8, 60.00),
(9, '2025-01-22', 9, 40.00),
(10, '2025-01-23', 10, 10.00),
(11, '2025-01-24', 11, 25.00),
(12, '2025-01-25', 12, 75.00),
(13, '2025-01-26', 13, 140.00),
(14, '2025-01-27', 14, 55.00),
(15, '2025-01-28', 15, 20.00),
(16, '2025-01-29', 16, 110.00),
(17, '2025-01-30', 17, 18.00),
(18, '2025-01-31', 18, 95.00),
(19, '2025-02-01', 19, 210.00),
(20, '2025-02-02', 20, 15.00);


INSERT INTO OrderDetails (OrderDetailID,OrderID ,ProductID,Quantity,UnitPrice)
VALUES
(1, 1, 1, 10, 1.50),
(2, 1, 2, 5, 2.00),
(3, 2, 4, 1, 800.00),
(4, 2, 5, 10, 2.50),
(5, 3, 3, 10, 1.20),
(6, 4, 4, 1, 800.00),
(7, 5, 10, 15, 0.80),
(8, 6, 6, 20, 1.00),
(9, 6, 7, 5, 3.50),
(10, 7, 8, 3, 5.00),
(11, 8, 9, 2, 12.00),
(12, 9, 11, 25, 0.60),
(13, 10, 10, 5, 0.80),
(14, 11, 12, 2, 7.50),
(15, 12, 13, 3, 10.00),
(16, 13, 14, 4, 4.00),
(17, 14, 15, 5, 2.20),
(18, 15, 17, 1, 12.00),
(19, 16, 19, 2, 15.00),
(20, 17, 20, 1, 25.00);



------------------------------------------------------------------------------
--SQL Practice Question                                                      |
------------------------------------------------------------------------------

select *from Customers
select * from Categories 
select * from Products 
select *from Orders
select * from OrderDetails
------------------------------------------------------------------------------
select  FirstName ,City from Customers 
------------------------------------------------------------------------------
select  ProductName ,UnitPrice from Products  where UnitPrice >20
------------------------------------------------------------------------------
Select FirstName +LastName ,City from Customers where  City = 'Chicago'
------------------------------------------------------------------------------
select ProductName ,Stock from Products where Stock <50
------------------------------------------------------------------------------
select *from Categories order by CategoryName  asc  
------------------------------------------------------------------------------
select P.ProductName , O.OrderDate from  OrderDetails OD
left join Products P  ON  OD.ProductID   = P.ProductID
left join Orders O  ON  OD.OrderID = O.OrderID 
WHERE o.OrderDate >= '2025-01-01'
  AND o.OrderDate < '2025-02-01';
  ----------------------------------------------------------------------------
  select Email,LastName from Customers where LastName = 'Smith'
  ----------------------------------------------------------------------------
  select top 5  ProductName,UnitPrice	 from Products Order by  UnitPrice DESC; 
  -------------------------------------------------------------------------------
drop table Customers
 drop table Categories 
drop table  Products 
drop table  Orders
drop table  OrderDetails
---------------------------------------------------------------------------------
SELECT 
    P.ProductName,
    G.CategoryName
FROM Products P
LEFT JOIN Categories G  
    ON P.CategoryID = G.CategoryID
WHERE G.CategoryName = 'Dairy';
------------------------------------------------------------------
select FirstName from Customers 
where FirstName Like 'A%';
-------------------------------------------------------------------
select ProductName , UnitPrice from Products 
where UnitPrice >= 1  AND  UnitPrice <=3
-------------------------------------------------------------------
select distinct City from Customers
-------------------------------------------------------------------
Select * from OrderDetails OD
left join Products P 
ON OD.ProductID = P.ProductID
left join  Orders O 
ON OD.OrderID = O.OrderID 
where O.CustomerID = 5
--------------------------------------------------------------------

select ProductName , Stock from Products 
order by Stock DESC ;
--------------------------------------------------------------------
Alter Table Customers 
 drop column  Total_Customers ;

 select count (*) as Total_Num_Of_Customer from Customers;
 --------------------------------------------------------------------
 select AVG(UnitPrice) as Avg_Prise_Of_Products from Products ;
 --------------------------------------------------------------------
 SELECT 
    P.ProductName,
    MAX(O.TotalAmount) AS MaxTotalAmount
FROM OrderDetails OD
LEFT JOIN Orders O 
    ON OD.OrderID = O.OrderID
LEFT JOIN Products P 
    ON OD.ProductID = P.ProductID
GROUP BY P.ProductName;

----------------------------------------------------------------------------
select min(Stock) as MIN_STOCK 
from Products ;
----------------------------------------------------------------------------
SELECT P.ProductName, MIN(P.Stock - OD.Quantity) AS MinAvailableStock
FROM OrderDetails OD
LEFT JOIN Products P
    ON OD.ProductID = P.ProductID
GROUP BY P.ProductName;
--------------------------------------------------------------------------- 

select count (distinct CategoryName) from Categories 
select count ( CategoryName) from Categories 
---------------------------------------------------------------------------
select  O.OrderID , C.FirstName+LastName from Orders O
Left join Customers C
ON O.CustomerID = C.CustomerID 
---------------------------------------------------------------------------
 Select P.ProductName , C.CategoryName from Products P
 left join Categories C 
 ON  P.CategoryID = C.CategoryID
 --------------------------------------------------------------------------
 select O.OrderDate , C.FirstName ,P.ProductName ,OD.Quantity from OrderDetails OD 
 left join Products P 
 ON  OD.ProductID = P.ProductID 
 left join Orders O 
 ON  OD.OrderID = O.OrderID 
 left join Customers C 
 ON  O.CustomerID = C.CustomerID 
 ------------------------------------------------------------------------------
SELECT C.FirstName, COUNT(O.OrderID) AS OrdersCount
FROM Customers C
LEFT JOIN Orders O 
    ON O.CustomerID = C.CustomerID
GROUP BY C.FirstName;
-------------------------------------------------------------------------------
select P.ProductName ,  sum(OD.Quantity * OD.UnitPrice) as  Sales  from OrderDetails OD 
left join Products P 
ON OD.ProductID =P.ProductID 
Group by P.ProductName
-------------------------------------------------------------------------------
select C.CategoryName ,  sum(OD.Quantity * OD.UnitPrice) as  Sales  from OrderDetails OD 
left join Products P 
ON OD.ProductID =P.ProductID 
left join Categories C 
ON P.CategoryID = C.CategoryID

Group by C.CategoryName
------------------------------------------------------------------------------------------
SELECT City, COUNT(CustomerID) AS Number_Of_Customers
FROM Customers
GROUP BY City;
--------------------------------------------------------------------------------------------
select P.ProductName , C.CategoryName from Products P
left join  Categories C
on P.CategoryID = C.CategoryID
------------------------------------------------------------------------------------
SELECT C.FirstName, O.OrderID, P.ProductName
FROM Customers C
LEFT JOIN Orders O 
    ON C.CustomerID = O.CustomerID
LEFT JOIN OrderDetails OD 
    ON O.OrderID = OD.OrderID
LEFT JOIN Products P 
    ON OD.ProductID = P.ProductID;

	--------------------------------------------------------------
	SELECT C.FirstName, 
       SUM(OD.Quantity * OD.UnitPrice) AS TotalRevenue
FROM Customers C
LEFT JOIN Orders O 
    ON C.CustomerID = O.CustomerID
LEFT JOIN OrderDetails OD 
    ON O.OrderID = OD.OrderID
GROUP BY C.FirstName;

