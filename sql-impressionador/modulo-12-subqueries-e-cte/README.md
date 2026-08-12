# 📘 Módulo 12 — Subqueries e CTE

---

## 📌 Contexto do Módulo

Décimo segundo módulo da trilha SQL Impressionador. Introduz Subqueries (consultas dentro de outras consultas) e CTEs (Common Table Expressions), duas técnicas complementares para estruturar consultas complexas de forma legível e reutilizável. Cobre as 4 aplicações de subquery (`WHERE` escalar, `WHERE` em lista, `SELECT`, `FROM`), os operadores `ANY`/`SOME`/`ALL` e `EXISTS`, e a sintaxe de CTEs — incluindo nomeação de colunas e múltiplas CTEs encadeadas.

A base de dados utilizada em todos os exemplos é a **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- O que é uma subquery e as 4 situações em que pode ser usada
- Subquery no `WHERE` como filtro escalar (valor único) e como filtro em lista (`IN`)
- Subquery no `SELECT` como coluna calculada
- Subquery no `FROM` como tabela derivada
- Subqueries aninhadas (uma subquery dentro de outra)
- Leitura do plano de execução estimado para entender o custo de uma consulta
- Operadores `ANY`, `SOME` e `ALL` para comparações com múltiplos valores
- `EXISTS` para verificar a existência de registros relacionados
- O que é uma CTE (`WITH ... AS (...)`) e como criar uma
- Nomeação explícita das colunas de uma CTE
- Uso de agregações sobre o resultado de uma CTE
- Criação de múltiplas CTEs na mesma consulta, relacionadas entre si

---

## 📂 Estrutura do Módulo

```bash
modulo-12-subqueries-e-cte/
│
├── Queries/
│   ├── 01_o_que_e_subquery.sql
│   ├── 02_subquery_where_exemplo1.sql
│   ├── 03_subquery_where_exemplo2.sql
│   ├── 04_subquery_where_exemplo3.sql
│   ├── 05_subquery_select.sql
│   ├── 06_subquery_from.sql
│   ├── 07_subquery_aninhada.sql
│   ├── 08_plano_execucao_estimado.sql
│   ├── 09_any_some_all.sql
│   ├── 10_exists.sql
│   ├── 11_cte_o_que_e_como_criar.sql
│   ├── 12_nomeando_colunas_cte.sql
│   ├── 13_calculando_agregacoes_cte.sql
│   └── 14_criando_multiplas_ctes.sql
│
├── Exercicios/
│   ├── 15_exercicios_12.sql
│   ├── 16_resultados_exercicios_12.sql
│   └── Lista_de_Exercicios_12.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 O que é uma Subquery e Onde Usamos

Uma subquery é uma consulta dentro de outra consulta, usada em 4 situações: (1) `WHERE` com valor escalar (`WHERE coluna = (SELECT ...)`), (2) `WHERE` com lista de valores (`WHERE coluna IN (SELECT ...)`), (3) `SELECT` como nova coluna calculada, e (4) `FROM` como tabela derivada.

### 🔹 Subquery no WHERE

Permite filtrar uma consulta com base em um valor (ou lista de valores) calculado dinamicamente por outra consulta — por exemplo, retornar produtos com custo acima da média (`WHERE UnitCost >= (SELECT AVG(UnitCost) ...)`), ou filtrar por uma categoria cujo ID precisa ser descoberto antes.

### 🔹 Subquery no SELECT

Adiciona uma coluna calculada a partir de uma subquery correlacionada — por exemplo, mostrar ao lado de cada produto a contagem total de vendas daquele produto específico, referenciando a tabela externa dentro da subquery.

### 🔹 Subquery no FROM

Usa o resultado de uma subquery como se fosse uma tabela, aplicando um alias (`FROM (SELECT ...) AS T`) — útil para pré-filtrar ou pré-agregar dados antes de uma segunda camada de agregação.

### 🔹 Subquery Aninhada

Uma subquery pode conter outra subquery dentro dela, permitindo resolver problemas em etapas lógicas encadeadas — por exemplo, descobrir o segundo maior salário aninhando um `MAX` que exclui o maior valor absoluto.

### 🔹 Plano de Execução Estimado

Ferramenta do SSMS para visualizar como o SQL Server pretende executar uma consulta, útil para comparar o custo relativo entre abordagens equivalentes (ex: filtro direto vs. subquery no `FROM`).

### 🔹 ANY, SOME e ALL

`= ANY(...)` equivale a um `IN`. `> ANY(...)` retorna valores maiores que o **mínimo** da lista; `< ANY(...)` retorna valores menores que o **máximo**. Já `> ALL(...)` exige ser maior que o **máximo** de todos os valores, e `< ALL(...)` exige ser menor que o **mínimo** — a diferença entre `ANY` (satisfazer pelo menos uma condição) e `ALL` (satisfazer todas) é central para o uso correto.

### 🔹 EXISTS

Verifica se uma subquery correlacionada retorna pelo menos uma linha, sem se importar com os valores em si — geralmente mais eficiente que um `IN` com subquery grande, pois pode parar de buscar assim que encontra a primeira correspondência.

### 🔹 CTE — O que é e Como Criar

Uma CTE (`WITH nome AS (SELECT ...)`) nomeia o resultado de uma consulta para ser referenciado na consulta principal seguinte, funcionando como uma tabela temporária "lógica" válida apenas durante aquela execução — melhora a legibilidade em comparação a subqueries aninhadas no `FROM`.

### 🔹 Nomeando Colunas de uma CTE

É possível definir explicitamente os nomes das colunas de uma CTE logo após seu nome (`WITH cte(coluna1, coluna2) AS (...)`), em vez de depender de aliases dentro do `SELECT` interno.

### 🔹 Calculando Agregações com CTE

Uma CTE pode ser usada como base para uma segunda camada de agregação — por exemplo, agrupar produtos por marca dentro da CTE e depois calcular a média dessa contagem na consulta externa.

### 🔹 Criando Múltiplas CTEs

É possível declarar mais de uma CTE no mesmo bloco `WITH` (separadas por vírgula) e relacioná-las entre si com `JOIN` na consulta final, mantendo a lógica de cada parte isolada e nomeada.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios cobrem cenários de negócio que exigem filtros dinâmicos, comparações com valores agregados e estruturação em CTEs:

1. **Vendas de uma loja específica** — subquery escalar no `WHERE` para descobrir o `StoreKey` a partir do nome da loja.
2. **Comparação com produto de referência** — subquery escalar no `WHERE` e no `SELECT` simultaneamente, comparando e exibindo o preço de um produto específico (ID 1893).
3. **Bonificação por área** — subquery escalar para descobrir o departamento de um funcionário específico e retornar todos os colegas da mesma área.
4. **Clientes com renda acima da média** — subquery escalar (`AVG`) combinada com filtro adicional (`CustomerType = 'Person'`).
5. **Clientes de uma promoção específica (subquery aninhada em lista)** — duas subqueries em `IN` encadeadas: primeiro descobrir o `PromotionKey`, depois os clientes que compraram com aquela promoção.
6. **Clientes fiéis por volume de compra** — subquery em lista com `GROUP BY` + `HAVING` dentro do `IN`, identificando clientes que compraram mais de 3000 unidades de um mesmo produto.
7. **Coluna de média como referência** — subquery escalar no `SELECT` para exibir a média geral de preço ao lado de cada produto individual.
8. **Indicadores sobre agregação (subquery no FROM)** — `MAX`, `MIN` e `AVG` aplicados sobre o resultado de uma subquery que já agrupa produtos por marca.
9. **CTE com agregação** — `CTE_QtdProdutosPorMarca` agrupando produtos por marca, seguida de um `SELECT MAX` sobre o resultado da CTE.
10. **Múltiplas CTEs relacionadas** — duas CTEs (`CTE_ProdutosAdventureWorks` e `CTE_CategoriaTelevisionsERadio`) unidas por `LEFT JOIN`, evidenciando a diferença de resultado entre `LEFT JOIN` e `INNER JOIN` quando nem todos os registros têm correspondência.

As respostas completas estão documentadas em [`Exercicios/16_resultados_exercicios_12.sql`](./Exercicios/16_resultados_exercicios_12.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Estruturação de consultas complexas em etapas lógicas, usando subqueries e CTEs
- Diferença entre subqueries escalares, em lista, correlacionadas e derivadas (`FROM`)
- Uso correto de `ANY`/`ALL` para comparações com múltiplos valores
- `EXISTS` como alternativa eficiente para verificação de existência
- Organização de consultas com múltiplas CTEs nomeadas e relacionadas

---

## 🚀 Conclusão

Este módulo introduziu duas das ferramentas mais poderosas para consultas analíticas complexas: subqueries e CTEs. Ambas permitem decompor um problema de negócio em etapas menores e mais legíveis, evitando consultas monolíticas difíceis de manter. O próximo módulo avança para `Loops no SQL`, técnicas de repetição usadas em cenários mais específicos de processamento procedural dentro do banco de dados.
