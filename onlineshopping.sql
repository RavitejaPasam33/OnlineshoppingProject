

USE onlineshopping;

CREATE TABLE Users (
ID INT IDENTITY(1,1) PRIMARY KEY,
FirstName VARCHAR(100), 
LastName VARCHAR(100), 
Password VARCHAR(100), 
Email VARCHAR(100),
Type VARCHAR(100), 
Status INT,
CreatedOn Datetime);

CREATE TABLE clothes (
clothes_id INT IDENTITY(1,1) PRIMARY KEY,
Name VARCHAR(100),
UnitPrice DECIMAL(18, 2),
Discount DECIMAL(18, 2),
Quantity INT, 
ImageUrl VARCHAR(100),
Status INT
)

CREATE TABLE Cart 
(ID INT IDENTITY(1,1) PRIMARY KEY, 
UserId INT,
garment_price INT, 
UnitPrice DECIMAL(18, 2), 
Discount DECIMAL(18, 2),
Quantity INT, 
TotalPrice DECIMAL(18, 2))


CREATE TABLE Orders (
ID INT IDENTITY(1,1) PRIMARY KEY, 
UserID INT, 
OrderNo VARCHAR(100),
OrderTotal DECIMAL(18, 2),
OrderStatus VARCHAR(100))

CREATE TABLE OrderedItems (
ID INT IDENTITY(1,1) PRIMARY KEY,
OrderID INT,
clothes_id INT, 
UnitPrice DECIMAL(18, 2),
Discount DECIMAL(18, 2), 
Quantity INT,
TotalPrice DECIMAL(18, 2),
)
