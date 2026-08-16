USE AlugaFacil

/*1. Crie uma tabela chamada Carro com os dados abaixo.  

Obs: não se preocupe com constraints, pode criar uma tabela simples.*/

INSERT INTO Carro(id_carro,placa, modelo, tipo) VALUES
	(1,'DAS-1412', 'Hyundai HB20', 'Hatch'),
	(2,'JHG-3902', 'Fiat Cronos', 'Sedan'),
	(3,'IPW-9018', 'Citroen C4 Cactus', 'SUV'),
	(4,'JKR-8891', 'Nissa Kicks', 'SUV'),
	(5,'TRF-5904', 'Chevrolet Onix Joy', 'Sedan')
GO

SELECT * FROM Carro
GO

/*2. Execute as seguintes transações no banco de dados, sempre na tabela Carro. Lembre-se de 
dar um COMMIT para efetivar cada uma das transações.

a) Inserir uma nova linha com os seguintes valores: 

id_carro = 6 
placa = CDR-0090 
modelo = Fiat Argo 
tipo = Hatch*/

BEGIN TRANSACTION
INSERT INTO Carro(id_carro, placa,modelo,tipo) VALUES
	(6, 'CDR-0090', 'Fiat Argo', 'Hatch')
COMMIT
GO

/*b) Atualizar o tipo do carro de id = 1 de Hatch para Sedan.*/

BEGIN TRANSACTION
UPDATE Carro
SET tipo = 'Sedan'
WHERE id_carro = 1
COMMIT
GO

/*c) Deletar a linha referente ao carro de id = 6.*/

BEGIN TRANSACTION
DELETE FROM Carro
WHERE id_carro = 6
COMMIT
GO