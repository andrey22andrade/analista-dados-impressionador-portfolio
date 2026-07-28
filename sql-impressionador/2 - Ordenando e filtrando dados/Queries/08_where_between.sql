USE ContosoRetailDW
GO

-- Where mais Between - Filtrando entre valores

-- 1. Selecione os funcionários que têm a data de contratação entre '01-01-2000' e '31-12-2000'.

SELECT
	*
FROM
	DimEmployee
WHERE
	HireDate BETWEEN '2000-01-01' AND '2000-12-31'
GO