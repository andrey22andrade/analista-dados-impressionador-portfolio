/* Triggers DML

-- Um Trigger é um gatilho que será disparado automaticamente quando acontecer um evento.

-- Triggers podem ser disparadas por eventos DDL (CREATE, ALTER, DROP) e DML (INSERT, UPDATE, DELETE).


-- Triggers DML

-- 1. Uma Trigger DML é disparada quando um comando INSERT, UPDATE ou DELETE é executado sobre uma tabela ou view.

-- 2. Na hora de criar uma trigger, podemos definir alguns elementos, podemos definir se ela será do tipo AFTER ou INSTEAD OF*/

-- 2. Criando uma Trigger DML simples
-- Crie uma Trigger que seja disparada APÓS um evento INSERT, UPDATE, DELETE seja executado na tabela dCliente

USE Exercicios
GO

CREATE OR ALTER TRIGGER tgClienteAlterado
ON dCliente
AFTER INSERT, UPDATE, DELETE
AS
BEGIN

	PRINT 'Os dados da tabela dCliente foram alterados!'

END
GO

SELECT * FROM dCliente
GO

INSERT INTO dCliente(nome_cliente, genero, data_de_nascimento, cpf)	VALUES
	('Zacarias Neto', 'M', '13/02/1999', '139.543.189-00')
GO

UPDATE dCliente
SET cpf = '130.451.892-10'
WHERE id_cliente = 11
GO

DELETE FROM dCliente
WHERE id_cliente = 11
GO

-- 3. Tabelas INSERTED e DELETED

-- Vamos alterar a trigger anterior para deixá-la mais clara.

CREATE OR ALTER TRIGGER tgClienteAlterado
ON dCliente
AFTER INSERT, UPDATE, DELETE
AS
BEGIN

	SELECT * FROM DELETED

	-- PRINT 'Os dados da tabela dCliente foram alterados!'
END
GO

INSERT INTO dCliente(nome_cliente, genero, data_de_nascimento, cpf)	VALUES
	('Zacarias Neto', 'M', '13/02/1999', '139.543.189-00')
GO

DELETE FROM dCliente
WHERE id_cliente = 13
GO

UPDATE dCliente
SET cpf = '130.451.892-10'
WHERE id_cliente = 14
GO

-- Identificando na Trigger o Evento DML Relacionado

CREATE OR ALTER TRIGGER tgClienteAlterado
ON dCliente
AFTER INSERT, UPDATE, DELETE
AS
BEGIN

	IF EXISTS (SELECT * FROM INSERTED) AND EXISTS (SELECT * FROM DELETED)
			PRINT 'Dados Foram Atualizados na Tabela'
	ELSE IF EXISTS (SELECT * FROM INSERTED)
            PRINT 'Dados Foram Inseridos na Tabela'
    ELSE IF EXISTS (SELECT * FROM DELETED)
            PRINT 'Dados Foram Excluidos na Tabela'

END
GO

INSERT INTO dCliente(nome_cliente, genero, data_de_nascimento, cpf)	VALUES
	('Eleonora Batista', 'F', '13/02/2003', '453.543.189-00')
GO

SELECT * FROM dCliente
GO

DELETE FROM dCliente
WHERE id_cliente = 15
GO

UPDATE dCliente
SET cpf = '678.333.111-11'
WHERE id_cliente = 1
GO

-- Se a trigger for de INSERT, a INSERTED terá registros e a DELETED ficará vazia

-- Se a trigger for de DELETE, a INSERTED ficará vazia e a DELETED terá registros

-- Se a trigger for de UPDATE, a INSERTED e a DELETED terão registros

-- Criando uma Trigger para Controle de Permissão de Cadastro - INSTEAD OF

-- Crie uma Trigger que seja disparada sempre EM VEZ de um INSERT, UPDATE e DELETE que for executado na tabela dCliente. O que deve acontecer: se o dia de cadastro for sábado ou domingo, não pode deixar alterar pois está fora do horário comercial.

SELECT FORMAT(GETDATE(), 'dddd')
GO

CREATE OR ALTER TRIGGER tgControleRegistros
ON dCliente
INSTEAD OF INSERT
AS
BEGIN

	IF FORMAT(GETDATE(), 'dddd') IN ('domingo')
	BEGIN

		RAISERROR('O cadastro de clientes só pode ser feito de segunda à sexta', 1, 1)
		ROLLBACK

	END
	ELSE
	BEGIN

		INSERT INTO dCliente(nome_cliente, genero, data_de_nascimento, cpf)
		SELECT i.nome_cliente, i.genero, i.data_de_nascimento, i.cpf FROM INSERTED i

	END


END


INSERT INTO dCliente(nome_cliente, genero, data_de_nascimento, cpf)	VALUES
	('Lucio Dantas', 'M', '13/02/2003', '111.222.333-00')

SELECT * FROM dCliente
GO

-- Habilitando ou Desabilitando uma Trigger DML

ENABLE TRIGGER tgControleRegistros ON dCliente
GO
-- Habilitando ou Desabilitando TODAS as Triggers DML de uma tabela

ENABLE TRIGGER ALL ON dCliente
GO
-- Excluindo uma Trigger DML

DROP TRIGGER tgControleRegistros;
GO     