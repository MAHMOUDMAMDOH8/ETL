use SuperStore;
create table DimCustomer
(
   CustomerID varchar(50) primary key ,
   CustomerName varchar(50) not null,
   Segment varchar(50) not null,
)
create table Dimlocation
(
   LocationID int identity(1,1) primary key ,
   Country varchar(50) not null ,
   City varchar(50) not null,
   State varchar(50) not null ,
   PostalCode varchar(15),
   Region varchar(10)
)
create table DimProduct
(
   ProductID varchar(50) primary key ,
   ProductName varchar(250) not null,
   Category varchar(50) not null,
   SubCategory varchar(50) not null
)
create table DimDate
( 
   OrderDate Date primary key ,
   ShipDate Date  not null ,
   Year  int not null,
   Quarter int not null ,
   Month int not null,
   DayofWeak int ,
)
create table FSuperstore
(
   OrderId varchar(50) primary key ,
   CustomerID varchar(50) not null,
   LocationID int not null,
   ProductID varchar(50) not null,
   OrderDate Date not null,
   ShipMode VARCHAR(50),
   Sales DECIMAL(18, 2),
   Quantity INT,
   Discount DECIMAL(18, 2),
   Profit DECIMAL(18, 2),
   constraint FKCustomer Foreign key (CustomerID) references DimCustomer(CustomerID) ,
   constraint FKLocation Foreign key (LocationID) references Dimlocation(LocationID),
   constraint FKProdyct Foreign key (ProductID) references DimProduct(ProductID),
   constraint FKDate Foreign key (OrderDate) references DimDate(OrderDate)

)
