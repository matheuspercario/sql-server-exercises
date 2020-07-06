-- FUNCOES DE AGREGACAO (MIN, MAX, SUM, AVG) 
-- GROUP BY
-- HAVING
--		A diferença entre o 'WHERE' e o 'HAVING' é que um filtra antes do agrupamento
--		e o outro filtra depois.
-- -----------------------------------------------
/*
	Exemplos
*/

-- Quanto de cada produto foi vendido até hoje?
	SELECT ProductID, SUM(OrderQty) AS 'TOT. VENDIDOS', COUNT(ProductID) AS 'CONTAGEM'
	FROM Sales.SalesOrderDetail
	GROUP BY ProductID

-- Quantos nomes de cada nome temos cadatrados em nosso sistema?
	SELECT FirstName, COUNT(FirstName) AS 'QNTD. NOMES'
	FROM Person.Person
	GROUP BY FirstName
		
-- Na tabela production.product qual é a media de preco para os produtos prata?
	SELECT Color, AVG(LISTPRICE) AS 'AVG PROD.'
	FROM Production.Product
	GROUP BY Color	
	HAVING Color = 'SILVER'

-- Quais produtos no total de vendas, estão entre 162k e 500k?
	SELECT TOP 10 ProductID, SUM(LineTotal) AS 'TOTAL (R$)'
	FROM Sales.SalesOrderDetail
	GROUP BY ProductID
	HAVING SUM(LineTotal) BETWEEN 162000 AND 500000

-- Quais nomes no sistema tem uma ocorrencia maior que 10 vezes, 
-- porem somente onde o titulo é 'Mr.'
	SELECT FirstName, COUNT(FirstName) AS 'CONTAGEM'
	FROM Person.Person
	WHERE Title = 'MR.'
	GROUP BY FirstName
	HAVING COUNT(FirstName) > 10

/*
----------------------------------------------------------------------------------
 DESAFIOS 
----------------------------------------------------------------------------------
 */

 /*
	Exercicio 01
	Quantas pessoas tem o mesmo Middle name, agrupadas por MiddleName
 */
	SELECT MiddleName, COUNT(MiddleName) AS 'CONT.'
	FROM Person.Person
	GROUP BY MiddleName

 /*
	Exercicio 02
	Em média, qual a quantidade (quantity) que cada produto é vendido na loja?
 */
	SELECT ProductID, AVG(OrderQty) AS 'MEDIA QNTD VENDA'
	FROM [Sales].[SalesOrderDetail]
	GROUP BY ProductID
	ORDER BY ProductID

 /*
	Exercicio 03
	Quais foram as 10 vendas que no total tiveram os maiores valores de venda (line total),
	agrupado por produto do maior valor para o menor.
 */
	SELECT TOP 10 ProductID, SUM(LineTotal) AS 'TOTAL (R$)'
	FROM Sales.SalesOrderDetail
	GROUP BY ProductID
	ORDER BY SUM(LineTotal) DESC

 /*
	Exercicio 04
	Quantos produtos e qual a quantidade media de produtos temos cadastrados nas nossas 
	ordem de servicos (WorkOrder), agrupados por ProductID
 */
	SELECT ProductID, COUNT(ProductID) AS 'CONTAGEM', AVG(StockedQty) AS 'AVG STQ. POR PROD'
	FROM Production.WorkOrder
	GROUP BY ProductID
	ORDER BY ProductID

 /*
	Exercicio 05
	Identifique as provincias (stateProvinceId) com o maior numero de cadastro em nosso sistema,
	então é preciso encontrar quais provincias estao registradas no banco de dados mais de 1000 vezes
 */
	SELECT StateProvinceID, COUNT(StateProvinceID) AS 'CONTAGEM'
	FROM Person.Address
	GROUP BY StateProvinceID
	HAVING COUNT(StateProvinceID) > 1000
	ORDER BY COUNT(StateProvinceID) DESC

 /*
	Exercicio 06
	Quais produtos (ProductID) não estão trazendo - em média - no mínimo 1 milhão em total
	de vendas (LineTotal)
 */
	SELECT ProductID, AVG(LineTotal) AS 'TOTAL (R$)'
	FROM Sales.SalesOrderDetail
	GROUP BY ProductID
	HAVING AVG(LineTotal) < 1000000
