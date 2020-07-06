/* 
DESAFIO 01 - ORDER BY & TOP
	Obter o product ID dos 10 produtos mais caros cadastrados no sistema, 
	listando do mais caro para o mais barato.
*/
	SELECT TOP 10 ProductID
	FROM Production.Product
	ORDER BY ListPrice DESC

/* 
DESAFIO 02 - ORDER BY & TOP
	Obter o nome e o numero do produto dos produtos que tem o ProductID entre 1 e 4.
*/
	SELECT TOP 4 Name, ProductNumber
	FROM Production.Product
	ORDER BY ProductID ASC
