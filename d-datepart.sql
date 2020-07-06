/*
	FUNCAO DATEPART

	É a função responsável por extrair partes da data do SQL Server, isto é,
	a partir da data de uma tupla, consigo extrair inúmeras informações.

	https://docs.microsoft.com/pt-br/sql/t-sql/functions/datepart-transact-sql?view=sql-server-ver15

	
	SELECT coluna1, DATEPART(datepart, date)
	FROM tabela1
	
*/

	SELECT *
	FROM Sales.SalesOrderHeader


-- EXEMPLOS DE USO
	SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS 'MES'
	FROM Sales.SalesOrderHeader

	SELECT SalesOrderID, DATEPART(DAY, OrderDate) AS 'DIA'
	FROM Sales.SalesOrderHeader

	SELECT SalesOrderID, DATEPART(YEAR, OrderDate) AS 'ANO'
	FROM Sales.SalesOrderHeader

	SELECT SalesOrderID, DATEPART(WEEKDAY, OrderDate) AS 'DIA-SEMANA'
	FROM Sales.SalesOrderHeader

	SELECT SalesOrderID, DATEPART(DAYOFYEAR, OrderDate) AS 'DIA-ANO'
	FROM Sales.SalesOrderHeader

-- EXEMPLO USO AVANCADO
	SELECT DATEPART(MONTH, OrderDate) AS MÊS, AVG(TotalDue) AS 'MÉDIA TOTAL'
	FROM Sales.SalesOrderHeader
	GROUP BY DATEPART(MONTH, OrderDate)
	ORDER BY MÊS

	SELECT DATEPART(YEAR, OrderDate) AS ANO, AVG(TotalDue) AS 'MÉDIA TOTAL'
	FROM Sales.SalesOrderHeader
	GROUP BY DATEPART(YEAR, OrderDate)
	ORDER BY ANO


-- Encontrar qualquer outra tabela com data e extrair informação mensal e anual
	SELECT *
	FROM HumanResources.Employee

	SELECT DATEPART(MONTH, HireDate) AS MÊS, SUM(VacationHours) AS 'HORAS DE FERIAS'
	FROM HumanResources.Employee
	GROUP BY DATEPART(MONTH, HireDate)

	SELECT DATEPART(YEAR, HireDate) AS ANO, SUM(VacationHours) AS 'HORAS DE FERIAS'
	FROM HumanResources.Employee
	GROUP BY DATEPART(YEAR, HireDate)