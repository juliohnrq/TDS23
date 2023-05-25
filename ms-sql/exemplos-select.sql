SELECT * FROM PERSON.PERSON
WHERE BusinessEntityID = 5
OR BusinessEntityID = 111
OR BusinessEntityID = 23 


/*
AND - E 
OR - OU
NOT - ACOMPANHADO

=
>
<
<>
>=
<=

*/

SELECT Weight FROM Production.Product
WHERE Weight > 500
AND Weight <= 700

SELECT * FROM HumanResources.Employee
WHERE MaritalStatus = 'M'
AND SalariedFlag = '1'
AND BirthDate <= '1983/01/01'

SELECT * FROM PERSON.Person
WHERE FirstName = 'Peter'
AND LastName = 'Krebs'

SELECT * FROM PERSON.EmailAddress
WHERE BusinessEntityID = 26 

  SELECT COUNT(*) AS 'QTDE DE PRODUTOS' FROM Production.Product

  SELECT DISTINCT NAME FROM Production.Product

  SELECT DISTINCT TITLE FROM PERSON.Person


  SELECT * FROM Production.Product
  WHERE Color = 'Red' AND ListPrice BETWEEN 500 AND 1000

  SELECT COUNT(*) FROM Production.Product
  WHERE Name LIKE '%road%'

  SELECT TOP 10 * FROM Sales.SalesOrderDetail
  ORDER BY LineTotal DESC

  SELECT TOP 10 AVG(linetotal) from Sales.SalesOrderDetail


  select FirstName, COUNT(FirstName)as Qtd from Person.Person
  group by FirstName
  order by Qtd desc

  select SpecialOfferID, SUM(UnitPrice) as totalvendas from Sales.SalesOrderDetail
  group by SpecialOfferID
  order by SUM(UnitPrice)

  select ProductID, COUNT(ProductID) as Vendas from Sales.SalesOrderDetail
  group by ProductID
  
  select SUM(orderqty) from Sales.SalesOrderDetail

  select * from Sales.SalesOrderDetail

  select AVG(ListPrice) from Production.Product
  where Color = 'silver'
  
  SELECT ProductID, AVG(OrderQty) from Sales.SalesOrderDetail
  group by ProductID

  SELECT TOP 10 ProductID, SUM(LineTotal) from Sales.SalesOrderDetail
  group by ProductID
  order by SUM(LineTotal) desc

  SELECT ProductID, COUNT(ProductID) as qtd, AVG(OrderQty) as media from Production.WorkOrder
  group by ProductID

  select FirstName, COUNT(FirstName) as algmcoisa from Person.Person
  group by FirstName
  having FirstName LIKE 'bruna'
  order by algmcoisa asc

  select ProductID, SUM(LineTotal) as vendas
  from Sales.SalesOrderDetail
  group by ProductID
  having SUM(LineTotal) between 162000 and 500000
  order by vendas asc

  select ProductID, AVG(LineTotal) as Vendas from Sales.SalesOrderDetail
  group by ProductID
  having AVG(LineTotal) < 1000

