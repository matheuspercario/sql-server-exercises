/*
	COMANDO -> COUNT

	SELECT COUNT([DISTINCT][col1, col2, col3 ...])
	FROM tabela
*/
	SELECT *
	FROM Person.Person

	SELECT COUNT(*) AS 'Qntd. Linhas'
	FROM Person.Person

	SELECT COUNT(Title) AS 'Qntd. Titles in table'
	FROM Person.Person

	SELECT COUNT(DISTINCT Title) AS 'Qntd. Distinct Titles'
	FROM Person.Person


/* 
DESAFIO 01 - COUNT
	Quantos produtos temos cadastrados em nossa tabela de produtos? (production.product)
*/
	SELECT COUNT(DISTINCT Name) AS 'Qntd. Produtos'
	FROM Production.Product

/* 
DESAFIO 02 - COUNT
	Quantos tamanhos de produtos temos cadastrados em nossa tabela de produtos? 
	(production.product)
*/
	SELECT COUNT(Size) AS 'Total sizes'
	FROM Production.Product

/* 
DESAFIO 03 - COUNT
	Quantos tamanhos (unicos) de produtos temos cadastrados em nossa tabela de produtos? 
	(production.product)
*/
	SELECT COUNT(DISTINCT Size) AS 'Distinct type of sizes'
	FROM Production.Product