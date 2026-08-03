USE ContosoRetailDW
GO

/*1. Declare 4 variáveis float. Atribua os seguintes valores a elas: 

valor1 = 10 
valor2 = 5 
valor3 = 34 
valor4 = 7*/ 

DECLARE @valor1 AS FLOAT,
		@valor2 AS FLOAT,
		@valor3 AS FLOAT,
		@valor4 AS FLOAT;

SET @valor1 = 10;
SET @valor2 = 5;
SET @valor3 = 34;
SET @valor4 = 7;

/*a) Crie uma nova variável para armazenar o resultado da soma entre valor1 e valor2. Chame 
essa variável de soma.*/

DECLARE @soma AS FLOAT
SET @soma = @valor1 + @valor2
SELECT @soma AS 'Soma'

/*b) Crie uma nova variável para armazenar o resultado da subtração entre valor3 e valor 4. 
Chame essa variável de subtracao.*/

DECLARE @subtracao AS FLOAT
SET @subtracao = @valor3 - @valor4
SELECT @subtracao AS 'Subtração'

/*c) Crie uma nova variável para armazenar o resultado da multiplicação entre o valor 1 e o 
valor4. Chame essa variável de multiplicacao.*/

DECLARE @multiplicacao AS FLOAT
SET @multiplicacao = @valor1 * @valor4
SELECT @multiplicacao AS 'Multiplicação'

/*d) Crie uma nova variável para armazenar o resultado da divisão do valor3 pelo valor4. Chame 
essa variável de divisao. Obs: O resultado deverá estar em decimal, e não em inteiro.*/

DECLARE @divisao AS FLOAT
SET @divisao = @valor3 / @valor4
SELECT @divisao AS 'Divisão'

/*e) Arredonde o resultado da letra d) para 2 casas decimais.*/

SELECT ROUND(@divisao, 2) AS 'Casas Decimais'

/*2. Para cada declaração das variáveis abaixo, atenção em relação ao tipo de dado que deverá ser 
especificado. 

a) Declare uma variável chamada ‘produto’ e atribua o valor de ‘Celular’.

b) Declare uma variável chamada ‘quantidade’ e atribua o valor de 12.  

c) Declare uma variável chamada ‘preco’ e atribua o valor 9.99. 

d) Declare uma variável chamada ‘faturamento’ e atribua o resultado da multiplicação entre 
‘quantidade’ e ‘preco’. 

e) Visualize o resultado dessas 4 variáveis em uma única consulta, por meio do SELECT. */

DECLARE @produto VARCHAR(50)
DECLARE @quantidade INT
DECLARE @preco FLOAT
DECLARE @faturamento FLOAT

SET @produto = 'Celular'
SET @quantidade = 12
SET @preco = 9.99
SET @faturamento = @quantidade * @preco

SELECT 
	@produto AS 'Produto',
	@quantidade AS 'Quantidade',
	@preco AS 'Preço Unitário',
	@faturamento AS 'Faturamento'

/*3. Você é responsável por gerenciar um banco de dados onde são recebidos dados externos de 
usuários. Em resumo, esses dados são: - Nome do usuário - Data de nascimento - Quantidade de pets que aquele usuário possui 
Você precisará criar um código em SQL capaz de juntar as informações fornecidas por este 
usuário. Para simular estes dados, crie 3 variáveis, chamadas: nome, data_nascimento e 
num_pets. Você deverá armazenar os valores ‘André’, ‘10/02/1998’ e 2, respectivamente. 

O resultado final a ser alcançado é mostrado no print abaixo: 

Dica: você precisará utilizar as funções CAST e FORMAT para chegar no resultado. */

DECLARE @varNome VARCHAR(30)
DECLARE @varDataNascimento DATETIME
DECLARE @varNumPets INT

SET @varNome = 'André'
SET @varDataNascimento = '10/02/1998'
SET @varNumPets = 2

SELECT 'Meu nme é ' + CAST(@varNome AS VARCHAR(30)) + ', nasci em ' + FORMAT(@varDataNascimento, 'dd/MMMM/yyyy') + ' e tenho ' + CAST(@varNumPets AS VARCHAR(30)) + ' pets.'

/*4. Você acabou de ser promovido e o seu papel será realizar um controle de qualidade sobre as 
lojas da empresa.  

A primeira informação que é passada a você é que o ano de 2008 foi bem complicado para a 
empresa, pois foi quando duas das principais lojas fecharam. O seu primeiro desafio é descobrir 
o nome dessas lojas que fecharam no ano de 2008, para que você possa entender o motivo e 
mapear planos de ação para evitar que outras lojas importantes tomem o mesmo caminho. 

O seu resultado deverá estar estruturado em uma frase, com a seguinte estrutura: 

‘As lojas fechadas no ano de 2008 foram:  ’ + nome_das_lojas  

Obs: utilize o comando PRINT (e não o SELECT!) para mostrar o resultado. */

SELECT	
	StoreName, CloseDate
FROM 
	DimStore
WHERE Status = 'Off'
GO

SELECT	
	StoreName, CloseDate
FROM 
	DimStore
WHERE FORMAT(CloseDate, 'yyyy') = 2008
GO

DECLARE @varListaLojas VARCHAR(50)
SET @varListaLojas = ''

SELECT
	@varListaLojas = @varListaLojas + StoreName + ', '
FROM
	DimStore
WHERE FORMAT(CloseDate, 'yyyy') = 2008

PRINT 'As lojas fechadas no ano de 2008 foram: ' + @varListaLojas
GO

/*5. Você precisa criar uma consulta para mostrar a lista de produtos da tabela DimProduct para 
uma subcategoria específica: ‘Lamps’. 

Utilize o conceito de variáveis para chegar neste resultado.*/

SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory

DECLARE @varIdSubcategoria INT
DECLARE @varNomeSubcategoria VARCHAR(30)

SET @varNomeSubcategoria = 'Fans'
SET @varIdSubcategoria = (SELECT ProductSubcategoryKey FROM DimProductSubcategory WHERE ProductSubcategoryName = @varNomeSubcategoria)

SELECT 
	*
FROM 
	DimProduct
WHERE ProductSubcategoryKey = @varIdSubcategoria
GO