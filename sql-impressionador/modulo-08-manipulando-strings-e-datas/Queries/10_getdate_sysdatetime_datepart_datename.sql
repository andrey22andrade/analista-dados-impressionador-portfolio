USE ContosoRetailDW
GO

-- GETDATE, SYSDATETIME, DATEPART e DATENAME

-- GETDATE: Retorna a data/hora atual do sistema
-- SYSDATETIME: Retorna a data/hora atual do sistema (mais preciso que a GETDATE)
-- DATENAME e DATEPART: Retornam informações (dia, mês, ano, semana, etc) de uma data

SELECT GETDATE()
SELECT SYSDATETIME()
GO

-- DATENAME: Retorna o resultado em formato de TEXTO

DECLARE @varData DATETIME
SET @varData = GETDATE()
SELECT
	DATENAME(DAY, @varData) AS 'Dia',
	DATENAME(MONTH, @varData) AS 'Mês',
	DATENAME(YEAR, @varData) AS 'Ano',
	DATENAME(DAYOFYEAR, @varData) AS 'Dia do ano'
GO

-- DATEPART: Retorna o resultado em formato de NÚMERO

DECLARE @varData DATETIME
SET @varData = GETDATE()
SELECT
	DATEPART(DAY, @varData) AS 'Dia',
	DATEPART(MONTH, @varData) AS 'Mês',
	DATEPART(YEAR, @varData) AS 'Ano',
	DATEPART(DAYOFYEAR, @varData) AS 'Dia do ano'

SELECT
	SQL_VARIANT_PROPERTY(DATENAME(DAY, @varData), 'BaseType'),
	SQL_VARIANT_PROPERTY(DATEPART(DAY, @varData), 'BaseType'
GO