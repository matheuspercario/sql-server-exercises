/*
	MANIPULACAO DE STRINGs
	- CONCAT
	- LEN
	- UPPER
	- LOWER
	- SUBSTRING
	- REPLACE

	O SQL server tambem nos permite manipular strings das mais diversas forma imagináveis.

	https://docs.microsoft.com/pt-br/sql/t-sql/functions/string-functions-transact-sql?view=sql-server-ver15
*/

-- EXEMPLOS
	
	SELECT *
	FROM Person.Person

	SELECT CONCAT(FirstName, ' ', LastName) AS 'NOME COMPLETO'
	FROM Person.Person

	SELECT UPPER(FirstName) AS MAIUSCULO, LOWER(FirstName) AS MINUSCULO
	FROM Person.Person

	SELECT FirstName, LEN(FirstName) AS TAMANHO
	FROM Person.Person

	SELECT LastName, SUBSTRING(LastName, 1, 4) AS SUBSTRING
	FROM Person.Person

	SELECT ProductNumber, REPLACE(ProductNumber, '-', '%%%') AS REPLACE
	FROM Production.Product
