USE ContosoRetailDW
GO

-- Exemplo: Crie uma CTE para armazenar o resultado de uma consulta que contenha: ProductKey, ProductName, BrandName, ColorName e UnitPrice, apenas para a marca Contoso.

WITH cte AS (
SELECT 
	ProductKey,
	ProductName,
	BrandName,
	ColorName
	UnitPrice
FROM DimProduct 
WHERE BrandName = 'Contoso'
)

SELECT
	COUNT(*)
FROM cte
GO