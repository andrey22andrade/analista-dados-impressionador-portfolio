USE ContosoRetailDW
GO

-- Salvando a primeira consulta e resolvendo 2 problemas

-- 1. Antes de executar os códigos, garanta que o banco de dados correto está selecionado no canto superior esquerdo: banco de dados ContosoRetailDW

-- 2. Sempre que executar um código, selecione todo ele para não ter problemas

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