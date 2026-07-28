USE ContosoRetailDW
GO

-- Where mais IN - Alternativa ao OR com múltiplas condições

-- Podemos utilizar o operador IN como alternativa aos múltiplos OR.

-- Exemplo: Selecione os funcionários que são de qualquer um desses 3 departamentos: Production, Marketing, Engineering.

SELECT
	*
FROM
	DimEmployee
WHERE
	DepartmentName IN ('Production', 'Marketing', 'Engineering')
GO