USE ContosoRetailDW
GO

-- Group By + Where

SELECT
	*
FROM
	DimProduct
GO

SELECT
	ColorName AS 'Cor do Produto',
	COUNT(ColorName) AS 'Qtd. Total'
FROM
	DimProduct
WHERE
	BrandName = 'Contoso'
GROUP BY 
	ColorName
GO