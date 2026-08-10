-- UPDATE - Atualizando o dado de uma tabela

-- Crie uma tabela chamada 'Produtos'
-- Essa abela deve conter 4 colunas: id_produt, nome_produto, data_validade e preco_produto
-- Certifique-se de que o tipo das colunas está correto.

CREATE DATABASE BDImpressionador    -- Obs: Se você já criou o BD Impressionador não precisa executar esta linha
GO

USE BDImpressionador
GO

CREATE TABLE Produtos(
	id_produto INT,
	nome_produto VARCHAR(200),
	data_validade DATETIME,
	preco_produto FLOAT
)
GO

SELECT * FROM Produtos
GO

-- Adicionando valores de outra tabela

INSERT INTO Produtos(id_produto, nome_produto, data_validade, preco_produto)
SELECT
	ProductKey,
	ProductName,
	AvailableForSaleDate,
	UnitPrice
FROM
	ContosoRetailDW.dbo.DimProduct
GO

-- Adicionando novos valores na tabela

INSERT INTO Produtos(id_produto, nome_produto, data_validade, preco_produto)
VALUES
	(1, 'Arroz', '2021-12-31', 22.50),
	(2, 'Feijão', '2021-12-31', 8.99)
GO

-- Atualizando o dado de uma tabela

UPDATE Produtos
SET nome_produto = 'Macarrão'
WHERE id_produto = 3
GO