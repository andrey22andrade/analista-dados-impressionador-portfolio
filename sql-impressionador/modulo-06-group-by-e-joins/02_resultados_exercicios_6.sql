USE ContosoRetailDW
GO
/*Os exercícios abaixo estão divididos de acordo com uma determinada tabela do Banco de Dados. 
Você pode utilizar o INNER JOIN para resolver todas as questões.

FACT SALES 

1. a) Faça um resumo da quantidade vendida (Sales Quantity) de acordo com o nome do canal 
de vendas (ChannelName). Você deve ordenar a tabela final de acordo com SalesQuantity, 
em ordem decrescente.*/

SELECT
	ChannelName AS 'Canal de Vendas',
	SUM(SalesQuantity) AS 'Quantidade Vendida'
FROM
	FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
GROUP BY ChannelName
ORDER BY SUM(SalesQuantity) DESC
GO

/*b) Faça um agrupamento mostrando a quantidade total vendida (Sales Quantity) e 
quantidade total devolvida (Return Quantity) de acordo com o nome das lojas 
(StoreName).*/

SELECT
	StoreName AS 'Nome da Loja',
	SUM(SalesQuantity) AS 'Quantidade Total Vendida',
	SUM(ReturnQuantity) AS 'Quantidade Total Devolvida'
FROM
	FactSales
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
GROUP BY StoreName
ORDER BY StoreName
GO

/*c) Faça um resumo do valor total vendido (Sales Amount) para cada mês 
(CalendarMonthLabel) e ano (CalendarYear).*/

SELECT
	SUM(SalesAmount) AS 'Total Vendido',
	 CalendarMonthLabel AS 'Mês',
	 CalendarYear AS 'Ano'
FROM
	FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.DateKey
GROUP BY CalendarMonthLabel , CalendarYear , CalendarMonth
ORDER BY CalendarMonth ASC
GO

/*2. Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor 
total vendido (SalesQuantity) por produto. 

a) Descubra qual é a cor de produto que mais é vendida (de acordo com SalesQuantity).*/

SELECT TOP(1)
	ColorName AS 'Cor',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName 
ORDER BY SUM(SalesQuantity) DESC
GO

/*b) Quantas cores tiveram uma quantidade vendida acima de 3.000.000.*/

SELECT
	ColorName AS 'Cor',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName 
HAVING SUM(SalesQuantity) > 3000000
ORDER BY SUM(SalesQuantity) DESC
GO

/*3. Crie um agrupamento de quantidade vendida (SalesQuantity) por categoria do produto 
(ProductCategoryName). Obs: Você precisará fazer mais de 1 INNER JOIN, dado que a relação 
entre FactSales e DimProductCategory não é direta.*/
 
 select top 1 * from FactSales
 select top 1 * from DimProduct
 select top 1 * from DimProductCategory 
 select top 1 * from DimProductSubcategory 

SELECT
	SUM(SalesQuantity) AS 'Quantidade Total Vendido',
	ProductCategoryName AS 'Categoria do Produto'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
	INNER JOIN DimProductSubcategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductSubcategory.ProductCategoryKey
	INNER JOIN DimProductCategory
	ON DimProductCategory.ProductCategoryKey = DimProductSubcategory.ProductCategoryKey
GROUP BY ProductCategoryName
GO

/*FACTONLINESALES 

4. a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o nome completo 
do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).*/

SELECT TOP(1)
	DimCustomer.CustomerKey,
	FirstName AS 'Nome do Cliente',
	LastName AS 'Sobrenome',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE CustomerType = 'Person'
GROUP BY DimCustomer.CustomerKey, FirstName , LastName
ORDER BY SUM(SalesQuantity) DESC
GO

/*b) Feito isso, faça um agrupamento de produtos e descubra quais foram os top 10 produtos mais 
comprados pelo cliente da letra a, considerando o nome do produto. */

SELECT TOP(10)
	ProductName AS 'Produto',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactOnlineSales
INNER JOIN DimProduct
	ON FactOnlineSales.ProductKey = DimProduct.ProductKey
WHERE CustomerKey = 7665
GROUP BY ProductName
ORDER BY SUM(SalesQuantity) DESC
GO

/*5. Faça um resumo mostrando o total de produtos comprados (Sales Quantity) de acordo com o 
sexo dos clientes. */

SELECT 
	Gender AS 'Genero',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE Gender IS NOT NULL
GROUP BY Gender
GO

/*FACTEXCHANGERATE 

6. Faça uma tabela resumo mostrando a taxa de câmbio média de acordo com cada 
CurrencyDescription. A tabela final deve conter apenas taxas entre 10 e 100. */

SELECT
	CurrencyDescription,
	AVG(AverageRate) AS 'Taxa Média'
FROM 
	FactExchangeRate
INNER JOIN DimCurrency
	ON FactExchangeRate.CurrencyKey = DimCurrency.CurrencyKey
GROUP BY CurrencyDescription
HAVING AVG(AverageRate) BETWEEN 10 AND 100
GO

/*FACTSTRATEGYPLAN

7. Calcule a SOMA TOTAL de AMOUNT referente à tabela FactStrategyPlan destinado aos 
cenários: Actual e Budget. 

Dica: A tabela DimScenario será importante para esse exercício.*/

SELECT
	ScenarioName AS 'Cenario',
	SUM(Amount) AS 'Total'
FROM
	FactStrategyPlan
INNER JOIN DimScenario
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey
GROUP BY ScenarioName
HAVING ScenarioName IN ('Actual', 'Budget')
GO

/*8. Faça uma tabela resumo mostrando o resultado do planejamento estratégico por ano.*/

SELECT
	CalendarYear AS 'Ano',
	SUM(Amount) AS 'Total'
FROM 
	FactStrategyPlan
INNER JOIN DimDate	
	ON FactStrategyPlan.Datekey = DimDate.Datekey
GROUP BY CalendarYear
GO


/*DIMPRODUCT/DIMPRODUCTSUBCATEGORY 

9. Faça um agrupamento de quantidade de produtos por ProductSubcategoryName. Leve em 
consideração em sua análise apenas a marca Contoso e a cor Silver.*/

SELECT
	ProductSubcategoryName AS 'Subcategoria',
	COUNT(*) 'Quantidade de Produtos'
FROM 
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
GROUP BY ProductSubcategoryName
GO


/*10. Faça um agrupamento duplo de quantidade de produtos por BrandName e 
ProductSubcategoryName. A tabela final deverá ser ordenada de acordo com a coluna 
BrandName.*/

SELECT
	BrandName AS 'Marca',
	ProductSubcategoryName AS 'Subcategoria',
	COUNT(*) 'Qtd.Produtos'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
GROUP BY BrandName, ProductSubcategoryName
ORDER BY BrandName ASC
GO
