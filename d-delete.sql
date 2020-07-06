-- DELETE

-- -----------------------------------------------
/*
	Exemplo UPDATE
	Apagar linhas do banco de dados, lembre-se da condição!

	DELETE FROM nomeTabela
	WHERE condicao

*/

	USE YoutubeLite
	SELECT * FROM Canal
	SELECT * FROM Video
	/*
	INSERT INTO Canal(CanalID, Nome, ContagemInscritos, DataCriacao)
	VALUES(3, 'LASTChannel', 1500, GETDATE())
	*/

	DELETE FROM Canal
	WHERE Nome LIKE '%CHANNEL%'