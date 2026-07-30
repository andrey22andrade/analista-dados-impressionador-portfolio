# 📘 Módulo 04 — Criando Agrupamentos

---

## 📌 Contexto do Módulo

Quarto módulo da trilha SQL Impressionador. Introduz o comando `GROUP BY`, que permite segmentar dados em categorias e aplicar funções de agregação (do módulo anterior) a cada grupo. Também aborda a combinação de `GROUP BY` com `WHERE`, `HAVING` e `ORDER BY`, e a diferença fundamental entre `WHERE` e `HAVING`.

A base de dados utilizada em todos os exemplos é a **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Agrupamento de dados por uma ou mais colunas com `GROUP BY`
- Aplicação de funções de agregação (`COUNT`, `SUM`, `AVG`, `MAX`) por grupo
- Filtro de linhas antes do agrupamento com `WHERE`
- Filtro de grupos após o agrupamento com `HAVING`
- Diferença conceitual entre `WHERE` e `HAVING`
- Ordenação de resultados agrupados com `ORDER BY`
- Aplicação combinada desses comandos na resolução de problemas de negócio

---

## 📂 Estrutura do Módulo

```bash
modulo-04-criando-agrupamentos/
│
├── Queries/
│   ├── 01_group_by_parte1.sql
│   ├── 02_group_by_parte2.sql
│   ├── 03_group_by_where.sql
│   ├── 04_group_by_having.sql
│   ├── 05_where_vs_having.sql
│   └── 06_group_by_order_by.sql
│
├── Exercicios/
│   ├── 07_exercicios_4.sql
│   ├── 08_respostas_exercicios_4.sql
│   └── Lista_de_Exercicios_4.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 GROUP BY

Agrupa as linhas de uma tabela com base nos valores de uma ou mais colunas, permitindo aplicar funções de agregação a cada grupo separadamente — por exemplo, contar quantos produtos existem por marca (`COUNT(*)` agrupado por `BrandName`), ou somar a contagem de funcionários por tipo de loja (`SUM(EmployeeCount)` agrupado por `StoreType`).

### 🔹 GROUP BY com diferentes funções de agregação

O mesmo `GROUP BY` pode ser combinado com qualquer função de agregação: soma (`SUM`), média (`AVG`), máximo (`MAX`), mínimo (`MIN`) ou contagem (`COUNT`) — a escolha depende da métrica de negócio desejada para cada grupo.

### 🔹 GROUP BY + WHERE

O `WHERE` filtra as linhas **antes** de o agrupamento acontecer — por exemplo, contar a quantidade de produtos por cor, mas apenas considerando produtos da marca "Contoso".

### 🔹 GROUP BY + HAVING

O `HAVING` filtra os grupos **depois** de o agrupamento e a agregação acontecerem — por exemplo, retornar apenas as marcas que têm 200 ou mais produtos cadastrados (`HAVING COUNT(BrandName) >= 200`).

### 🔹 WHERE vs. HAVING

A diferença central: `WHERE` atua sobre as linhas da tabela original, antes do `GROUP BY`; `HAVING` atua sobre o resultado já agregado, depois do `GROUP BY`. É possível (e comum) usar os dois na mesma consulta — `WHERE` para restringir os dados de entrada e `HAVING` para restringir o resultado agregado.

### 🔹 GROUP BY + ORDER BY

O resultado de um `GROUP BY` pode ser ordenado normalmente com `ORDER BY`, inclusive por uma função de agregação (ex: `ORDER BY SUM(EmployeeCount) DESC`), para destacar os grupos com maiores ou menores valores.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios cobrem agrupamentos em diferentes tabelas (`FactSales`, `FactOnlineSales`, `DimProduct`, `DimCustomer`, `DimEmployee`), simulando análises reais de vendas, produto, cliente e RH:

1. **Vendas por canal e por loja** — resumo de quantidade vendida por canal (`channelKey`), quantidade vendida/devolvida por loja (`StoreKey`), e faturamento por canal filtrado para o ano de 2007 (`WHERE` + `GROUP BY`).
2. **Top produtos por faturamento** — valor total vendido por produto, filtrado com `HAVING` para vendas acima de $5.000.000 e depois adaptado para retornar o Top 10 com `TOP` + `ORDER BY`.
3. **Cliente e produtos mais comprados online** — identificação do cliente com maior volume de compras (`TOP(1)` + `GROUP BY` + `ORDER BY`), seguida de um segundo agrupamento filtrado por esse cliente para achar os 3 produtos mais comprados por ele.
4. **Análises de produto** — quantidade de produtos por marca, preço médio por classe (`ClassName`) e peso total por cor, todos via `GROUP BY` com diferentes agregações.
5. **Peso por tipo de produto (marca específica)** — `GROUP BY` de `StockTypeName`, filtrado por `BrandName = 'Contoso'` e ordenado por peso total decrescente.
6. **Checagem de completude do catálogo** — contagem de cores distintas por marca (`COUNT(DISTINCT ColorName)` agrupado por marca) para verificar se todas as marcas oferecem as 16 cores disponíveis.
7. **Perfil de clientes por sexo** — total de clientes e média salarial agrupados por `Gender`, com tratamento de valores nulos via `WHERE Gender IS NOT NULL` para corrigir um grupo "inesperado".
8. **Perfil de clientes por escolaridade** — mesma lógica do item anterior, aplicada à coluna `Education`, ordenada pela quantidade de clientes.
9. **Funcionários ativos por departamento** — contagem de funcionários por `DepartmentName`, filtrando apenas os com `Status = 'Current'`.
10. **Horas de férias por cargo (segmento específico)** — soma de `VacationHours` por `Title`, filtrando apenas funcionárias mulheres de 4 departamentos específicos, contratadas entre 1999 e 2000.

As respostas completas estão documentadas em [`Exercicios/08_respostas_exercicios_4.sql`](./Exercicios/08_respostas_exercicios_4.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Segmentação de dados em grupos com `GROUP BY`
- Aplicação de diferentes funções de agregação por grupo
- Diferença prática entre filtrar antes (`WHERE`) e depois (`HAVING`) do agrupamento
- Ordenação de resultados agrupados
- Combinação de múltiplos filtros e agrupamentos para responder perguntas de negócio de várias áreas (vendas, produto, cliente, RH)

---

## 🚀 Conclusão

Este módulo consolidou a capacidade de resumir e segmentar dados por categoria, unindo os conceitos de filtro, ordenação (módulo 2) e agregação (módulo 3) em uma única ferramenta analítica: o `GROUP BY`. Essa base é essencial para os próximos módulos, que avançam para `JOIN`s entre tabelas e agrupamentos combinados com relacionamentos.
