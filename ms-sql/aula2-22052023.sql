select	au_fname,
		phone
from dbo.authors
order by au_fname asc

select top 5 * from dbo.sales
order by qty desc

select * from dbo.sales

select * from dbo.authors
where state = 'CA'
and contract = 0
order by city

select SUM(qty) as from dbo.sales

SELECT au_id, au_lname, au_fname, phone, address, city, state, zip, contract
FROM authors WHERE au_fname LIKE 'b%'

SELECT * FROM authors
SELECT * FROM titleauthor

SELECT authors.*, titleauthor.*
FROM authors, titleauthor
WHERE authors.au_id = titleauthor.au_id


