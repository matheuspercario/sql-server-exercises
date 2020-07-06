-- VIEWS
-- --------------------------------------------------------------------------------------
/*
    * VIEWS
	Basicamente as "VIEWS" , ou do português, 'visões' tem o 
	objetivo extrair informações específicas de uma tabela
	sem mostrar todo o conteúdo da mesma.
	Também podem ser empregadas quando quer limitar o acesso
	a informação de alguns funcionários sobre o seu banco de
	dados.

	SINTAXE:

		CREATE VIEW [NomeView] AS
		SELECT coluna1, coluna2, coluna3, ...
		FROM tabela
		WHERE condicao

*/

	SELECT * FROM Person.Person
	GO

	CREATE VIEW [Person.Simplified] AS
	SELECT	Title AS Título, 
			FirstName,
			MiddleName, 
			LastName
	FROM Person.Person
	GO

	-- Resultado da VIEW
	SELECT * FROM [Person.Simplified]
	GO