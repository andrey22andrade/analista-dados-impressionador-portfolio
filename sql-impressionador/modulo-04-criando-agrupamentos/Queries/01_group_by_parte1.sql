USE ContosoRetailDW
GO

-- Group By (Parte 1)

SELECT 
	*
FROM
	DimProduct
GO

SELECT
	BrandName AS 'Nome da Marca',
	COUNT(*) AS 'Qtd Total'
FROM
	DimProduct
GROUP BY
	BrandName
GO