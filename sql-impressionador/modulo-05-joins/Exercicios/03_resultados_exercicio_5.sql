USE ContosoRetailDW
GO

/*1. Utilize o INNER JOIN para trazer os nomes das subcategorias dos produtos, da tabela 
DimProductSubcategory para a tabela DimProduct.*/

SELECT TOP (2) * FROM DimProduct
SELECT TOP (2) * FROM DimProductSubcategory
GO

SELECT
	ProductKey AS 'ID Produto',
	ProductName AS 'Nome do Produto',
	ProductSubcategoryName AS 'Nome da Subcategoria'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
GO

/*2. Identifique uma coluna em comum entre as tabelas DimProductSubcategory e 
DimProductCategory. Utilize essa coluna para complementar informações na tabela 
DimProductSubcategory a partir da DimProductCategory. Utilize o LEFT JOIN.*/ 

SELECT TOP (2) * FROM DimProductSubcategory
SELECT TOP (2) * FROM DimProductCategory
GO

SELECT
	*
FROM
	DimProductSubcategory
LEFT JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
GO

/*3. Para cada loja da tabela DimStore, descubra qual o Continente e o Nome do País associados 
(de acordo com DimGeography). Seu SELECT final deve conter apenas as seguintes colunas: 
StoreKey, StoreName, EmployeeCount, ContinentName e RegionCountryName. Utilize o LEFT 
JOIN neste exercício.*/ 

SELECT TOP (2) * FROM DimStore
SELECT TOP (2) * FROM DimGeography
GO

SELECT
	StoreKey AS 'ID Loja',
	StoreName AS 'Nome da Loja',
	EmployeeCount AS 'Quantidade de Funcionários',
	ContinentName AS 'Continente',
	RegionCountryName AS 'País'
FROM
	DimStore
LEFT JOIN DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey
GO

/*4. Complementa a tabela DimProduct com a informação de ProductCategoryDescription. Utilize 
o LEFT JOIN e retorne em seu SELECT apenas as 5 colunas que considerar mais relevantes.*/

SELECT TOP (2) * FROM DimProduct
SELECT TOP (2) * FROM DimProductCategory

SELECT
	ProductName AS 'Nome do Produto',
	ProductDescription AS 'Descrição do Produto'
FROM
	DimProduct
LEFT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
	LEFT JOIN DimProductCategory
		ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
GO

/*5. A tabela FactStrategyPlan resume o planejamento estratégico da empresa. Cada linha 
representa um montante destinado a uma determinada AccountKey.  

a) Faça um SELECT das 100 primeiras linhas de FactStrategyPlan para reconhecer a tabela.*/

SELECT TOP(100) * FROM FactStrategyPlan
GO

/*b) Faça um INNER JOIN para criar uma tabela contendo o AccountName para cada 
AccountKey da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas: 

• StrategyPlanKey 
• DateKey 
• AccountName 
• Amount*/

SELECT
	StrategyPlanKey AS 'ID Plano de Estratégia',
	Datekey AS 'ID Data',
	AccountName AS 'Nome da Conta',
	Amount AS 'Montante'
FROM 
	FactStrategyPlan
INNER JOIN DimAccount
	ON FactStrategyPlan.AccountKey = DimAccount.AccountKey
GO

/*6. Vamos continuar analisando a tabela FactStrategyPlan. Além da coluna AccountKey que 
identifica o tipo de conta, há também uma outra coluna chamada ScenarioKey. Essa coluna 
possui a numeração que identifica o tipo de cenário: Real, Orçado e Previsão. 

Faça um INNER JOIN para criar uma tabela contendo o ScenarioName para cada ScenarioKey 
da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas: 

• StrategyPlanKey 
• DateKey 
• ScenarioName  
• Amount*/

SELECT
	StrategyPlanKey AS 'ID Plano de Estratégia',
	Datekey AS 'ID Data',
	ScenarioName AS 'Nome do Cenário',
	Amount AS 'Montante'
FROM 
	FactStrategyPlan
INNER JOIN DimScenario
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey
GO

/*7. Algumas subcategorias não possuem nenhum exemplar de produto. Identifique que 
subcategorias são essas.*/

SELECT
	ProductSubcategoryName
FROM 
	DimProduct
RIGHT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
WHERE
	ProductName IS NULL
GO

/*8. A tabela abaixo mostra a combinação entre Marca e Canal de Venda, para as marcas Contoso, 
Fabrikam e Litware. Crie um código SQL para chegar no mesmo resultado.*/

SELECT DISTINCT BrandName FROM  DimProduct

SELECT 
	DISTINCT BrandName,
	ChannelName
FROM 
	DimProduct CROSS JOIN DimChannel
WHERE BrandName IN ('Contoso', 'Fabrikam', 'Litware')
GO

/*9. Neste exercício, você deverá relacionar as tabelas FactOnlineSales com DimPromotion. 
Identifique a coluna que as duas tabelas têm em comum e utilize-a para criar esse 
relacionamento. 

Retorne uma tabela contendo as seguintes colunas: 

• OnlineSalesKey 
• DateKey 
• PromotionName 
• SalesAmount 

A sua consulta deve considerar apenas as linhas de vendas referentes a produtos com 
desconto (PromotionName <> ‘No Discount’). Além disso, você deverá ordenar essa tabela de 
acordo com a coluna DateKey, em ordem crescente.*/

SELECT TOP(1000)
	OnlineSalesKey AS 'ID Vendas Online',
	DateKey AS 'ID Data',
	PromotionName AS 'Nome da Promoção',
	SalesAmount AS 'Valor de Vendas'
FROM 
	FactOnlineSales
INNER JOIN DimPromotion
	ON FactOnlineSales.PromotionKey = DimPromotion.PromotionKey
WHERE
	PromotionName <> 'No Discount'
ORDER BY 
	DateKey ASC
GO


/*10. A tabela abaixo é resultado de um Join entre a tabela FactSales e as tabelas: DimChannel, 
DimStore e DimProduct. 

Recrie esta consulta e classifique em ordem decrescente de acordo com SalesAmount.*/

SELECT TOP(100)
	SalesKey AS 'ID Vendas',
	ChannelName AS 'Nome dos Canais',
	StoreName AS 'Nome da Loja',
	ProductName AS 'Nome do Produto',
	SalesAmount AS 'Valor de Vendas'
FROM 
	FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
ORDER BY SalesAmount DESC
GO