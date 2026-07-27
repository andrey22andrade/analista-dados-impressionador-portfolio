USE ContosoRetailDW
GO

-- Como organizar melhor os códigos com indentação

-- Para organizar melhor os seus códigos, pule linhas. Abaixo temos dois exemplos de códigos que chegam no mesmo resultado, só que na versão 1, não utilizamos a indentação, e na versão 2, usamos. Observe que fica muito mais organizado.

-- Selecionando todas as linhas e colunas da tabela DimStore
-- versão 1

SELECT * FROM DimStore
GO

-- versão 2

SELECT 
	* 
FROM 
	DimStore
GO

-- Selecionando todas as linhas da tabela DimCustomer, especificamente as colunas StoreKey, StoreName, StorePhone
-- versão 1

SELECT StoreKey, StoreName, StorePhone FROM DimStore
GO

-- versão 2

SELECT 
	StoreKey, 
	StoreName, 
	StorePhone 
FROM 
	DimStore
GO
