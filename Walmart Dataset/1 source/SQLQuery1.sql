use Walmart 
-- know data
-----date
select distinct(year) from DimDate --[2011 : 2014]
------customer
select * from DImCustomer --  686 customer 
select distinct(city) from DImCustomer -- 128 city
select distinct(State) from DImCustomer -- state
------product
select * from Product -- 1,494 product 
select distinct(category) from Product -- 17 category
-------------------------------------------------------------------------------------
-----analyze 
-------------product table & sales
-- total product sales 
select P.ProductName ,sum(F.sales) as 'total sales '
from FactSales F inner join Product P 
on  F.productID = P.ProductID
group by P.ProductName
order by 'total sales ' desc
--top 20 product sales 
select top(20) P.ProductName ,sum(F.sales) as 'total sales '
from FactSales F inner join Product P 
on  F.productID = P.ProductID
group by P.ProductName
order by 'total sales ' desc
-- total sales per category 
select P.category ,sum(F.sales) as 'total sales '
from FactSales F inner join Product P 
on  F.productID = P.ProductID
group by P.category
order by 'total sales ' desc
-- top 5 category sales
select top(5) P.category ,sum(F.sales) as 'total sales '
from FactSales F inner join Product P 
on  F.productID = P.ProductID
group by P.category
order by 'total sales ' desc
-------date & sales 
--sales per year 
select D.Year ,sum(F.sales) as'Total sales'
from DimDate D inner join FactSales F 
on D.OrderDate = F.OrderDate
group by D.Year
--sales per month 
select D.month ,sum(F.sales) as'Total sales'
from DimDate D inner join FactSales F 
on D.OrderDate = F.OrderDate
group by D.month
order by 1  desc