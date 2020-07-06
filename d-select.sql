/* 
DESAFIO 01 - SELECT
	A equipe de marketing precisa fazer uma pesquisa sobre nomes mais comuns de seus 
	clientes e para isso quer o nome e sobre nome de todos clientes ques estao 
	cadastrados no sistema 
*/

	SELECT FirstName, LastName
	FROM Person.Person;


/* 
DESAFIO 02 - SELECT DISTINCT
	Quantos nomes e sobrenomes únicos temos em nossa tabela "Person.Person"?
*/
	SELECT DISTINCT LastName
	FROM Person.Person;