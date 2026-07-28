USE ContosoRetailDW
GO

-- Where (Pt. 2) - Filtrando colunas de texto

-- Podemos filtrar os dados nas nossas tabelas utilizando o comando WHERE

-- Quais produtos são da marca 'Fabrikam'?

SELECT
	*
FROM
	DimProduct
WHERE
	BrandName = 'Fabrikam'
GO

-- Quais produtos são da cor 'Black'?

SELECT
	*
FROM
	DimProduct
WHERE
	ColorName = 'Black'
GO