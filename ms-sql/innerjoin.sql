create database AulaJoin

create table tabelaA(
	id int,
	nome varchar(10)
	);

create table tabelaB(
	id int,
	nome varchar(10)
	);

select * from sys.tables

insert into TabelaA(id, nome) values(1,'Robo')
insert into TabelaA(id, nome) values(2,'Macaco')
insert into TabelaA(id, nome) values(3,'Samurai')
insert into TabelaA(id, nome) values(4,'Monitor')

select * from tabelaA
select * from tabelaB

insert into TabelaB values(1,'Espada')
insert into TabelaB values(2,'Robo')
insert into TabelaB values(3,'Mario')
insert into TabelaB values(4,'Samurai')

select * from tabelaA as A
inner join tabelaB as B
on A.nome = B.nome

select * from tabelaA A
full outer join tabelaB B
on A.nome = B.nome


select * from tabelaA A
left join tabelaB B
on A.nome = B.nome
where B.nome is null

select * from Production.Product
where name like '%chai%'
union
select * from Production.Product
where name like '%decal%'
order by Name asc



select P.BusinessEntityID, P.FirstName, P.LastName, PE.EmailAddress, HR.JobTitle
from Person.Person P
inner join Person.EmailAddress PE
on P.BusinessEntityID = PE.BusinessEntityID
inner join HumanResources.Employee HR
on P.BusinessEntityID = HR.BusinessEntityID
where HR.JobTitle like '%Desi%'
order by P.BusinessEntityID asc

select PP.ListPrice, PP.Name, PS.Name as Namesub from Production.Product PP
inner join Production.ProductSubcategory PS
on PP.ProductSubcategoryID = PS.ProductSubcategoryID
order by PP.ListPrice asc

select PERSON.FirstName, TELEFONE.BusinessEntityID, TIPO.Name as Tipo, TELEFONE.PhoneNumber, TIPO.PhoneNumberTypeID
from Person.PersonPhone TELEFONE
inner join Person.PhoneNumberType TIPO
on TELEFONE.PhoneNumberTypeID = TIPO.PhoneNumberTypeID
inner join Person.Person PERSON
on TELEFONE.BusinessEntityID = PERSON.BusinessEntityID
order by FirstName asc

select * from Person.Person

select pessoa.BusinessEntityID, pessoa.FirstName, cartao.CreditCardID
from Person.Person pessoa
inner join Sales.PersonCreditCard cartao
on pessoa.BusinessEntityID = cartao.BusinessEntityID

select pessoa.BusinessEntityID, pessoa.FirstName, cartao.CreditCardID, email.EmailAddress
from Person.Person pessoa
left join Sales.PersonCreditCard cartao
on pessoa.BusinessEntityID = cartao.BusinessEntityID
left join Person.EmailAddress email
on pessoa.BusinessEntityID = email.BusinessEntityID
where cartao.CreditCardID is not null
order by BusinessEntityID asc

select * from Sales.PersonCreditCard
select * from Person.EmailAddress

select AVG(ListPrice) from Production.Product
--438,6662

select ProductID, ListPrice from Production.Product
where ListPrice > 438.6662

select ProductID, ListPrice from Production.Product
where ListPrice > (select AVG(ListPrice) from Production.Product)

select * from Person.Person
select * from HumanResources.Employee
where JobTitle = 'DESIGN ENGINEER'

select FirstName from Person.Person
where BusinessEntityID in (5,6,15)

select FirstName
from Person.Person
where BusinessEntityID in (select BusinessEntityID from HumanResources.Employee
							where JobTitle = 'DESIGN ENGINEER')

