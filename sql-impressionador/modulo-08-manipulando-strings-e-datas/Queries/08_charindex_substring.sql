USE ContosoRetailDW
GO

-- CHARINDEX e SUBSTRING

-- CHARINDEX: Descobre a posição de um determinado caractere dentro de um texto
-- SUBSTRING: Extrai alguns caracteres de dentro de um texto

SELECT CHARINDEX('Moreno', 'Raquel Moreno') AS 'Posição Sobrenome'
GO

SELECT SUBSTRING('Raquel Moreno', 8, 6) AS 'Sobrenome'
GO

SELECT 'Marcus Cavalcanti' AS 'Nome'
GO

SELECT CHARINDEX(' ', 'Marcus Cavalcanti') AS 'Posição'
GO

SELECT SUBSTRING('Marcus Cavalcanti', CHARINDEX(' ', 'Marcus Cavalcanti') + 1, 100) AS 'Sobrenome'
GO