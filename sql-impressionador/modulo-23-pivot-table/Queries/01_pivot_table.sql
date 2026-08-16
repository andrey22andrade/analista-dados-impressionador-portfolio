USE ContosoRetailDW
GO

-- Operador Pivot 

-- 1. O que o Operador Pivot faz

SELECT
	BrandName,
	COUNT(*) AS Total_Produtos
FROM
	DimProduct
GROUP BY BrandName
GO

-- Criando uma Pivot Table

SELECT
	BrandName,
	COUNT(ProductKey) AS Total_Produtos
FROM
	DimProduct
GROUP BY BrandName
GO

-- 1º) O primeiro passo é selecionar os dados que serão usados como base para criação da Pivot Table

-- 2º) Como não conseguimos aplicar o Pivot diretamente nos dados acima, precisaremos fazer isso indiretamente

-- 3º) Agora sim podemos aplicar o Pivot, incluindo o cálculo desejado e os nomes das colunas a serem consideradas

SELECT * FROM
(SELECT
	ProductKey,
	BrandName
FROM
	DimProduct) AS Dados
PIVOT(
	COUNT(ProductKey)
	FOR BrandName
	IN ([Northwind Traders]
		,[Contoso]
		,[Tailspin Toys]
		,[Adventure Works]
		,[Southridge Video]
		,[Wide World Importers]
		,[The Phone Company]
		,[Fabrikam]
		,[Litware]
		,[A. Datum]
		,[Proseware]
	)
) AS PivotTable
GO

-- Adicionando Grupos de Linha à Pivot Table

-- Calculando o total de funcionários por departamento

SELECT
	DepartmentName,
	COUNT(EmployeeKey) Total_Funcionarios
FROM DimEmployee
GROUP BY DepartmentName
GO

-- Adicionando mais linhas ao grupo

SELECT * FROM
	(SELECT
		EmployeeKey,
		YEAR(HireDate) AS Ano,
		DepartmentName
	FROM DimEmployee) AS Dados
PIVOT(
	COUNT(EmployeeKey)
	FOR DepartmentName
	IN([Tool Design]
		,[Shipping and Receiving]
		,[Sales]
		,[Research and Development]
		,[Quality Assurance]
		,[Purchasing]
		,[Production]
		,[Production Control]
		,[Marketing]
		,[Information Services]
		,[Human Resources]
		,['Human Resources Contral]
		,[Finance]
		,[Facilities and Maintenance]
		,[Executive]
		,[Engineering]
		,[Document Control])

) AS PivotTable
ORDER BY Ano DESC
GO

-- Limitações da Pivot Table

SELECT * FROM
	(SELECT
		EmployeeKey,
		YEAR(HireDate) AS Ano,
		DATENAME(MM, HireDate) AS Mes,
		DepartmentName
	FROM
		DimEmployee) AS Dados
PIVOT (
	COUNT(EmployeeKey)
	FOR DepartmentName
	IN ([Document Control]
		, [Engineering]
		, [Executive]
		, [Facilities and Maintenance]
		, [Finance]
		, ['Human Resources Contral]
		, [Human Resources]
		, [Information Services]
		, [Marketing]
		, [Production Control]
		, [Production]
		, [Purchasing]
		, [Quality Assurance]
		, [Research and Development]
		, [Sales]
		, [Shipping and Receiving]
		, [Tool Design])
		) AS PivotTable
ORDER BY Ano
GO

-- Corrigindo a limitação da Pivot Table

DECLARE @NomeColunas NVARCHAR(MAX) = ''
DECLARE @SQL NVARCHAR(MAX) = ''

SELECT @NomeColunas += QUOTENAME(TRIM(DepartmentName)) + ','
FROM 
	(SELECT DISTINCT
		Departmentname
	FROM DimEmployee) AS Aux

SET @NomeColunas = LEFT(@NomeColunas, LEN(@NomeColunas) - 1)

-- PRINT @NomeColunas

SET @SQL=
'SELECT * FROM
	(SELECT
		EmployeeKey,
		YEAR(HireDate) AS Ano,
		DATENAME(MM, HireDate) AS Mes,
		DepartmentName
	FROM
		DimEmployee) AS Dados
PIVOT (
	COUNT(EmployeeKey)
	FOR DepartmentName
	IN (' + @NomeColunas + ')
		) AS PivotTable
ORDER BY Ano'

EXECUTE sp_executesql @SQL
GO

DECLARE @NomeColunas NVARCHAR(MAX) = ''
DECLARE @SQL NVARCHAR(MAX) = ''

SELECT @NomeColunas += QUOTENAME(TRIM(DepartmentName))  + ','
FROM 
	(SELECT DISTINCT
		DepartmentName
	FROM DimEmployee) AS Aux

SET @NomeColunas = LEFT(@NomeColunas, LEN(@NomeColunas) - 1)

-- PRINT @NomeColunas

SET @SQL = 
'SELECT * FROM
	(SELECT
		EmployeeKey,
		YEAR(HireDate) AS Ano,
		DATENAME(MM, HireDate) AS Mes,
		DepartmentName
	FROM
		DimEmployee) AS Dados
PIVOT (
	COUNT(EmployeeKey)
	FOR DepartmentName
	IN (' + @NomeColunas + ')
) AS PivotTable
ORDER BY Ano DESC'

EXECUTE sp_executesql @SQL
GO