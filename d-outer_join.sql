-- JOIN's (JUNÇÕES)
-- * Inner join
-- * Outer join
-- * Self join 

-- -----------------------------------------------
-- -----------------------------------------------
/*
	Exemplos - OUTER JOIN

	SELECT atributos
	FROM tabela1
	LEFT/RIGHT JOIN tabela2 on condiçao (foreign key = primary key)
*/

-- Quero descobrir quais pessoas NAO TEM um cartao de credito registrado.
	SELECT * 
	FROM Person.Person AS PP
	INNER JOIN Sales.PersonCreditCard AS PC
		ON PP.BusinessEntityID = PC.BusinessEntityID
		-- INNER JOIN = 19.118
	
	SELECT * 
	FROM Person.Person AS PP
	LEFT JOIN Sales.PersonCreditCard AS PC
		ON PP.BusinessEntityID = PC.BusinessEntityID
		-- LEFT JOIN = 19.972


	SELECT * 
	FROM Person.Person AS PP
	LEFT JOIN Sales.PersonCreditCard AS PC
		ON PP.BusinessEntityID = PC.BusinessEntityID
	WHERE PC.BusinessEntityID IS NULL

	SELECT 19972 - 19118 AS 'NO. PESSOAS SEM CARTAO'