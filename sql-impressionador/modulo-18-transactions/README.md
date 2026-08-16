# 📘 Módulo 18 — Transactions

---

## 📌 Contexto do Módulo

Décimo oitavo módulo da trilha SQL Impressionador. Introduz `TRANSACTION`, o mecanismo que agrupa um conjunto de operações no banco de dados (inserções, atualizações, exclusões) para que sejam tratadas como uma unidade atômica: ou tudo é salvo (`COMMIT`), ou tudo é desfeito (`ROLLBACK`). Cobre transações nomeadas, commit/rollback condicionais, tratamento de erros com `TRY/CATCH`, transações aninhadas e savepoints.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- O que é uma transação e por que ela é necessária
- `BEGIN TRANSACTION`, `COMMIT` e `ROLLBACK`
- Nomeação de transações para facilitar controle em cenários mais complexos
- Commit e rollback condicionais, baseados em lógica de negócio
- Tratamento de erros em transações com `BEGIN TRY ... END TRY` / `BEGIN CATCH ... END CATCH`
- Transações aninhadas e o comportamento de `@@TRANCOUNT`
- `SAVE TRANSACTION` (savepoints) para desfazer parcialmente uma transação aninhada

---

## 📂 Estrutura do Módulo

```bash
modulo-18-transactions/
│
├── Queries/
│   └── 01_transactions.sql
│
├── Exercicios/
│   ├── 02_exercicios_18.sql
│   ├── 03_resultados_exercicios_18.sql
│   └── Lista_de_Exercicios_18.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 O que é uma Transaction

Uma transação agrupa uma ou mais operações de alteração do banco (`INSERT`, `UPDATE`, `DELETE`) para que possam ser tratadas como um bloco único: se tudo ocorrer como esperado, a transação é confirmada (`COMMIT`); se algo der errado, pode ser completamente desfeita (`ROLLBACK`), como se nunca tivesse acontecido.

### 🔹 BEGIN TRANSACTION, COMMIT e ROLLBACK

`BEGIN TRANSACTION` inicia o controle explícito sobre as operações seguintes. `COMMIT` efetiva as mudanças no banco de dados permanentemente. `ROLLBACK` desfaz todas as operações realizadas desde o início da transação.

### 🔹 Nomeando Transações

`BEGIN TRANSACTION nome` permite nomear a transação, o que se torna especialmente útil ao lidar com transações aninhadas, deixando claro qual `COMMIT`/`ROLLBACK` se refere a qual bloco.

### 🔹 Commit e Rollback Condicionais

É possível decidir entre `COMMIT` e `ROLLBACK` dinamicamente, com base em uma verificação lógica feita durante a própria transação — por exemplo, checar se um registro já existe antes de confirmar uma inserção, evitando duplicidade.

### 🔹 Tratamento de Erros com TRY/CATCH

Envolver uma transação em `BEGIN TRY ... END TRY` / `BEGIN CATCH ... END CATCH` permite capturar erros de execução (ex: um valor inválido) e reagir automaticamente com `ROLLBACK` no bloco `CATCH`, evitando que uma operação parcialmente executada corrompa os dados.

### 🔹 Transações Aninhadas

Uma transação pode conter outra transação dentro dela. `@@TRANCOUNT` mostra o nível de aninhamento atual. Um `ROLLBACK` sem savepoint desfaz **todas** as transações abertas até aquele ponto, mesmo as internas já commitadas — um comportamento importante de entender para não gerar resultados inesperados.

### 🔹 Savepoints (SAVE TRANSACTION)

`SAVE TRANSACTION nome` cria um ponto de restauração dentro de uma transação, permitindo um `ROLLBACK` parcial até aquele ponto específico, sem desfazer a transação inteira — útil para desfazer apenas uma parte de uma operação complexa em múltiplas etapas.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios aplicam transações a operações básicas de CRUD na tabela `Carro` do banco `AlugaFacil`:

1. **Criação e povoamento da tabela** — criação simples da tabela `Carro` (sem constraints) e inserção de 5 registros iniciais.
2. **Execução de transações com COMMIT** — três transações separadas e confirmadas individualmente: inserção de um novo carro (`id_carro = 6`), atualização do tipo de um carro existente (`Hatch` → `Sedan`), e exclusão do carro inserido anteriormente — cada uma delimitada por `BEGIN TRANSACTION` e `COMMIT`.

As respostas completas estão documentadas em [`Exercicios/03_resultados_exercicios_18.sql`](./Exercicios/03_resultados_exercicios_18.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Controle explícito sobre operações de alteração de dados no banco
- Garantia de atomicidade (tudo ou nada) em operações críticas
- Tratamento de erros de forma segura durante alterações no banco
- Uso de savepoints para desfazer parcialmente operações complexas em múltiplas etapas

---

## 🚀 Conclusão

Este módulo trouxe um dos conceitos mais importantes para confiabilidade de dados: transações garantem que operações de alteração não deixem o banco em um estado inconsistente, mesmo diante de erros. É um conceito essencial especialmente em sistemas que processam informações críticas (financeiras, de estoque, etc). O próximo módulo avança para `Functions`, que permitem encapsular lógica reutilizável diretamente no banco de dados.
