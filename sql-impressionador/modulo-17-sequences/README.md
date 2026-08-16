# 📘 Módulo 17 — Sequences

---

## 📌 Contexto do Módulo

Décimo sétimo módulo da trilha SQL Impressionador. Introduz `SEQUENCE`, um objeto do banco de dados para gerar números sequenciais automáticos — uma alternativa (e complemento) ao `IDENTITY` visto no módulo de Constraints, com a vantagem de não estar atrelada a uma única coluna/tabela e poder ser compartilhada ou controlada de forma mais flexível.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- O que é uma `SEQUENCE` e quando usá-la em vez de `IDENTITY`
- Sintaxe de criação: tipo de dado, valor inicial, incremento, valor máximo/mínimo e comportamento cíclico
- Obtenção do próximo valor de uma sequência com `NEXT VALUE FOR`
- Uso de uma sequência para popular a chave primária de uma tabela em `INSERT`s sucessivos
- Exclusão de uma sequência com `DROP SEQUENCE`

---

## 📂 Estrutura do Módulo

```bash
modulo-17-sequences/
│
├── Queries/
│   └── 01_sequences.sql
│
├── Exercicios/
│   ├── 02_exercicios_17.sql
│   ├── 03_resultados_exercicios_17.sql
│   └── Lista_de_Exercicios_17.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 O que é uma Sequence

Uma sequência é um objeto independente do banco de dados que gera valores numéricos sequenciais únicos, usada principalmente para preencher chaves primárias sem precisar informar o próximo ID manualmente — similar em propósito ao `IDENTITY`, mas não vinculada a uma coluna específica.

### 🔹 Sintaxe de Criação

```sql
CREATE SEQUENCE nome_sequencia
AS tipo
START WITH n
INCREMENT BY n
MAXVALUE n | NO MAXVALUE
MINVALUE n | NO MINVALUE
CYCLE | NO CYCLE
```

`START WITH` define o valor inicial; `INCREMENT BY` define o passo entre valores; `MAXVALUE`/`MINVALUE` limitam o intervalo (ou `NO MAXVALUE`/`NO MINVALUE` para não limitar); `CYCLE`/`NO CYCLE` define se a sequência reinicia do começo ao atingir o valor máximo.

### 🔹 NEXT VALUE FOR

Retorna o próximo número da sequência (e avança o contador internamente) — pode ser usado tanto em um `SELECT` isolado para consulta quanto diretamente dentro de um `INSERT INTO ... VALUES (NEXT VALUE FOR sequencia, ...)`, preenchendo a chave primária automaticamente a cada nova linha inserida.

### 🔹 DROP SEQUENCE

Remove permanentemente uma sequência do banco de dados.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios recriam o cenário da locadora `AlugaFacil` (já modelado no módulo de Constraints), agora substituindo `IDENTITY` por `SEQUENCE` nas chaves primárias:

1. **Criação das sequências** — `cliente_seq`, `carro_seq` e `locacoes_seq`, todas começando em 1, incrementando de 1 em 1 e sem valor máximo.
2. **Recriação das tabelas com sequência** — as mesmas 3 tabelas do módulo anterior (`Cliente`, `Carro`, `Locacoes`), agora com a chave primária declarada como `INT` simples (sem `IDENTITY`), sendo preenchida via `NEXT VALUE FOR` no momento do `INSERT`.
3. **Exclusão das sequências** — remoção das 3 sequências criadas ao final do exercício, com `DROP SEQUENCE`.

As respostas completas estão documentadas em [`Exercicios/03_resultados_exercicios_17.sql`](./Exercicios/03_resultados_exercicios_17.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Geração automática de valores sequenciais como alternativa ao `IDENTITY`
- Controle fino sobre o comportamento da numeração (início, incremento, limites, ciclo)
- Uso prático de sequências no preenchimento de chaves primárias durante inserções

---

## 🚀 Conclusão

Este módulo complementou o conhecimento de geração automática de identificadores, mostrando uma alternativa mais flexível ao `IDENTITY` para cenários que exigem controle explícito sobre a numeração ou compartilhamento entre tabelas. O próximo módulo avança para `Transactions`, que garantem que um conjunto de operações no banco de dados seja executado de forma atômica e segura.
