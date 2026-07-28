# 📘 Módulo 02 — Ordenando e Filtrando Dados

---

## 📌 Contexto do Módulo

Segundo módulo da trilha SQL Impressionador. Aprofunda a capacidade de consultar dados de forma direcionada, introduzindo o comando `WHERE` para filtros (números, texto e datas), os operadores lógicos `AND`, `OR` e `NOT`, os filtros especiais `BETWEEN`, `IN`, `IS NULL`/`IS NOT NULL` e `LIKE`, além do comando `ORDER BY` para ordenação de resultados.

A base de dados utilizada em todos os exemplos é a **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Filtragem de dados com `WHERE` (colunas numéricas, texto e data)
- Combinação de condições com `AND`, `OR` e `NOT`
- Cuidados ao combinar `AND` e `OR` na mesma consulta (uso de parênteses)
- Filtros por intervalo (`BETWEEN`), lista de valores (`IN`) e valores nulos (`IS NULL` / `IS NOT NULL`)
- Filtro de padrões de texto com `LIKE`
- Ordenação de resultados com `ORDER BY` (simples e com múltiplos critérios de desempate)
- Aplicação desses comandos na resolução de problemas de negócio

---

## 📂 Estrutura do Módulo

```bash
modulo-02-ordenando-e-filtrando-dados/
│
├── Queries/
│   ├── 01_where_numeros.sql
│   ├── 02_where_texto.sql
│   ├── 03_where_data.sql
│   ├── 04_where_and.sql
│   ├── 05_where_or.sql
│   ├── 06_where_not.sql
│   ├── 07_cuidados_and_or.sql
│   ├── 08_where_between.sql
│   ├── 09_where_in.sql
│   ├── 10_where_is_null.sql
│   ├── 11_where_like.sql
│   ├── 12_exercicios_fixacao_and_or_not.sql
│   ├── 13_order_by_parte1.sql
│   └── 14_order_by_parte2.sql
│
├── Exercicios/
│   ├── 15_exercicios_2.sql
│   ├── 16_respostas_exercicios_2.sql
│   └── Lista_de_Exercicios_2.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 WHERE — Filtrando Colunas Numéricas, Texto e Data

O comando `WHERE` filtra linhas de acordo com uma condição lógica:
- **Números:** operadores de comparação (`>=`, `>`, `<`, `<=`, `=`), ex: produtos com `UnitPrice >= 1000`.
- **Texto:** comparação exata com aspas simples, ex: `BrandName = 'Fabrikam'`.
- **Data:** comparação de datas no formato `'AAAA-MM-DD'`, combinável com `ORDER BY` para ver os resultados cronologicamente.

### 🔹 AND, OR e NOT

- `AND` exige que todas as condições sejam verdadeiras simultaneamente.
- `OR` exige que ao menos uma das condições seja verdadeira.
- `NOT` inverte o resultado de uma condição (equivalente a "diferente de", quando aplicado a uma igualdade).

### 🔹 Cuidados ao Combinar AND e OR

Ao misturar `AND` e `OR` na mesma cláusula `WHERE`, é essencial usar parênteses para deixar explícito o agrupamento lógico desejado — sem eles, o SQL Server aplica a precedência padrão (`AND` antes de `OR`), o que pode gerar um resultado diferente do esperado.

### 🔹 BETWEEN, IN, IS NULL / IS NOT NULL

- **`BETWEEN`** filtra valores dentro de um intervalo (numérico ou de data), incluindo os limites.
- **`IN`** é uma alternativa mais limpa a múltiplos `OR` quando se quer comparar uma coluna com uma lista de valores possíveis.
- **`IS NULL` / `IS NOT NULL`** identificam ausência ou presença de valor em uma coluna — útil, por exemplo, para diferenciar clientes pessoa física de pessoa jurídica a partir de uma coluna de nome de empresa vazia.

### 🔹 LIKE

Filtro de padrões em colunas de texto usando `%` como coringa: início (`'Type%'`), fim (`'%WMA'`) ou meio (`'%MP3 Player%'`) de uma string.

### 🔹 ORDER BY

Ordena o resultado de uma consulta por uma ou mais colunas, de forma ascendente (`ASC`, padrão) ou descendente (`DESC`). É possível definir múltiplos critérios de desempate (ex: ordenar por preço e, em caso de empate, por peso).

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios simulam cenários reais de um Analista de Dados na empresa fictícia Contoso, cobrindo relatórios de vendas, logística, controle de qualidade e categorização de lojas:

1. **Relatório de vendas** — `TOP(100)` das vendas ordenadas por quantidade vendida (`SalesQuantity`), para atender uma demanda urgente da diretoria.
2. **Desempate de produtos por preço** — ordenação dos top 10 produtos por `UnitPrice`, com critérios de desempate adicionais (`Weight` e `AvailableForSaleDate`).
3. **Logística por peso** — filtro de produtos com `Weight > 100`, seleção de colunas específicas com aliasing e ordenação decrescente por peso.
4. **Relatório de lojas ativas** — seleção de `StoreName`, `OpenDate` e `EmployeeCount` da tabela `DimStore`, com filtro combinando `StoreType` e `Status` para identificar lojas ativas.
5. **Recall de produtos com defeito** — filtro combinando `LIKE` (nome contendo "Home Theater"), `BrandName` e data exata de disponibilização, para identificar produtos a serem retirados de venda.
6. **Lojas inativas** — duas abordagens: filtro direto pela coluna `Status = 'Off'`, e alternativa usando `CloseDate IS NOT NULL` caso a coluna de status não exista.
7. **Categorização de lojas por número de funcionários** — três consultas com `WHERE` e `BETWEEN` para segmentar lojas em 3 categorias de fornecimento de máquinas de café.
8. **Produtos em promoção** — filtro com `LIKE` na descrição do produto para identificar todas as TVs de LCD.
9. **Filtro combinado com IN** — lista de produtos de 5 cores específicas, restrita a 3 marcas, usando `IN` para simplificar a condição.
10. **Filtro composto (marca + cor + faixa de preço)** — combinação de `AND` e `BETWEEN`, com ordenação decrescente por preço.

As respostas completas estão documentadas em [`Exercicios/16_respostas_exercicios_2.sql`](./Exercicios/16_respostas_exercicios_2.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Filtragem de dados por número, texto e data
- Combinação de múltiplas condições lógicas com atenção à precedência de operadores
- Uso de filtros especiais (`BETWEEN`, `IN`, `IS NULL`, `LIKE`) para cenários específicos de negócio
- Ordenação de resultados com múltiplos critérios de desempate
- Aplicação desses comandos na resolução de problemas reais de vendas, logística e gestão de lojas

---

## 🚀 Conclusão

Este módulo consolidou a capacidade de filtrar e ordenar dados de forma precisa em SQL Server, ampliando os fundamentos do módulo anterior. Os comandos aqui trabalhados (`WHERE`, `AND`/`OR`/`NOT`, `BETWEEN`, `IN`, `LIKE`, `ORDER BY`) formam a base para consultas analíticas mais robustas, que serão expandidas nos próximos módulos com funções de agregação e agrupamentos.
