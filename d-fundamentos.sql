-- DESAFIO FUNDAMENTOS SQL
-- --------------------------
/*
	Exercicio 01 
	Quantos produtos temos cadastrados no sistema que custam mais de 1500 dolares?
*/
	SELECT COUNT(*) AS 'Qntd. Price ( > 1500)'
	FROM Production.Product
	WHERE ListPrice > 1500

/*
	Exercicio 02
	Quantas pessoas temos com sobrenome que inicia com a letra P?
*/
	SELECT COUNT(LastName) AS 'QNTD. LASTNAME (P%)'
	FROM Person.Person
	WHERE LastName LIKE 'P%'

/*
	Exercicio 03
	Em quantas cidades unicas estão cadastrados nossos clientes?
*/
	SELECT COUNT(DISTINCT CITY) AS 'QNTD. DISTINCT CITY'
	FROM Person.Address

/*
	Exercicio 04
	Quais são as cidades unicas que temos cadastradas em nosso sistema?
*/
	SELECT DISTINCT CITY AS 'DISTINCT CITY'
	FROM Person.Address

/*
	Exercicio 05
	Quantos produtos vermelhor tem o preço entre 500 a 1000 dolares?
*/
	SELECT COUNT(*) as 'Product RED/Expansive'
	FROM Production.Product
	WHERE Color = 'RED' 
	AND ListPrice BETWEEN 500 AND 1000

/*
	Exercicio 06
	Quantos produtos cadastrados tem a palavra 'road' no nome deles?
*/
	SELECT COUNT(*) AS 'NAME LIKE %ROAD%'
	FROM Production.Product
	WHERE Name LIKE '%ROAD%'