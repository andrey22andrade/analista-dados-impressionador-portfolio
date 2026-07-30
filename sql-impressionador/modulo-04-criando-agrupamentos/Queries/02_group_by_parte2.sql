USE ContosoRetailDW
GO

-- Group By (Parte 2)

-- Consulta 1
SELECT
	*
FROM
	DimStore
GO

SELECT
	StoreType,
	SUM(EmployeeCount) AS 'Qtd. Total Funcionários'
FROM
	DimStore
GROUP BY
	StoreType
GO

-- Consulta 2
SELECT
	*
FROM 
	DimProduct
GO

SELECT
	BrandName,
	AVG(UnitCost) AS 'Custo Médio'
FROM
	DimProduct
GROUP BY
	BrandName
GO

-- Consulta 3
SELECT
	*
FROM
	DimProduct
GO

SELECT
	ClassName AS 'Classe do Produto',
	MAX(UnitPrice) AS 'Máximo Preço'
FROM
	DimProduct
GROUP BY
	ClassName
GO