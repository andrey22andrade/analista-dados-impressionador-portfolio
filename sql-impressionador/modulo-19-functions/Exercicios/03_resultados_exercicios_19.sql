/*Todas as functions dos exercícios a seguir devem ser criadas para manipulação de dados do 
banco de dados ContosoRetailDW.*/
 
USE ContosoRetailDW
GO

/*1. Crie uma Function que calcule o tempo (em anos) entre duas datas. Essa function deve 
receber dois argumentos: data_inicial e data_final. Caso a data_final não seja informada, a 
function deve automaticamente considerar a data atual do sistema. Essa function será usada 
para calcular o tempo de casa de cada funcionário. 

Obs: a função DATEDIFF não é suficiente para resolver este problema.*/

CREATE OR ALTER FUNCTION CalculaDiferencaDatas(@data_inicial DATE, @data_final DATE)
RETURNS INT
AS
BEGIN
	IF @data_final IS NULL SET @data_final = GETDATE()
	RETURN DATEDIFF(YEAR, @data_inicial, @data_final)
END
GO

SELECT
	FirstName,
	HireDate,
	EndDate,
	DATEDIFF(YEAR,HireDate, EndDate),
	dbo.CalculaDiferencaDatas(HireDate,EndDate)
FROM
	DimEmployee
GO

/*2. Crie uma function que calcula a bonificação de cada funcionário (5% a mais em relação ao 
BaseRate). Porém, tome cuidado! Nem todos os funcionários deverão receber bônus...*/

CREATE OR ALTER FUNCTION CalculaBonus(@salario FLOAT, @status VARCHAR(100), @percentual FLOAT)
RETURNS FLOAT
AS
BEGIN
	DECLARE @bonus AS FLOAT

	IF @status = 'Current'
		SET @bonus = @salario * @percentual
	ELSE
		SET @bonus = 0
	RETURN @bonus
END
GO

SELECT 
	firstName,
	baserate,
	status,
	dbo.CalculaBonus(baserate, status, 0.5)
FROM DimEmployee
GO

/*3. Crie uma Function que retorna uma tabela. Esta function deve receber como parâmetro o 
gênero do cliente e retornar todos os clientes que são do gênero informado na function. 
Observe que esta function será utilizada particularmente com a tabela DimCustomer.*/

CREATE OR ALTER FUNCTION select_genero(@genero VARCHAR(100))
RETURNS TABLE
AS
RETURN (SELECT * FROM DimCustomer WHERE gender = @genero)
GO

SELECT * FROM dbo.select_genero('F')
GO

/*4. Crie uma Function que retorna uma tabela resumo com o total de produtos por cores. Sua 
function deve receber 1 argumento, onde será possível especificar de qual marca você deseja o 
resumo.*/

CREATE OR ALTER FUNCTION analisa_cores(@marca VARCHAR(100))
RETURNS TABLE
AS
RETURN
(SELECT ColorName, COUNT(*) Total FROM DimProduct WHERE BrandName = @marca GROUP BY ColorName)
GO

SELECT * FROM dbo.analisa_cores('Contoso')
GO