-- INSERT INTO

-- -----------------------------------------------
/*
	Exemplo INSERT INTO

	INSERT INTO nomeTabela (coluna1, coluna2, ...)
	VALUES 
	(valor1, valor2, ...),
	(valor1, valor2, ...),
	(valor1, valor2, ...);

	OR

	INSERT INTO TabelaA (coluna1)
	SELECT coluna2
	FROM TabelaB

*/

	INSERT INTO Canal(CanalID, Nome, ContagemInscritos, DataCriacao)
	VALUES
	(1, 'Matheus Gamer', 0, GETDATE()),
	(2, 'NovoCanal', 0, GETDATE()),
	(3, 'LASTChannel', 0, GETDATE());


	SELECT * 
	FROM Canal




	-- DESAFIO +++++++++++++++++++++++++++++++++++++
	CREATE DATABASE DESAFIO
	USE DESAFIO
		
	-- 1 -------------------------------------------
		CREATE TABLE TableA (
			ColID INT PRIMARY KEY,
			ColNAME VARCHAR (50),
			ColIDADE INT DEFAULT 0,
			ColDATA DATETIME DEFAULT GETDATE()
		);

	-- 2 -------------------------------------------
		INSERT INTO TableA (ColID, ColNAME)
		VALUES(1, 'TESTE01')

	-- 3 -------------------------------------------
		INSERT INTO TableA (ColID, ColName)
		VALUES
		(2, 'TESTANDO'),
		(3, 'MATHEUS'),
		(4, 'HUAHDSA');

	-- 4 -------------------------------------------
		CREATE TABLE TableB (
			ColID INT PRIMARY KEY,
			ColNAME VARCHAR(50),
			ColIDADE INT DEFAULT 1,
			ColDATA DATETIME DEFAULT GETDATE()
		);

	-- 5 -------------------------------------------
		INSERT INTO TableB (ColID, ColNAME)
		VALUES(10, 'NIKESHOX')

	-- 6 -------------------------------------------	
		INSERT INTO TableA 
		SELECT *
		FROM TableB

		SELECT * FROM TableA
		SELECT * FROM TableB