# 📘 Módulo 06 — Group By e Joins

---

## 📌 Contexto do Módulo

Sexto módulo da trilha SQL Impressionador. Módulo prático que une os dois pilares construídos até aqui — `JOIN` (módulo 5) e `GROUP BY`/funções de agregação (módulos 3 e 4) — para resolver análises de negócio que exigem relacionar tabelas **e** resumir os dados relacionados. Diferente dos módulos anteriores, este é composto inteiramente por exercícios aplicados, sem aulas de conceito isoladas.

A base de dados utilizada em todos os exemplos é a **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Combinação de `INNER JOIN` com `GROUP BY` na mesma consulta
- Agregação de métricas (`SUM`, `AVG`, `COUNT`) a partir de dados vindos de múltiplas tabelas relacionadas
- Uso de múltiplos `JOIN`s encadeados quando a relação entre duas tabelas não é direta
- Filtros pós-agrupamento (`HAVING`) combinados com `JOIN`
- Agrupamentos duplos (por duas colunas simultaneamente)

---

## 📂 Estrutura do Módulo

```bash
modulo-06-group-by-e-joins/
│
├── Exercicios/
│   ├── 01_exercicios_6.sql
│   ├── 02_resultados_exercicios_6.sql
│   └── Lista_de_Exercicios_6.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 JOIN + GROUP BY

Ao relacionar uma tabela de fatos (ex: `FactSales`) com uma tabela de dimensão (ex: `DimChannel`), é possível agrupar e agregar métricas usando os nomes descritivos da dimensão em vez das chaves numéricas — por exemplo, somar `SalesQuantity` agrupado por `ChannelName` em vez de `channelKey`.

### 🔹 Relações indiretas (múltiplos JOINs)

Quando duas tabelas não têm uma coluna em comum diretamente, é necessário encadear `JOIN`s através de tabelas intermediárias — por exemplo, para agrupar vendas por `ProductCategoryName`, é preciso passar por `DimProduct` → `DimProductSubcategory` → `DimProductCategory`, já que `FactSales` não se relaciona diretamente com a categoria.

### 🔹 HAVING após JOIN + GROUP BY

O filtro de grupos com `HAVING` funciona normalmente mesmo com `JOIN`s na consulta — por exemplo, filtrar apenas as cores de produto cujo total vendido ultrapasse determinado valor, ou apenas cenários específicos (`ScenarioName IN (...)`) depois de já ter relacionado e agrupado os dados.

### 🔹 Agrupamento duplo

É possível agrupar por duas colunas ao mesmo tempo (`GROUP BY coluna1, coluna2`), criando uma granularidade mais fina no resultado — por exemplo, quantidade de produtos por marca **e** por subcategoria simultaneamente.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios cobrem análises que exigem relacionar e agregar dados de várias tabelas de fatos (`FactSales`, `FactOnlineSales`, `FactExchangeRate`, `FactStrategyPlan`) com suas dimensões:

1. **Vendas por canal, loja e período** — resumo de quantidade vendida por `ChannelName`, quantidade vendida/devolvida por `StoreName`, e valor total vendido por mês e ano (`JOIN` com `DimChannel`, `DimStore` e `DimDate`).
2. **Análise de cor mais vendida** — identificação da cor de produto com maior quantidade vendida (`TOP(1)`) e contagem de cores com vendas acima de 3.000.000 (`HAVING`).
3. **Vendas por categoria (join indireto)** — agrupamento de quantidade vendida por `ProductCategoryName`, exigindo o encadeamento `DimProduct` → `DimProductSubcategory` → `DimProductCategory`.
4. **Cliente mais ativo e seus produtos favoritos** — identificação do cliente com maior volume de compras online, seguida do top 10 produtos mais comprados por esse cliente especificamente.
5. **Vendas por gênero** — total de produtos comprados agrupado por gênero do cliente, com tratamento de nulos.
6. **Taxa de câmbio média por moeda** — `AVG` da taxa de câmbio agrupada por `CurrencyDescription`, filtrada com `HAVING` para taxas entre 10 e 100.
7. **Planejamento estratégico por cenário** — soma total de `Amount` filtrada para os cenários "Actual" e "Budget" via `HAVING ScenarioName IN (...)`.
8. **Planejamento estratégico por ano** — soma de `Amount` agrupada por `CalendarYear`, via join com `DimDate`.
9. **Produtos por subcategoria (marca e cor específicas)** — contagem de produtos agrupada por `ProductSubcategoryName`.
10. **Agrupamento duplo por marca e subcategoria** — contagem de produtos agrupada simultaneamente por `BrandName` e `ProductSubcategoryName`, ordenado por marca.

As respostas completas estão documentadas em [`Exercicios/02_resultados_exercicios_6.sql`](./Exercicios/02_resultados_exercicios_6.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Combinação de `JOIN` e `GROUP BY` para análises que exigem dados de múltiplas tabelas
- Identificação de quando uma relação entre tabelas exige mais de um `JOIN`
- Aplicação de `HAVING` em consultas já relacionadas via `JOIN`
- Agrupamentos por múltiplas colunas para maior granularidade de análise

---

## 🚀 Conclusão

Este módulo consolidou, na prática, a combinação dos dois conceitos mais usados no dia a dia de um Analista de Dados: relacionar tabelas e resumir métricas. A maior parte das análises de negócio reais depende exatamente dessa combinação — dados de fatos relacionados a dimensões descritivas, agregados por categoria. Essa base prepara o terreno para os próximos módulos, que avançam para variáveis, manipulação de texto/data e funções condicionais.
