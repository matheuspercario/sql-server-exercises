/*
	SUBSELECT ou SUBQUERY	

	Basicamente é um select dentro de outro, evitando que precise realizar um JOIN entre duas tabelas.
	Desse modo, conclui-se que o SUBSELECT é muito mais eficiente.
*/

-- Monte um relatorio para mim de todos os produtos cadastrados que tem preco de venda acima da media.
	SELECT * 
	FROM Production.Product
	WHERE ListPrice > (SELECT AVG(ListPrice)
						FROM Production.Product)
	ORDER BY ListPrice ASC


-- O nome dos funcionarios que possui o cargo de 'Design Engineer'
	
	-- SUBSELECT
	SELECT CONCAT(FirstName, ' ', LastName) AS 'DESIGN ENGINEER'
	FROM Person.Person
	WHERE BusinessEntityID IN (	SELECT BusinessEntityID
								FROM HumanResources.Employee
								WHERE JobTitle = 'DESIGN ENGINEER'	)

	-- INNER JOIN
	SELECT CONCAT(FirstName, ' ', LastName) AS 'DESIGN ENGINEER'
	FROM Person.Person AS PP
	INNER JOIN HumanResources.Employee AS HE
		ON PP.BusinessEntityID = HE.BusinessEntityID
	WHERE JobTitle = 'DESIGN ENGINEER'
	

/*
	DESAFIOS SUBQUERY
	-----------------------------
*/

-- Encontre todos os endereços que estão no estado de 'Alberta', pode trazer todas informacoes.

	-- SUBQUERY
	SELECT * 
	FROM Person.Address
	WHERE StateProvinceID = (	SELECT StateProvinceID
								FROM Person.StateProvince
								WHERE NAME = 'ALBERTA' )

	-- INNER JOIN
	SELECT *
	FROM Person.Address AS A
	INNER JOIN Person.StateProvince AS SP
		ON A.StateProvinceID = SP.StateProvinceID
	WHERE SP.Name = 'ALBERTA'