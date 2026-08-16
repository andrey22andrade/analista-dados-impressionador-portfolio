# 📘 Módulo 20 — Procedures

---

## 📌 Contexto do Módulo

Vigésimo módulo da trilha SQL Impressionador. Introduz `PROCEDURE` (Stored Procedure) — um bloco de código nomeado e armazenado no banco de dados, capaz de executar múltiplas instruções SQL, incluir estruturas de controle e receber parâmetros. Diferente das functions do módulo anterior, procedures podem executar operações de alteração de dados e não precisam retornar um valor.

Os exemplos combinam os bancos `Exercicios`, `AlugaFacil` e `ContosoRetailDW`.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- O que é uma procedure e por que usá-la
- Criação de procedures sem parâmetros
- Criação de procedures com um ou múltiplos parâmetros de entrada
- Parâmetros com valor padrão (default)
- Construção de procedures mais complexas, combinando variáveis, subconsultas e `INSERT`
- Exclusão de uma procedure (`DROP PROCEDURE`)
- Diferenças entre Functions e Procedures

---

## 📂 Estrutura do Módulo

```bash
modulo-20-procedures/
│
├── Queries/
│   └── 01_procedures.sql
│
├── Exercicios/
│   ├── 02_exercicios_20.sql
│   ├── 03_resultados_exercicios_20.sql
│   └── Lista_de_Exercicios_20.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 O que é uma Procedure

Uma procedure é um bloco de código com nome, armazenado no banco de dados, que pode conter uma sequência de comandos SQL — usada para tarefas repetitivas ou complexas demais para uma simples query, podendo incluir estruturas de controle (variáveis, condicionais, transações).

### 🔹 Procedures sem Parâmetros

`CREATE PROCEDURE nome AS BEGIN ... END`, executada com `EXECUTE nome` — útil para consultas fixas que são chamadas repetidamente sem variação.

### 🔹 Procedures com Parâmetros

`CREATE PROCEDURE nome(@param tipo) AS BEGIN ... END`, com o parâmetro usado dentro da lógica da procedure (ex: um filtro de `WHERE`). É possível declarar múltiplos parâmetros, separados por vírgula, e informá-los na chamada tanto por posição quanto nomeados (`EXECUTE nome @param1 = valor1, @param2 = valor2`).

### 🔹 Parâmetros com Valor Default

Um parâmetro pode ter um valor padrão (`@param tipo = valor_padrao`), tornando-o opcional na chamada da procedure — se não informado, assume o valor default definido na criação.

### 🔹 Procedures Complexas

Uma procedure pode combinar múltiplas etapas: declarar variáveis, usar subconsultas para descobrir valores intermediários (ex: buscar o ID de um gerente pelo nome), e finalizar com uma operação de alteração (`INSERT`) — encapsulando todo um processo de negócio em uma única chamada.

### 🔹 Excluindo uma Procedure

`DROP PROCEDURE nome` remove a procedure permanentemente do banco de dados.

### 🔹 Functions vs. Procedures

Três diferenças centrais: (1) procedures executam processos/sequências de comandos, enquanto functions fazem cálculos; (2) procedures não podem ser chamadas dentro de um `SELECT`, enquanto functions podem; (3) procedures não precisam retornar valor, enquanto functions são obrigadas a retornar algo.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios cobrem procedures de consulta parametrizada (1-3) e procedures de alteração de dados encapsuladas em transação (4-6):

1. **Resumo de produtos por categoria (parametrizado por marca)** — procedure que recebe a marca e retorna a contagem de produtos por categoria, exigindo um duplo `JOIN` (produto → subcategoria → categoria) dentro da definição.
2. **Top N clientes por data de primeira compra** — procedure parametrizada pelo número de clientes a retornar (`TOP(@topn)`), tornando o tamanho do resultado dinâmico.
3. **Funcionários contratados em um mês/ano específico** — procedure com dois parâmetros (mês e ano), filtrando via `DATEPART`.
4. **Cadastro de novo carro** — procedure sem parâmetros que insere uma linha fixa na tabela `Carro`, encapsulada em uma transação (`BEGIN TRANSACTION` + `COMMIT`).
5. **Alteração de valor de um carro** — procedure parametrizada por `id_carro` e novo valor, também encapsulada em transação.
6. **Exclusão de um carro por ID** — procedure parametrizada pelo ID a ser excluído, igualmente dentro de uma transação.

As respostas completas estão documentadas em [`Exercicios/03_resultados_exercicios_20.sql`](./Exercicios/03_resultados_exercicios_20.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Encapsulamento de processos complexos e reutilizáveis em procedures
- Parametrização de consultas e operações de alteração de dados
- Combinação de procedures com transações para garantir segurança em operações de escrita
- Distinção clara entre quando usar uma function e quando usar uma procedure

---

## 🚀 Conclusão

Este módulo completou o conjunto de ferramentas de automação e encapsulamento de lógica no banco de dados: functions para cálculos reutilizáveis, procedures para processos completos (incluindo alteração de dados). Juntas, essas ferramentas reduzem duplicação de código e centralizam regras de negócio no próprio banco. Os próximos módulos avançam para `Triggers` (DML e DDL), que automatizam ações disparadas por eventos no banco de dados.
