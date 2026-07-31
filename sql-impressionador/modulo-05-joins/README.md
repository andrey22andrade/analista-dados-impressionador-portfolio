# 📘 Módulo 05 — Joins

---

## 📌 Contexto do Módulo

Quinto módulo da trilha SQL Impressionador. Introduz o conceito de `JOIN`, essencial para relacionar dados de múltiplas tabelas a partir de uma coluna em comum — a base do modelo de dados relacional. O módulo cobre todos os principais tipos de junção (`INNER`, `LEFT`, `RIGHT`, `FULL`, `CROSS`), os "anti joins" para identificar registros sem correspondência, múltiplos joins encadeados, e os comandos `UNION`/`UNION ALL` para combinar resultados de consultas.

Os exemplos combinam tabelas auxiliares criadas para fins didáticos (`produtos`, `subcategoria`, `marcas`) com tabelas reais da base **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Por que e quando usar `JOIN` entre tabelas relacionadas
- Diferença entre `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` e `FULL JOIN`
- Uso de "anti joins" (`LEFT`/`RIGHT`/`FULL` + `WHERE ... IS NULL`) para encontrar registros sem correspondência
- Como decidir qual tabela é a "esquerda" e qual é a "direita" em um join
- `CROSS JOIN` para combinações completas entre duas tabelas
- Encadeamento de múltiplos `JOIN`s na mesma consulta
- `UNION` e `UNION ALL` para empilhar resultados de consultas diferentes

---

## 📂 Estrutura do Módulo

```bash
modulo-05-joins/
│
├── Queries/
│   └── 01_joins_no_sql.sql
│
├── Exercicios/
│   ├── 02_exercicio_5.sql
│   ├── 03_resultados_exercicio_5.sql
│   └── Lista_de_Exercicios_5.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 Por que usar JOIN?

Manter os dados em tabelas separadas (fatos e dimensões) evita redundância, mas exige relacionar essas tabelas nas consultas para obter uma visão completa — por exemplo, unir `FactSales` (transações) com `DimProduct` (atributos de produto) para analisar vendas por nome de produto, não apenas por chave numérica.

### 🔹 INNER JOIN

Retorna apenas as linhas que têm correspondência em **ambas** as tabelas. Se um produto não tem subcategoria correspondente, ele não aparece no resultado.

### 🔹 LEFT JOIN / RIGHT JOIN

`LEFT JOIN` retorna todas as linhas da tabela à esquerda, mesmo sem correspondência na tabela à direita (preenchendo com `NULL`). `RIGHT JOIN` faz o inverso. Os dois são equivalentes entre si bastando inverter a ordem das tabelas — a escolha de qual usar depende de qual tabela deve ser "garantida" no resultado.

### 🔹 FULL JOIN

Retorna todas as linhas de ambas as tabelas, com `NULL` nas colunas sem correspondência de qualquer um dos lados — útil para visualizar dados órfãos nos dois sentidos ao mesmo tempo.

### 🔹 Anti Joins

Combinação de `LEFT`/`RIGHT`/`FULL JOIN` com um filtro `WHERE coluna IS NULL` para isolar apenas os registros **sem** correspondência — por exemplo, identificar subcategorias que não têm nenhum produto associado.

### 🔹 CROSS JOIN

Gera o produto cartesiano entre duas tabelas — todas as combinações possíveis entre as linhas de uma e de outra. Útil para gerar cenários de combinação completa, como todas as combinações de marca x canal de venda.

### 🔹 Múltiplos Joins

É possível encadear vários `JOIN`s em uma única consulta para atravessar uma cadeia de relacionamentos (ex: produto → subcategoria → categoria), bastando adicionar cláusulas `JOIN ... ON ...` sucessivas.

### 🔹 UNION e UNION ALL

Combinam o resultado de duas consultas com a mesma estrutura de colunas, empilhando as linhas. `UNION` remove duplicatas automaticamente; `UNION ALL` mantém todas as linhas, inclusive duplicadas, sendo mais performático quando não há necessidade de deduplicação.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios aplicam os diferentes tipos de join em cenários de análise de produto, loja, planejamento estratégico e vendas:

1. **Produto + Subcategoria** — `INNER JOIN` entre `DimProduct` e `DimProductSubcategory` para trazer o nome da subcategoria de cada produto.
2. **Subcategoria + Categoria** — identificação da coluna em comum (`ProductCategoryKey`) e uso de `LEFT JOIN` para complementar a subcategoria com dados de categoria.
3. **Loja + Geografia** — `LEFT JOIN` entre `DimStore` e `DimGeography` para trazer continente e país de cada loja, com seleção de colunas específicas.
4. **Produto + Categoria (join encadeado)** — `LEFT JOIN` duplo (produto → subcategoria → categoria) para trazer a descrição da categoria até a tabela de produtos.
5. **Plano estratégico + Conta** — reconhecimento inicial da tabela `FactStrategyPlan` com `TOP(100)`, seguido de `INNER JOIN` com `DimAccount` para trazer o nome da conta.
6. **Plano estratégico + Cenário** — `INNER JOIN` entre `FactStrategyPlan` e `DimScenario` para trazer o nome do cenário (Real, Orçado, Previsão).
7. **Subcategorias sem produtos** — uso de "anti join" (`RIGHT JOIN` + `WHERE ProductName IS NULL`) para identificar subcategorias órfãs, sem nenhum produto associado.
8. **Combinação Marca x Canal** — `CROSS JOIN` entre `DimProduct` e `DimChannel`, filtrado para 3 marcas específicas, para gerar todas as combinações possíveis.
9. **Vendas online + Promoção** — `INNER JOIN` entre `FactOnlineSales` e `DimPromotion`, filtrando apenas vendas com desconto (`PromotionName <> 'No Discount'`) e ordenando por data.
10. **Vendas consolidadas (múltiplos joins)** — `INNER JOIN` de `FactSales` com `DimChannel`, `DimStore` e `DimProduct` simultaneamente, ordenado por valor de venda decrescente.

As respostas completas estão documentadas em [`Exercicios/03_resultados_exercicio_5.sql`](./Exercicios/03_resultados_exercicio_5.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Relacionamento de tabelas a partir de colunas em comum
- Diferença de comportamento entre os principais tipos de `JOIN`
- Identificação de registros sem correspondência (anti joins)
- Combinação de múltiplos relacionamentos em uma única consulta
- Empilhamento de resultados de consultas diferentes com `UNION`/`UNION ALL`

---

## 🚀 Conclusão

Este módulo introduziu um dos pilares mais importantes do SQL: a capacidade de relacionar múltiplas tabelas para construir análises completas a partir de um modelo de dados normalizado. Combinado com os módulos anteriores (filtros, agregações e agrupamentos), o `JOIN` abre caminho para consultas analíticas muito mais ricas, que serão aprofundadas no próximo módulo, unindo `GROUP BY` e `JOIN`s na mesma consulta.
