# 📘 Módulo 03 — Funções de Agregação

---

## 📌 Contexto do Módulo

Terceiro módulo da trilha SQL Impressionador. Introduz as funções de agregação do SQL Server — `COUNT`, `SUM`, `AVG`, `MIN` e `MAX` — usadas para resumir grandes volumes de dados em métricas de negócio (totais, médias, contagens e extremos).

A base de dados utilizada em todos os exemplos é a **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Contagem de registros com `COUNT` (com e sem `DISTINCT`)
- Soma de valores com `SUM`
- Cálculo de médias com `AVG`
- Identificação de valores extremos com `MIN` e `MAX`
- Combinação de funções de agregação com `WHERE` e `ORDER BY` para responder perguntas de negócio

---

## 📂 Estrutura do Módulo

```bash
modulo-03-funcoes-de-agregacao/
│
├── Queries/
│   ├── 01_count.sql
│   ├── 02_count_distinct.sql
│   ├── 03_sum.sql
│   ├── 04_avg.sql
│   └── 05_min_max.sql
│
├── Exercicios/
│   ├── 06_exercicios_3.sql
│   ├── 07_respostas_exercicios_3.sql
│   └── Lista_de_Exercicios_3.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 COUNT

Conta o número de linhas não nulas de uma coluna. Importante: `COUNT` **não contabiliza valores nulos** da coluna informada — por isso, contar `COUNT(ProductName)` pode retornar um número diferente de `COUNT(Size)` na mesma tabela, dependendo de quantos nulos cada coluna tem.

### 🔹 COUNT + DISTINCT

Combina `COUNT` com `DISTINCT` para contar valores únicos em vez do total de linhas — por exemplo, descobrir quantas marcas diferentes existem em uma tabela de produtos, independentemente de quantos produtos cada marca tenha.

### 🔹 SUM

Soma os valores numéricos de uma coluna. Útil para métricas de totais, como quantidade total vendida ou devolvida.

### 🔹 AVG

Calcula a média aritmética dos valores de uma coluna, ignorando valores nulos — útil para métricas como renda média ou preço médio.

### 🔹 MIN e MAX

Retornam, respectivamente, o menor e o maior valor de uma coluna. Podem ser usados na mesma consulta para retornar os dois extremos de uma vez.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios simulam análises que um Analista de Dados faria para as áreas comercial, marketing, RH e operações da empresa fictícia Contoso:

1. **Análise de vendas por canal** — soma da quantidade vendida e devolvida (`SUM`) na tabela `FactSales`, filtrada pelo canal de venda "Store".
2. **Média salarial segmentada** — cálculo da média de `YearlyIncome` (`AVG`) filtrando clientes com ocupação "Professional".
3. **Extremos de funcionários por loja** — uso de `MAX` e `MIN` para identificar a maior e a menor contagem de funcionários entre as lojas, combinados com `TOP(1)` e `ORDER BY` para identificar o nome de cada loja correspondente.
4. **Contagem por gênero e homenagem aos mais antigos** — `COUNT` filtrado por gênero para totalizar funcionários homens e mulheres, e `TOP(1)` ordenado por `HireDate` para identificar o funcionário e a funcionária mais antigos de cada gênero.
5. **Análise de diversidade de produtos** — `COUNT(DISTINCT ...)` aplicado simultaneamente a três colunas (cor, marca e classe) em uma única consulta, para levantar a variedade do catálogo de produtos.

As respostas completas estão documentadas em [`Exercicios/07_respostas_exercicios_3.sql`](./Exercicios/07_respostas_exercicios_3.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Resumo de grandes volumes de dados em métricas agregadas
- Diferença de comportamento entre `COUNT` simples e `COUNT DISTINCT`
- Tratamento de valores nulos em funções de agregação
- Combinação de funções de agregação com filtros (`WHERE`) e ordenação (`ORDER BY` + `TOP`) para responder perguntas de negócio específicas

---

## 🚀 Conclusão

Este módulo introduziu as funções de agregação, ferramenta essencial para transformar dados brutos em indicadores de negócio. Junto com os filtros e ordenação do módulo anterior, essas funções formam a base para o próximo módulo, que aprofunda o uso de agrupamentos (`GROUP BY`) para segmentar essas métricas por categoria.
