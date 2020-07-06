-- JOIN's (JUNÇÕES)
-- * Inner join
-- * Outer join
-- * Self join 

-- -----------------------------------------------
/*
	Exemplos - SELF JOIN

	SELECT atributos
	FROM tabela1, tabela1
	WHERE condicao
*/

-- EXEMPLOS

	-- Todos os clientes que moram na mesma regiao (Region).
	SELECT CA.ContactName, CA.Region, CB.ContactName, CB.Region
	FROM Customers AS CA, Customers AS CB
	WHERE CA.Region = CB.Region

	-- Nome e data de contratacao de todos funcionarios que foram contratados no mesmo ano.
	SELECT A.FirstName, A.HireDate, B.FirstName, B.HireDate
	FROM Employees AS A, Employees AS B
	WHERE DATEPART(YEAR, A.HireDate) = DATEPART(YEAR, B.HireDate)



/*
	DESAFIOS SELF-JOIN
	------------------------
*/

-- Na tabela detalhe do pedido (Order Detail), quais produtos tem o mesmo percentual de desconto?
	SELECT A.ProductID, A.Discount, B.ProductID, B.Discount
	FROM [Order Details] AS A, [Order Details] AS B
	WHERE A.Discount = B.Discount
