USE ContosoRetailDW
GO

-- Exemplo: Descubra os nomes dos clientes que ganham o segundo maior salário.

SELECT * FROM DimCustomer
WHERE CustomerType = 'Person'
ORDER BY YearlyIncome DESC
GO

SELECT DISTINCT TOP(2) YearlyIncome FROM DimCustomer
WHERE CustomerType = 'Person'
ORDER BY YearlyIncome DESC
GO

SELECT
	CustomerKey,
	FirstName,
	LastName,
	YearlyIncome
FROM DimCustomer
WHERE YearlyIncome = 160000
GO

--1. Descobrir o maior salário
--2. Descobrir o segundo maior salário
--3. Descobrir os nomes dos clientes que ganham o segundo maior salário

SELECT
	CustomerKey,
	FirstName,
	LastName,
	YearlyIncome
FROM DimCustomer
WHERE YearlyIncome = (
	SELECT
		MAX(YearlyIncome)
	FROM DimCustomer
	WHERE
		YearlyIncome < (
			SELECT 
				MAX(YearlyIncome) 
			FROM DimCustomer	
			WHERE CustomerType = 'Person'
	)
)
GO