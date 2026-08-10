-- CREATE TABLE - Criando a primeira tabela

-- Crie uma tabela chamada 'Produtos'
-- Essa abela deve conter 4 colunas: id_produto, nome_produto, data_validade e preco_produto
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