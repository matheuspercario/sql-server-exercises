/*
	TIPOS DE DADOS NO SQL SERVER

	1. BOLEANOS
		Por padrão, é inicializado com nulo e, pode receber 0 ou 1.
		# BIT

	2. CARACTERES
		# TAMANHO FIXO (CHAR) - qtd. fixa de caracteres, sempre ocupado todo espaço.
		# TAMANHO VARIAVEL (VARCHAR(n) ou NVARCHAR(n)) - ocupa uma valor dinâmico de espaço, não todo.

	3. NUMEROS
		# VALORES EXATOS - limites de bits aumentam 
			i. TINYINT - somente valores inteiros
			ii. SMALLINT - somente valores inteiros
			iii. INT - somente valores inteiros
			iv. BIGINT - somente valores inteiros
			v. NUMERIC ou DECIMAL - perimite definir o tamanho do numero e casas decimais

		# VALORES APROXIMADOS
			i. REAL - precisao aproximada de até 15 digitos
			ii. FLOAT - mesmo coiceito do real

	4. TEMPORAIS
		# DATE				- armazena -> aaaa/mm/dd.
		# DATETIME			- armazena -> aaaa/mm/dd:hh:mm:ss.
		# DATETIME2			- armazena -> aaaa/mm/dd:hh:mm:ssssssss (milisegundos).
		# SMALLDATETIME		- armazena -> '1900-01-01:00:00:00' até '2079-06-06:23:59:59'.
		# TIME				- armazena -> hh:mm:ss.sssssss.
		# DATETIMEOFFSET	- armazena tudo, incluindo o fuso horario do pais em questão.


		FONTES
		https://www.rlsystem.com.br/tipos-dados-sql-server/
		https://docs.microsoft.com/pt-br/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver15
*/