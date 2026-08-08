# 📘 Módulo 10 — SQL Views

---

## 📌 Contexto do Módulo

Décimo módulo da trilha SQL Impressionador. Introduz o conceito de `VIEW` — uma consulta salva como objeto do banco de dados, que pode ser reutilizada como se fosse uma tabela. O módulo cobre criação, boas práticas de execução em lote (`GO`), especificação do banco de dados correto, alteração e exclusão de views.

A base de dados utilizada em todos os exemplos é a **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- O que é uma `VIEW` e por que usá-la
- Criação de views com `CREATE VIEW ... AS`
- Regra do `CREATE VIEW` como única instrução do lote (uso correto do `GO`)
- Especificação do banco de dados correto com `USE`, para evitar criar objetos no banco errado
- Alteração de views existentes com `ALTER VIEW`
- Exclusão de views com `DROP VIEW`
- Views com filtros, joins e agregações — não apenas seleções simples

---

## 📂 Estrutura do Módulo

```bash
modulo-10-sql-views/
│
├── Queries/
│   ├── 01_create_view_primeira_view.sql
│   ├── 02_create_view_only_statement_batch.sql
│   ├── 03_use_database.sql
│   ├── 04_alter_view.sql
│   └── 05_drop_view.sql
│
├── Exercicios/
│   ├── 06_exercicios_10.sql
│   ├── 07_resultados_exercicios_10.sql
│   └── Lista_de_Exercicios_10.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 CREATE VIEW — Criando a Primeira View

Uma `VIEW` é uma consulta salva sob um nome, que pode ser consultada como se fosse uma tabela (`SELECT * FROM vwNome`). Sintaxe básica: `CREATE VIEW nome AS SELECT ...`. Views facilitam reutilizar lógica de consulta complexa sem reescrevê-la toda vez.

### 🔹 CREATE VIEW — Regra do "único statement do lote"

O SQL Server exige que o `CREATE VIEW` seja a única instrução dentro do seu lote (batch) — por isso é necessário separar cada `CREATE VIEW` com `GO` de outras instruções antes e depois, inclusive de outro `CREATE VIEW`.

### 🔹 USE Database

O comando `USE nome_do_banco` define em qual banco de dados as instruções seguintes serão executadas. Importante para garantir que uma view (ou qualquer objeto) seja criada no banco correto, evitando erros por estar "conectado" ao banco errado.

### 🔹 ALTER VIEW

Modifica a definição de uma view já existente, redefinindo sua consulta por completo (`ALTER VIEW nome AS SELECT ...`) — usado, por exemplo, para adicionar uma coluna ou um filtro a uma view já criada, sem precisar excluí-la e recriá-la.

### 🔹 DROP VIEW

Remove permanentemente uma ou mais views do banco de dados (`DROP VIEW nome`).

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios cobrem criação, alteração e exclusão de views para diferentes finalidades de negócio:

1. **Views básicas de seleção de colunas** — `vwProdutos`, `vwFuncionarios` e `vwLojas`, cada uma selecionando um subconjunto específico de colunas de suas respectivas tabelas.
2. **View com transformação de dados** — `vwClientes`, combinando `CONCAT` (nome completo), `REPLACE` (gênero por extenso) e `FORMAT` (renda anual em formato monetário) na definição da view.
3. **Views com filtros de negócio** — `vwLojasAtivas` (apenas lojas com status ativo), `vwFuncionariosMkt` (apenas funcionários do departamento de Marketing) e `vwContosoLitwareSilver` (produtos de marcas e cor específicas).
4. **View com JOIN e agregação** — `vwTotalVendidoProdutos`, agrupando quantidade vendida por nome de produto a partir de um `INNER JOIN` entre `FactSales` e `DimProduct`.
5. **Alteração de views existentes** — uso de `ALTER VIEW` para adicionar uma coluna (`BrandName`) a uma view já criada, e para incluir filtros (funcionárias do sexo feminino; apenas lojas ativas) em views que antes não tinham essa restrição.
6. **Ciclo completo de vida de uma view** — criação de `vw_6a` (total de produtos por marca), alteração para incluir uma segunda métrica (peso total), e por fim exclusão da view com `DROP VIEW`.

As respostas completas estão documentadas em [`Exercicios/07_resultados_exercicios_10.sql`](./Exercicios/07_resultados_exercicios_10.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Criação e reutilização de consultas salvas como views
- Boas práticas de execução em lote com `GO`
- Garantia do banco de dados correto com `USE`
- Manutenção de views existentes (alteração e exclusão)
- Aplicação de views para simplificar o acesso a consultas complexas (com filtros, joins e agregações) em relatórios recorrentes

---

## 🚀 Conclusão

Este módulo introduziu as `VIEW`s como ferramenta para organizar e reutilizar lógica de consulta no banco de dados, um recurso essencial para manter relatórios e análises consistentes sem repetir código. Encerra também o bloco de fundamentos de consulta e manipulação de dados da trilha — o próximo módulo avança para `CRUD` (Create, Read, Update, Delete), cobrindo como inserir, atualizar e remover dados diretamente nas tabelas.
