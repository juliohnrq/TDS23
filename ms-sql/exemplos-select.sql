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
