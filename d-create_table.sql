-- CREATE TABLE

-- -----------------------------------------------
/*
	Exemplo

	CREATE TABLE nome tabela (
		coluna1 tipo restricaoColuna,
		coluna2 tipo restricaoColuna,
		coluna3 tipo,
		coluna4 tipo,
		coluna5 restricaoColuna,
		...
	);
	

	RESTRIÇÕES
		- NOT NULL: Não permite nulos;
		- UNIQUE: Força que todos valores desta coluna sejam diferentes;
		- PRIMARY KEY: Junção de NOT NULL e UNIQUE;
		- FOREING KEY: identifica unicamente uma linha em outra tabela;
		- CHECK: Força uma condição específica em uma tabela (max 10 caracteres ou data acima de tal dia);
		- DEFAULT: Força um valor padrão quando nenhum padrão é passado.

*/

	-- CREATE DATABASE YoutubeLite
	-- USE YoutubeLite

	CREATE TABLE Canal (
		CanalID INT PRIMARY KEY,
		Nome VARCHAR(150) NOT NULL,
		ContagemInscritos INT DEFAULT 0,
		DataCriacao DATETIME NOT NULL
	);

	CREATE TABLE Video (
		VideoID INT PRIMARY KEY,
		Nome VARCHAR(150) NOT NULL,
		Visualizacoes INT DEFAULT 0,
		Likes INT DEFAULT 0,
		Deslikes INT DEFAULT 0,
		Duracao INT NOT NULL,
		CanalID INT FOREIGN KEY REFERENCES Canal(CanalID)
	);


	-- DESAFIO CREATE TABLE
		CREATE DATABASE DESAFIO
		USE DESAFIO

		CREATE TABLE Pessoa (
			PessoaID INT PRIMARY KEY,
			Nome VARCHAR(150) NOT NULL,
			Idade INT,
			Tamanho FLOAT
		);

		CREATE TABLE Computador (
			CompID INT PRIMARY KEY,
			Preço FLOAT NOT NULL,
			TamanhoTela FLOAT,
			PessoaID INT FOREIGN KEY REFERENCES Pessoa(PessoaID)
		);

		-- DROP DATABASE DESAFIO