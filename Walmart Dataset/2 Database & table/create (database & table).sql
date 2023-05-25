CREATE DATABASE Walmart
ON 
(
   NAME = Walmart_dat,
   FILENAME = 'D:\full project\Project 1\create database & table\Walmart.mdf',
   SIZE = 20MB,
   MAXSIZE = 70MB,
   FILEGROWTH = 5MB
)
LOG ON 
(
   NAME = Walmart_log,
   FILENAME = 'D:\full project\Project 1\create database & table\Walmart.ldf',
   SIZE = 20MB,
   MAXSIZE = 50MB,
   FILEGROWTH = 5MB
);
use Walmart ;

Create table DImCustomer 
(
  Customer_ID int IDENTITY(1,1) primary key ,
  Customer_Name  varchar(50),
  Country varchar(50),
  City varchar(50),
  State varchar(50)
);
create table DimDate 
(
  OrderDate Date  primary key ,
  ShipDate date ,
  Year int ,
  Quarter int ,
  month varchar(50) 
);
create table Product
(
  ProductID INT IDENTITY(1,1) PRIMARY KEY ,
  category varchar(50),
  ProductName varchar(60),
);
create table FactSales
(
  OrderID varchar(50),
  CustomerID int not null,
  OrderDate  Date  not null,
  ShipDate date not null ,
  productID int not null ,
  sales decimal(10,2),
  Quantity int ,
  Profit decimal(10,2),
  constraint FKcustomerID foreign key (CustomerID) references DImCustomer(Customer_ID),
  constraint FKorderdate  foreign key (OrderDate)  references DimDate(OrderDate),
  constraint FKProduct foreign key (productID) references Product(ProductID)
)

