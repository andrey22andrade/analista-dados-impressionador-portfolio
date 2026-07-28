USE ContosoRetailDW
GO

--  Order By (Parte 2)

-- Selecionando as TOP 10 linhas da tabela DimProduct, ordenando pelas colunas UnitCost (decrescente) e Weight (decrescente)

SELECT 
	TOP(10) ProductName,
	UnitCost,
	Weight
FROM
	DimProduct
ORDER BY
	UnitCost DESC, Weight DESC
GO