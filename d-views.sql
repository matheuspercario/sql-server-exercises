-- VIEWS
-- --------------------------------------------------------------------------------------
/*
    * VIEWS
	Basicamente as "VIEWS" , ou do portugu�s, 'vis�es' tem o 
	objetivo extrair informa��es espec�ficas de uma tabela
	sem mostrar todo o conte�do da mesma.
	Tamb�m podem ser empregadas quando quer limitar o acesso
	a informa��o de alguns funcion�rios sobre o seu banco de
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
	SELECT	Title AS T�tulo, 
			FirstName,
			MiddleName, 
			LastName
	FROM Person.Person
	GO

	-- Resultado da VIEW
	SELECT * FROM [Person.Simplified]
	GO