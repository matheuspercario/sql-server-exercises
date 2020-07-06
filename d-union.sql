/*
	OPERADOR UNION

	UNION combina dois ou mais resultados de um SELECT em um unico resultado,
	removendo os dados duplicados.

	Geralmente utiliza o UNION em tabelas desnormalizadas.

	
	SELECT coluna1(type1), coluna2(type2)
	FROM tabela1
	UNION
	SELECT coluna1(type1), coluna2(type2)
	FROM tabela2
*/

	SELECT FirstName, Title, MiddleName
	FROM Person.Person
	WHERE Title = 'MR.'
	UNION
	SELECT FirstName, Title, MiddleName
	FROM Person.Person
	WHERE MiddleName = 'A'


	SELECT AddressLine1, AddressLine2, StateProvinceID
	FROM [Person].[Address]
	WHERE AddressLine2 LIKE '%#%'
	UNION
	SELECT AddressLine1, AddressLine2, StateProvinceID
	FROM [Person].[Address]
	WHERE StateProvinceID > 178