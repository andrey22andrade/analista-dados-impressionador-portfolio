USE BDImpressionador
GO

-- ALTER TABLE: Adicionando, deletar ou modificar tipo de dados de uma coluna

-- Adicionar coluna:

ALTER TABLE Funcionarios
ADD cargo varchar(100), bonus decimal(10,2)
GO

UPDATE Funcionarios
SET cargo = 'Analista'
WHERE id_funcionario = 1
SELECT * FROM Funcionarios
GO

-- Alterar tipo de dados de uma coluna:

ALTER TABLE Funcionarios
ALTER COLUMN salario int
GO

-- Deletar coluna:

ALTER TABLE Funcionarios
DROP COLUMN cargo, bonus
GO