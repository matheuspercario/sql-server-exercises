-- CONSTRAINTS
	-- CHECK
	-- NOT NULL
	-- UNIQUE
-- --------------------------------------------------------------------------------------
/*
    * CHECK
	Basicamente o "CHECK CONSTRAINT", ou do português, 'verificador de restrições' tem o 
	objetivo de impor uma restrição e impedir que durante o INSERT e o UPDATE valores
	que não respeitem a restrição não sejam validados.

	* NOT NULL
	Tem a finalidade de impedir que uma coluna não seja preenchida durante um INSERT

	* UNIQUE
	Tem a finalidade de impedir valores duplicados em uma coluna, pode ser considerado uma
	chave secundária


	SINTAXE:

		CREATE TABLE CarteiraMotorista (
			ID INT NOT NULL UNIQUE,
			Nome VARCHAR(255) NOT NULL,
			Idade INT CHECK (Idade >= 18)
		);
*/

	CREATE DATABASE TESTE_CHECK
	USE TESTE_CHECK

	CREATE TABLE CarteiraMotorista (
		ID INT NOT NULL,
		CodigoCNH INT UNIQUE NOT NULL,
		Nome VARCHAR(255) NOT NULL,
		Idade INT CHECK (Idade >= 18)
	);


	-- Testar CHECK
	INSERT INTO CarteiraMotorista (ID, CodigoCNH, Nome, Idade)
	VALUES
	(1, 1234, 'NICOLLI', 20),
	(2, 5234, 'MATHEUS BRUDER', 70),
	(3, 4532, 'dado', 17)

	UPDATE CarteiraMotorista
	SET Idade = 16
	WHERE ID = 6



	-- Testar NOT NULL
	INSERT INTO CarteiraMotorista (ID, CodigoCNH, Nome, Idade)
	VALUES (10, 3268, NULL, 26)
	
	UPDATE CarteiraMotorista
	SET NOME = NULL
	WHERE ID = 1



	-- Testar UNIQUE
	INSERT INTO CarteiraMotorista (ID, CodigoCNH, Nome, Idade)
	VALUES (2, 1234, 'KOPERNICO', 56)

	UPDATE CarteiraMotorista
	SET CodigoCNH = 1234
	WHERE Nome = 'MATHEUS BRUDER'


	SELECT * FROM CarteiraMotorista






	-- DESAFIOS ---------------------------------------
	CREATE TABLE TV (
		ID INT PRIMARY KEY,
		TELA CHAR (30) NOT NULL,
		TAMANHO FLOAT NOT NULL CHECK(TAMANHO >= 15),
		PESO FLOAT
	);

	-- 1
	INSERT INTO TV(ID, TELA, TAMANHO, PESO)
	VALUES
	(1, 'LCD', 20.5, 15),
	(2, 'LED', 14.5, 5)
	-- 2
	UPDATE TV
	SET TAMANHO = 14
	WHERE TELA LIKE 'LCD'



	CREATE TABLE Capacete (
		ID INT PRIMARY KEY,
		TAMANHO INT NOT NULL CHECK (TAMANHO >= 40),
		COR CHAR(20),
		TESTED BIT
	);

	-- 1
	INSERT INTO Capacete(ID, TAMANHO, COR, TESTED)
	VALUES
	(1, 45, 'BLACK', 1),
	(2, 30, 'RED', 0)
	-- 2
	UPDATE Capacete
	SET TAMANHO = 39
	WHERE COR = 'BLACK'



	DROP DATABASE TESTE_CHECK