USE ContosoRetailDW
GO

/*1. O gerente comercial pediu a você uma análise da Quantidade Vendida e Quantidade 
Devolvida para o canal de venda mais importante da empresa:  Store.

Utilize uma função SQL para fazer essas consultas no seu banco de dados. Obs: Faça essa 
análise considerando a tabela FactSales.*/ 

SELECT
	SUM(SalesQuantity) AS 'Quantidade Vendida',
	SUM(ReturnQuantity) AS 'Quantidade Devolvida'
FROM 
	FactSales	
WHERE 
	channelKey = 1
GO

/*2. Uma nova ação no setor de Marketing precisará avaliar a média salarial de todos os clientes 
da empresa, mas apenas de ocupação Professional.  Utilize um comando SQL para atingir esse 
resultado.*/

SELECT
	AVG(YearlyIncome) AS 'Média Salarial'
FROM 
	DimCustomer	
WHERE
	Occupation = 'Professional'
GO

/*3. Você precisará fazer uma análise da quantidade de funcionários das lojas registradas na 
empresa. O seu gerente te pediu os seguintes números e informações: 

a) Quantos funcionários tem a loja com mais funcionários?*/

SELECT
	MAX(EmployeeCount) AS 'Máximo de Funcionários'
FROM 
	DimStore	
GO

/*b) Qual é o nome dessa loja?*/ 

SELECT TOP(1)
	StoreName AS 'Nome da Loja',
	EmployeeCount AS 'Contagem de Funcionários'
FROM 
	DimStore
ORDER BY EmployeeCount DESC
GO

/*c) Quantos funcionários tem a loja com menos funcionários?*/

SELECT
	MIN(EmployeeCount) AS 'Mínimo de Funcionários'
FROM
	DimStore;
GO

/*d) Qual é o nome dessa loja?*/ 

SELECT TOP(1)
	StoreName AS 'Nome da Loja',
	EmployeeCount AS 'Contagem de Funcionários'
FROM
	DimStore
WHERE EmployeeCount IS NOT NULL
ORDER BY EmployeeCount ASC
GO

/*4. A área de RH está com uma nova ação para a empresa, e para isso precisa saber a quantidade 
total de funcionários do sexo Masculino e do sexo Feminino.  

a) Descubra essas duas informações utilizando o SQL.*/ 

SELECT
	COUNT(FirstName) AS 'Gênero Masculino'
FROM 
	DimEmployee
WHERE 
	Gender = 'M'
GO

SELECT
	COUNT(FirstName) AS 'Gênero Feminino'
FROM 
	DimEmployee
WHERE 
	Gender = 'F'
GO

/*b) O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as 
seguintes informações de cada um deles: Nome, E-mail, Data de Contratação.*/ 

SELECT TOP(1)
	FirstName AS 'Nome',
	LastName AS 'Sobrenome',
	EmailAddress AS 'E-mail',
	HireDate AS 'Data de Contratação'
FROM
	DimEmployee
WHERE
	Gender = 'M'
ORDER BY
	HireDate ASC;
GO

SELECT TOP(1)
	FirstName AS 'Nome',
	LastName AS 'Sobrenome',
	EmailAddress AS 'E-mail',
	HireDate AS 'Data de Contratação'
FROM
	DimEmployee
WHERE
	Gender = 'F'
ORDER BY
	HireDate ASC;
GO

/*5. Agora você precisa fazer uma análise dos produtos. Será necessário descobrir as seguintes 
informações: 

a) Quantidade distinta de cores de produtos. 

b) Quantidade distinta de marcas 

c) Quantidade distinta de classes de produto 

Para simplificar, você pode fazer isso em uma mesma consulta.*/


SELECT
    COUNT(DISTINCT ColorName) AS 'Quantidade de Cores',
    COUNT(DISTINCT BrandName) AS 'Quantidade de Marcas',
    COUNT(DISTINCT ClassName) AS 'Quantidade de Classes'
FROM
    DimProduct;
GO