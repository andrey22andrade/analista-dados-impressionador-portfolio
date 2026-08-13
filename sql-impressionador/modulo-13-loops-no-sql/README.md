# 📘 Módulo 13 — Loops no SQL

---

## 📌 Contexto do Módulo

Décimo terceiro módulo da trilha SQL Impressionador. Introduz a estrutura de repetição `WHILE` em T-SQL, permitindo executar um bloco de instruções repetidamente enquanto uma condição for verdadeira. Cobre a sintaxe básica, os riscos de loops infinitos, e os comandos de controle de fluxo `BREAK` e `CONTINUE`.

A base de dados utilizada nos exemplos é a **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Estrutura básica do `WHILE` (`WHILE condição BEGIN ... END`)
- Riscos de loops infinitos e como evitá-los
- Interrupção antecipada de um loop com `BREAK`
- Pulo de uma iteração específica com `CONTINUE`
- Aplicação de `WHILE` para gerar contadores, relatórios por período e tabelas de calendário

---

## 📂 Estrutura do Módulo

```bash
modulo-13-loops-no-sql/
│
├── Queries/
│   └── 01_while_loops.sql
│
├── Exercicios/
│   ├── 02_exercicios_13.sql
│   ├── 03_resultados_exercicios_13.sql
│   └── Lista_de_Exercicios_13.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 WHILE — Estrutura Básica

`WHILE condição BEGIN ... END` executa o bloco repetidamente enquanto a condição for verdadeira. É essencial atualizar a variável de controle dentro do bloco (ex: incrementar um contador) para que a condição eventualmente se torne falsa.

### 🔹 Cuidado com Loops Infinitos

Se a variável de controle não for atualizada dentro do `WHILE` (ou a condição nunca deixar de ser verdadeira), o loop nunca termina, travando a execução — um erro comum e importante de reconhecer antes de rodar um script.

### 🔹 BREAK

Interrompe o loop imediatamente, mesmo que a condição do `WHILE` ainda seja verdadeira — útil para encerrar a repetição ao atingir uma condição específica no meio do processo (ex: parar ao chegar em um valor determinado).

### 🔹 CONTINUE

Pula o restante do bloco atual e volta direto para a checagem da condição do `WHILE`, sem executar o código que vem depois do `CONTINUE` naquela iteração — útil para "pular" certos valores sem interromper o loop inteiro.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios aplicam `WHILE` a cenários de contagem, relatório e geração de dados:

1. **Contador parametrizado** — `WHILE` controlado por duas variáveis (`@ValorInicial` e `@ValorFinal`), imprimindo o valor do contador a cada iteração até atingir o limite.
2. **Relatório de contratações por ano** — `WHILE` percorrendo os anos de 1996 a 2003, executando uma subconsulta (`COUNT` + `WHERE YEAR(HireDate) = ano`) a cada iteração e imprimindo o resultado formatado.
3. **Geração de tabela de calendário** — criação de uma tabela `Calendario` e uso de `WHILE` com `DATEADD(DAY, 1, ...)` para inserir uma linha por dia, do início ao fim de 2021, gerando uma tabela auxiliar de datas.

As respostas completas estão documentadas em [`Exercicios/03_resultados_exercicios_13.sql`](./Exercicios/03_resultados_exercicios_13.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Criação de estruturas de repetição em T-SQL
- Controle de fluxo dentro de loops (`BREAK` e `CONTINUE`)
- Prevenção de loops infinitos
- Geração programática de dados (ex: tabelas de calendário) e relatórios iterativos por período

---

## 🚀 Conclusão

Este módulo introduziu a lógica procedural de repetição em T-SQL, um recurso menos usado no dia a dia analítico (que prioriza operações em conjunto, como `JOIN` e `GROUP BY`) mas essencial para tarefas específicas como geração de tabelas auxiliares (calendários) ou processamento item a item. O próximo módulo avança para `Window Functions`, uma das ferramentas analíticas mais poderosas do SQL para cálculos que dependem da posição ou do contexto de cada linha dentro de um grupo.
