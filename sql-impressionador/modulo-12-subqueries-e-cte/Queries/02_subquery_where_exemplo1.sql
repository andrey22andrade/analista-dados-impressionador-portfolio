USE ContosoRetailDW
GO

-- Para entender a ideia por trás das subqueries, vamos começar fazendo 3 exemplos com a aplicação WHERE.

-- Exemplo 1: Quais produtos da tabela DimProduct possuem custos acima da média?

SELECT AVG(UnitCost) FROM DimProduct     -- 147.6555
GO

SELECT
	*
FROM
	DimProduct
WHERE UnitCost >= (SELECT AVG(UnitCost) FROM DimProduct)
GO