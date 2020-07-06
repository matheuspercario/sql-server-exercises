-- ALTER TABLE

-- -----------------------------------------------
/*
	Exemplo ALTER TABLE
	Usado para alterar a estrutura física da tabela

	ALTER TABLE nomeTabela
	ACAO

	> Exemplos de acao
	1. Add, remover ou alterar uma coluna;
	2. Setar valores padrões para uma coluna;
	3. Add ou remover restricoes de uma coluna;
	4. Renomear uma tabela

*/

	CREATE DATABASE Youtube
	USE Youtube

	CREATE TABLE youtube (
		ID INT PRIMARY KEY,
		Nome VARCHAR(150) UNIQUE NOT NULL,
		Categoria VARCHAR(50) NOT NULL,
		DtCriacao DATETIME DEFAULT GETDATE()
	);

	-- Adicionar coluna
	ALTER TABLE youtube
	ADD Ativo BIT

	-- Alterar limite da coluna
	ALTER TABLE youtube
	ALTER COLUMN categoria VARCHAR(200) NOT NULL

	-- Alterar nome de uma coluna
	EXEC sp_rename 'youtube.Nome', 'NomeCanal', 'COLUMN'
	EXEC sp_rename 'youtube.ativo', 'Ativo', 'COLUMN'

	-- Alterar nome tabela
	EXEC sp_rename 'youtube', 'Canal'



	-- DESAFIO ++++++++++++++++++++++++++++++++++++++++++
	CREATE TABLE Video (
		ID INT PRIMARY KEY,
		Nome VARCHAR(50) NOT NULL UNIQUE,
		Descricao VARCHAR(500) NOT NULL,
		Duracao INT NOT NULL,
	);
	-- 1 -------------------------------------------
	ALTER TABLE Video
	ALTER COLUMN Descricao CHAR(100) NOT NULL

	-- 2 -------------------------------------------
	EXEC sp_rename 'Video.Nome', 'NomeVideo'

	-- 3 -------------------------------------------
	EXEC sp_rename 'Video', 'YtVideo'