USE ContosoRetailDW
GO

-- Where mais Is Null e Is Not Null - Filtrando valores nulos

-- 1. Selecione os clientes que são pessoa física.

SELECT
	*
FROM
	DimCustomer
WHERE
	CompanyName IS NULL
GO