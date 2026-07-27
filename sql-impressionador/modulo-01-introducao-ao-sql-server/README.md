# 📘 Módulo 01 — Introdução ao SQL Server

---

## 📌 Contexto do Módulo

Primeiro módulo da trilha SQL Impressionador, do curso Analista de Dados Impressionador (Hashtag Treinamentos). Aborda os fundamentos para começar a consultar dados em SQL Server: criação de consultas, boas práticas de organização e comentários de código, seleção de colunas, renomeação de colunas (aliasing), remoção de duplicatas e limitação de linhas retornadas.

A base de dados utilizada em todos os exemplos é a **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Estrutura básica de uma consulta SQL (`SELECT ... FROM ...`)
- Boas práticas de organização de código (indentação e comentários)
- Seleção de colunas específicas
- Renomeação de colunas (aliasing)
- Remoção de valores duplicados (`DISTINCT`)
- Limitação de linhas retornadas (`TOP` e `TOP PERCENT`)
- Aplicação desses comandos na resolução de problemas de negócio

---

## 📂 Estrutura do Módulo

```bash
modulo-01-introducao-ao-sql-server/
│
├── Queries/
│   ├── 01_select_from.sql
│   ├── 02_salvando_consulta_e_resolvendo_problemas.sql
│   ├── 03_indentacao.sql
│   ├── 04_comentarios.sql
│   ├── 05_aliasing.sql
│   ├── 06_select_distinct.sql
│   └── 07_select_top_e_top_percent.sql
│
├── Exercicios/
│   ├── 08_exercicios_1.sql
│   ├── 09_respostas_exercicios_1.sql
│   └── Lista_de_Exercicios_1.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 Criando Consultas e usando SELECT FROM

Estrutura básica de uma consulta: `SELECT * FROM tabela` retorna todas as colunas e linhas de uma tabela. Também é possível especificar apenas as colunas desejadas (`SELECT coluna1, coluna2 FROM tabela`), o que é preferível em cenários reais por melhorar performance e legibilidade.

Antes de rodar qualquer consulta, é necessário garantir que o banco correto está selecionado (no caso, `ContosoRetailDW`), e sempre selecionar o código inteiro antes de executar para evitar erros.

### 🔹 Boas Práticas: Indentação

Um mesmo código pode ser escrito em uma única linha ou de forma indentada (uma cláusula por linha). A versão indentada é mais legível e é o padrão adotado a partir deste módulo:

```sql
-- sem indentação
SELECT * FROM DimStore

-- com indentação
SELECT 
	* 
FROM 
	DimStore
```

### 🔹 Boas Práticas: Comentários

Comentários em SQL têm três finalidades principais:
1. Documentar o que um trecho de código faz (`--` de linha única)
2. Comentar parte de uma consulta para desativá-la temporariamente sem apagar
3. Comentar blocos inteiros de código usando `/* ... */`

### 🔹 Renomeando Colunas (Aliasing)

O comando `AS` permite renomear colunas no resultado da consulta, útil para traduzir nomes técnicos em nomes de negócio (ex: `ProductName AS Produto`) ou para nomes com espaço, usando aspas simples (ex: `AS 'Primeiro Nome'`).

### 🔹 SELECT DISTINCT

Retorna os valores únicos de uma ou mais colunas, eliminando duplicatas. Quando aplicado a mais de uma coluna, o `DISTINCT` considera a combinação das colunas selecionadas, não cada uma isoladamente.

### 🔹 SELECT TOP e TOP PERCENT

`TOP(N)` retorna um número fixo de linhas; `TOP(N) PERCENT` retorna uma proporção do total de linhas da tabela — útil em cenários de amostragem, como campanhas que premiam uma parcela dos primeiros registros.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios simulam cenários reais de um Analista de Dados na empresa fictícia Contoso, envolvendo controle de cadastro, campanhas de marketing e levantamento de fornecedores:

1. **Auditoria de cadastro** — conferência da contagem de produtos e clientes na base (`DimProduct` e `DimCustomer`) para identificar divergências frente a números informados pela gestão.
2. **Campanha de aniversário** — seleção das colunas `CustomerKey`, `FirstName`, `EmailAddress`, `BirthDate` da tabela `DimCustomer`, com renomeação via `AS` para nomes em português, viabilizando uma ação de marketing.
3. **Ação de premiação por aniversário de 10 anos da empresa** — uso de `TOP(100)` para retornar os primeiros 100 clientes históricos, e `TOP(20) PERCENT` para retornar os primeiros 20% da base, combinando seleção de colunas específicas e aliasing em português.
4. **Levantamento de fornecedores** — uso de `SELECT DISTINCT` sobre a coluna `Manufacturer` da tabela `DimProduct`, renomeada para `'Fornecedores'`.
5. **Investigação de produtos sem vendas** — exploração cruzada entre `DimProduct` e `FactSales`, usando `SELECT DISTINCT ProductKey` na tabela de fatos para levantar quais produtos possuem registro de venda.

As respostas completas estão documentadas em [`Exercicios/09_respostas_exercicios_1.sql`](./Exercicios/09_respostas_exercicios_1.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Estrutura fundamental de consultas SQL
- Boas práticas de organização e legibilidade de código
- Seleção e renomeação de colunas
- Remoção de duplicatas
- Amostragem e limitação de resultados
- Aplicação desses comandos na resolução de problemas de negócio reais

---

## 🚀 Conclusão

Este módulo consolidou os fundamentos necessários para consultar e explorar dados em SQL Server de forma organizada e legível. Os comandos e boas práticas aqui trabalhados (SELECT, aliasing, DISTINCT, TOP) são a base para os módulos seguintes da trilha, que avançam para filtros, agregações e joins entre tabelas.
