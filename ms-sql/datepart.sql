create database northwind

use northwind

select f1.nome, DATEPART(YEAR, f1.dataadmissao) as [ano admissao]
from Funcionarios f1, Funcionarios f2
where DATEPART(YEAR, f1.DataAdmissao) = DATEPART(year, f2.DataAdmissao)


use AdventureWorks2012

select AVG(TotalDue) from sales.SalesOrderHeader
--3915,9951

select AVG(TotalDue) media, DATEPART(MONTH, OrderDate) mes
from Sales.SalesOrderHeader
group by DATEPART(MONTH, OrderDate)
order by 2

select AVG(TotalDue) media, DATEPART(YEAR, OrderDate) mes
from Sales.SalesOrderHeader
group by DATEPART(YEAR, OrderDate)
order by 2

select ProductID, ListPrice from Production.Product as P
where ListPrice < (select AVG(ListPrice) from Production.Product)
order by ListPrice desc

select AVG(ListPrice) from Production.Product