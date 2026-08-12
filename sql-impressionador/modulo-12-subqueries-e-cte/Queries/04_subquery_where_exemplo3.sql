USE ContosoRetailDW
GO

-- Para entender a ideia por trás das subqueries, vamos começar fazendo 3 exemplos com a aplicação WHERE.

-- Exemplo 3: Filtre a tabela FactSales e mostre apenas as vendas referentes às lojas com 100 ou mais funcionários

SELECT * FROM FactSales
WHERE StoreKey IN (
	SELECT	StoreKey
	FROM DimStore
	WHERE EmployeeCount >= 100
)
GO