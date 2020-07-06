/* 
DESAFIO 01 - WHERE
	A equipe de producao precisa do nome de todas as pecas que pesam (weight) mais de 500kg, 
	mas não maisque 700kg para a inspecao.
*/
	SELECT Name
	FROM Production.Product
	WHERE Weight > 500 AND Weight <= 700

/* 
DESAFIO 02 - WHERE
	Foi pedido pelo marketing a relacao de todos os empregados (employes) que sao casados (married)
	e que sao assalariados (salaried).
*/
	SELECT * 
	FROM [HumanResources].[Employee]
	WHERE MaritalStatus = 'M' AND SalariedFlag = 1

/* 
DESAFIO 03 - WHERE
	Um usuário chamado "Peter Krebs" esta devendo um pagamento, consiga o email dele para que possamos
	enviar uma cobranca! (use a tabela 'Person.Person' e depois a 'Person.EmailAdress')
*/
	SELECT EmailAddress
	FROM [Person].[EmailAddress]
	WHERE BusinessEntityID = (
								SELECT BusinessEntityID 
								FROM [Person].[Person]
								WHERE FirstName = 'Peter' AND LastName = 'Krebs'
							 )