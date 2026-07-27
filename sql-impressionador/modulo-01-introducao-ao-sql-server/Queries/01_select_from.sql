USE ContosoRetailDW
GO

-- Criando uma Nova Consulta e usando SELECT FROM
-- Selecionando todas as linhas e colunas da tabela DimCustomer

SELECT * FROM DimCustomer
GO

-- Selecionando todas as linhas e colunas da tabela DimStore

SELECT * FROM DimStore
GO

-- Selecionando todas as linhas da tabela DimCustomer, especificamente as colunas StoreKey, StoreName, StorePhone

SELECT StoreKey, StoreName, StorePhone FROM DimStore
GO

-- Selecionando todas as linhas e colunas da tabela DimProduct

SELECT * FROM DimProduct
GO

-- Selecionando todas as linhasda tabela DimProduct, especificamente as colunas ProductName, BrandName

SELECT ProductName, BrandName FROM DimProduct
GO