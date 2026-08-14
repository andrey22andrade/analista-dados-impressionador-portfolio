USE WF
GO

-- Ranking com GROUP BY
-- Crie uma tabela com o total de vendas por região e adicione uma coluna de ranking nessa tabela


SELECT
	Regiao AS 'Região',
	SUM(Qtd_Vendida) AS 'Total Vendido',
	RANK() OVER(ORDER BY SUM(Qtd_Vendida) DESC) AS 'Rank'
FROM
	Lojas
GROUP BY Regiao
ORDER BY Rank
GO