--##select
select * from Northwind.dbo.Customers

SELECT * FROM Customers

SELECT City FROM Customers

select City , CompanyName from Customers	

select city,Region,country from Customers


--##distinct
SELECT Country FROM Customers

SELECT DISTINCT Country   FROM Customers

Select Country,city from Customers

SELECT DISTINCT Country,city FROM Customers

SELECT COUNT(DISTINCT Country) as DistinctCountries  FROM Customers

--## where
SELECT * FROM Customers
WHERE Country='Mexico'

SELECT * FROM Customers
WHERE CustomerID='ALFKI' 

select * from Customers
where city= 'london'  -- Not a case Sensitive

SELECT *  from Products

SELECT *  from Products
where ProductName='Chai'

SELECT *  from Products
WHERE UnitPrice = 18

SELECT * FROM Products
WHERE UnitPrice > 55

SELECT * FROM Products
WHERE UnitPrice >= 55

SELECT * FROM Products
WHERE UnitPrice < 55

SELECT * FROM Products
WHERE UnitPrice <= 55

SELECT * FROM Products
WHERE UnitPrice <>  18 --##not

SELECT * FROM Products
WHERE UnitPrice BETWEEN 50 AND 60

SELECT * FROM Customers
where city='paris' 

SELECT * FROM Customers
WHERE City in ('Paris','London','Berlin')

SELECT * FROM Customers
WHERE Country IN ('USA','UK')

--### And 
select distinct city  from customers

SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin'

SELECT * FROM Customers
WHERE Country='UK' AND City='London'

--### or
SELECT * FROM Customers
WHERE City='Berlin' OR City='mumbai'

SELECT * FROM Customers
WHERE Country='Germany' OR Country='Spain'

----## Not
SELECT * FROM Customers
WHERE NOT Country='Germany'

select * from customers
where not Country in ('Germany','Spain','USA','UK')

--## combine  ==  and,or not
SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='Aachen')

SELECT * FROM Customers
where Country = 'Germany' and City in ('Berlin','Aachen','Mumbai')

SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA'

SELECT * FROM Customers
WHERE NOT Country in ('Germany','USA')

SELECT * FROM Customers
WHERE Country='Germany' AND NOT (City='Berlin' or City='Aachen')

SELECT * FROM Customers
WHERE Country='USA' and not (Region='OR' or Region='WA')

--## order by 
SELECT * FROM Customers
ORDER BY Country 

SELECT * FROM Customers
ORDER BY Country DESC

select * from products
order by unitprice 

select * from products
order by unitprice desc

SELECT Country,City FROM Customers
ORDER BY Country, City

SELECT Country,City FROM Customers
ORDER BY Country ASC, City DESC

--## null values
--this is null METHOD

select * from Customers

select * from Customers
where Region is NULL

select * from Customers
where Fax is null

select * from Customers
where Region is null and Fax is null
 
--this is not null operator
SELECT CompanyName, ContactName, Region
FROM Customers
WHERE Region IS NOT NULL

SELECT ContactName,Region,Fax
FROM Customers
WHERE Region IS not NULL and Fax is  null

--## sql update statement

--update table
select * from Customers

select * into Customers2 from Customers

select * from Customers2

UPDATE Customers2
SET ContactName='Irfan'
WHERE CustomerID='ALFKI'

select * from Customers2

--update mutiple records

UPDATE Customers2
SET CompanyName = 'ANALYTICS', City= 'Mumbai', Country='India'
WHERE ContactName='Irfan'

select * from Customers2

--update warning
UPDATE Customers2
SET ContactName='Irfan'

select * from Customers2

---## delete statement

-- delete one row 
select * from Customers2

DELETE FROM Customers2 
WHERE CustomerID = 'ALFKI'

select * from Customers2

--- delete one column

alter table customers2
drop column Region

select * from customers2 

--delete all records

DELETE FROM Customers2

select * from Customers2 

--- delete entire table 
drop table Customers2

select * from Customers2 

--## top,limit or rownum clause

SELECT * FROM Customers

SELECT TOP 7 * FROM Customers

---top recent example
SELECT TOP 50 City  FROM Customers

--add a where clause
SELECT TOP 3 * FROM Customers
WHERE Country='Germany'

--## min() and max()

---min() 
select * from Products

SELECT MIN(UnitPrice) FROM Products 

SELECT MIN(UnitPrice) AS SmallestPrice
FROM Products

--max()
SELECT MAX(UnitPrice) AS HighestPrice
FROM Products

--## count(),avg() and sum functions

---count()
select * from Products

SELECT COUNT(UnitPrice) as Total_Count
FROM Products

--avg()
SELECT AVG(UnitPrice) as Avg_Unit_Price
FROM Products

--sum()
SELECT SUM(UnitPrice) AS Sums_Unit_Price 
FROM Products