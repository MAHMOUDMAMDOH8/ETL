use Sales;

create table DimProduct 
(
  ProductId int IDENTITY(1,1) PRIMARY KEY ,
  Category varchar(50) not null ,
  SubCategory varchar(50) not null ,
)
create table DimCastomer
(
  CustomerId int IDENTITY(1,1) PRIMARY KEY,
  CustomerName varchar(70) not null,
  City varchar(50) not null ,
  Region varchar(20)not null,
  State varchar(20) not null
)
create table DimDate
(
  OrderDate Date primary key ,
  Year INT not null,
  Quarter INT not null,
  Month int not null,
  Week INT not null
)
create table FOrder 
(
  OrderId int primary key ,
  CustomerId int not null,
  ProductId int not null,
  OrderDate Date not null ,
  Sales DECIMAL(10,2) not null,
  Discount DECIMAL(10,2) not null,
  Profit DECIMAL(10,2) not null,
  constraint FKCustomerID foreign key (CustomerId) references DimCastomer(CustomerId),
  constraint FKOrderDate Foreign key (OrderDate) references DimDate (OrderDate),
  constraint FKproduct Foreign key (ProductId) references DimProduct(ProductId)
)