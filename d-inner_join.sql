-- JOIN's (JUNÇÕES)
-- * Inner join
-- * Outer join
-- * Self join 

-- -----------------------------------------------
/*
	Exemplos - INNER JOIN

	SELECT atributos
	FROM tabela1
	INNER JOIN tabela2 on condiçao (foreign key = primary key)
*/

-- Traga como resultado -> BusinessEntityId, FirstName, LastName, EmailAdress
	SELECT PP.BusinessEntityID, PP.FirstName, PP.LastName, PE.EmailAddress
	FROM Person.Person AS PP
	INNER JOIN Person.EmailAddress AS PE 
		ON PP.BusinessEntityID = PE.BusinessEntityID
	ORDER BY PP.BusinessEntityID

-- Traga como resultado -> Preco (ListPrice), Nome do produto, Nome da subcategoria
	SELECT P.ListPrice AS 'PREÇO', P.Name AS 'NOME', PS.Name AS 'SUBCATEGORIA'
	FROM Production.Product AS P
	INNER JOIN Production.ProductSubcategory AS PS
		ON P.ProductSubcategoryID = PS.ProductSubcategoryID
	ORDER BY SUBCATEGORIA


-- =================================================================================
/*
	DESAFIOS - INNER JOIN
*/

-- Traga como resultado -> BusinessEntityId, Name, PhoneNumberTypeID, PhoneNumber
	SELECT TOP 5 *
	FROM Person.PhoneNumberType
	SELECT TOP 5 *
	FROM Person.PersonPhone

	SELECT PP.BusinessEntityID, PNT.Name, PP.PhoneNumberTypeID, PP.PhoneNumber
	FROM Person.PersonPhone AS PP
	INNER JOIN Person.PhoneNumberType AS PNT
		ON PP.PhoneNumberTypeID = PNT.PhoneNumberTypeID


-- Traga como resultado -> AdressId, City, StateProvinceId, StateName
	SELECT TOP 5 *
	FROM Person.StateProvince
	SELECT TOP 5 *
	FROM Person.Address

	SELECT A.AddressID, A.City, A.StateProvinceID, SP.Name
	FROM Person.StateProvince AS SP
	INNER JOIN Person.Address AS A
		ON SP.StateProvinceID = A.StateProvinceID