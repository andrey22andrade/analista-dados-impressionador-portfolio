USE ContosoRetailDW
GO

-- Exemplo: Crie uma CTE que seja o resultado do agrupamento de total de produtos por marca. Faça uma média de produtos por marca.

WITH cte AS (
	SELECT
		BrandName,
		COUNT(*) AS 'Total'
	FROM
		DimProduct
	GROUP BY
		BrandName
)

SELECT
	AVG(Total)
FROM
	cte