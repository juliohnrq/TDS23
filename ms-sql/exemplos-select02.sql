SELECT * FROM PERSON.person

SELECT FIRSTNAME,UPPER(FirstName), LastName, LOWER(LastName) FROM PERSON.Person

SELECT FirstName, LEN(FirstName) from Person.Person
WHERE LEN(FirstName) <= 2

SELECT FirstName, SUBSTRING(FirstName,1,1) FROM Person.Person
WHERE SUBSTRING(FirstName,2,1) = '.'

SELECT * FROM Production.Product

SELECT ProductNumber, REPLACE(ProductNumber,'-','-2023-') FROM Production.Product

select FirstName, MiddleName, LastName from Person.Person

create or alter view nomes as
select FirstName, MiddleName, LastName from person.person
where Title = 'Mr.'

select * from nomes
order by 3 desc

create or alter view emails as
select P.BusinessEntityID, P.FirstName, E.EmailAddress from Person.Person P
inner join Person.EmailAddress E
on P.BusinessEntityID = E.BusinessEntityID

select * from emails

select Person.Person.*, emails.* from Person.Person, emails
where Person.BusinessEntityID = emails.BusinessEntityID