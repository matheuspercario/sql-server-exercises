-- UPDATE

-- -----------------------------------------------
/*
	Exemplo UPDATE
	Atualizar linhas que já foram inseridas no banco de dados.

	UPDATE nomeTabela
	SET coluna1 = valor1
		coluna2 = valor2
	WHERE condicao

*/

	USE YoutubeLite
	SELECT * FROM Canal
	SELECT * FROM Video

	UPDATE Canal
	SET ContagemInscritos = 100
	WHERE CanalID = 3

	UPDATE Canal
	SET 
		ContagemInscritos = 100,
		Nome = 'Matheus GamePlay'
	WHERE CanalID = 1


	-- DESAFIO
	UPDATE Canal
	SET
		ContagemInscritos = ContagemInscritos + 1000
	WHERE CanalID between 1 and 2