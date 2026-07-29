USE ContosoRetailDW
GO

-- Função AVG

-- 1. Faça uma consulta que retorna a média de YearlyIncome (média de salário) da tabela DimCustomer.

SELECT
	AVG(YearlyIncome) AS 'Média Anual de Salário'
FROM
	DimCustomer
GO