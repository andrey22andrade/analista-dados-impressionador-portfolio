# 📘 Módulo 11 — CRUD

---

## 📌 Contexto do Módulo

Décimo primeiro módulo da trilha SQL Impressionador. Aborda as operações de **C**reate, **R**ead, **U**pdate e **D**elete (CRUD) diretamente sobre tabelas — diferente dos módulos anteriores, que trabalhavam sobre dados já existentes na `ContosoRetailDW`. Aqui o foco é criar bancos de dados e tabelas do zero, inserir dados (manualmente ou a partir de outra tabela), atualizar e excluir registros, além de alterar a estrutura de uma tabela já criada.

Os exemplos usam um banco de dados próprio, **BDImpressionador**, criado ao longo do módulo.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Criação de bancos de dados (`CREATE DATABASE`) e tabelas (`CREATE TABLE`), com definição do tipo de dado de cada coluna
- Inserção de dados manualmente com `INSERT INTO ... VALUES`
- Inserção de dados a partir do resultado de outra consulta com `INSERT INTO ... SELECT`
- Atualização de registros existentes com `UPDATE ... SET ... WHERE`
- Exclusão de registros com `DELETE FROM ... WHERE`
- Exclusão de uma tabela inteira com `DROP TABLE`
- Alteração da estrutura de uma tabela (`ALTER TABLE`): adicionar coluna, alterar tipo de coluna, remover coluna

---

## 📂 Estrutura do Módulo

```bash
modulo-11-crud/
│
├── Queries/
│   ├── 01_create_table_primeira_tabela.sql
│   ├── 02_tabela_funcionarios_exemplos.sql
│   ├── 03_insert_select.sql
│   ├── 04_insert_into.sql
│   ├── 05_update.sql
│   ├── 06_delete.sql
│   ├── 07_drop_table.sql
│   └── 08_alter_table.sql
│
├── Exercicios/
│   ├── 09_exercicios_11.sql
│   ├── 10_resultados_exercicios_11.sql
│   └── Lista_de_Exercicios_11.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 CREATE TABLE — Criando a Primeira Tabela

Cria uma tabela nova definindo nome e tipo de cada coluna: `CREATE TABLE nome (coluna1 tipo, coluna2 tipo, ...)`. Antes é necessário garantir que o banco de dados correto está selecionado (`CREATE DATABASE` + `USE`).

### 🔹 Tabela de Exemplo (Funcionários)

Uma tabela `Funcionarios` foi criada e populada com `INSERT INTO ... VALUES` contendo múltiplas linhas de uma vez, servindo de base para os exemplos de `ALTER TABLE` do módulo.

### 🔹 INSERT SELECT — Adicionando Dados de Outra Tabela

`INSERT INTO tabela_destino (colunas) SELECT colunas FROM tabela_origem` permite popular uma tabela a partir do resultado de uma consulta em outra tabela (inclusive de outro banco de dados, referenciando `banco.schema.tabela`), sem precisar digitar os valores manualmente.

### 🔹 INSERT INTO — Adicionando Novos Valores na Tabela

`INSERT INTO tabela (colunas) VALUES (...)` insere uma ou mais linhas manualmente. A ordem das colunas informada no `INSERT` não precisa seguir a ordem original da tabela, desde que os valores correspondam corretamente às colunas listadas.

### 🔹 UPDATE — Atualizando o Dado de uma Tabela

`UPDATE tabela SET coluna = valor WHERE condição` atualiza registros existentes. O `WHERE` é essencial — sem ele, a atualização é aplicada a todas as linhas da tabela.

### 🔹 DELETE — Deletando Dados

`DELETE FROM tabela WHERE condição` remove linhas específicas da tabela. Assim como no `UPDATE`, a ausência do `WHERE` apaga todos os registros.

### 🔹 DROP TABLE — Excluindo uma Tabela

`DROP TABLE nome` remove a tabela inteira (estrutura e dados) permanentemente do banco de dados.

### 🔹 ALTER TABLE

Modifica a estrutura de uma tabela já existente: `ADD` para adicionar uma ou mais colunas, `ALTER COLUMN` para mudar o tipo de dado de uma coluna existente, e `DROP COLUMN` para remover colunas.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios simulam a criação de um mini banco de dados relacional do zero, cobrindo o ciclo CRUD completo:

1. **Criação e exclusão de bancos de dados** — criação de um banco de teste (`BD_Teste`), sua exclusão, e criação do banco definitivo (`Exercicios`) que será usado no restante do exercício.
2. **Modelagem de tabelas relacionadas** — criação de 3 tabelas (`dCliente`, `dGerente`, `fContratos`) com tipos de dado apropriados para cada coluna, formando um modelo simples de dimensões e fatos.
3. **População inicial das tabelas** — inserção de 10 registros em `dCliente`, 4 em `dGerente` e 10 em `fContratos` via `INSERT INTO ... VALUES`.
4. **Inserção de novos registros** — adição de uma nova linha em cada uma das 3 tabelas, simulando um novo cliente, gerente e contrato.
5. **Correção de dados via UPDATE** — atualização de 3 colunas simultaneamente (`Data_de_Assinatura`, `ID_Gerente`, `Valor_do_Contrato`) de um contrato específico que havia sido registrado com erro.
6. **Remoção de registro via DELETE** — exclusão da linha de contrato inserida no exercício 4, filtrando pelo `ID_Contrato` correspondente.

As respostas completas estão documentadas em [`Exercicios/10_resultados_exercicios_11.sql`](./Exercicios/10_resultados_exercicios_11.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Criação de bancos de dados e tabelas do zero, com escolha adequada de tipos de dado
- Inserção de dados manualmente e a partir de outras tabelas
- Atualização e exclusão segura de registros (sempre com `WHERE`)
- Alteração de estrutura de tabelas já existentes
- Modelagem de um conjunto simples de tabelas relacionadas (dimensões e fatos)

---

## 🚀 Conclusão

Este módulo saiu do papel de "consultar dados existentes" para o de "criar e manter dados" — as operações CRUD são a base de qualquer sistema que armazena informação, e entendê-las é essencial mesmo para quem, como Analista de Dados, trabalha majoritariamente com leitura (`SELECT`). O próximo módulo avança para `Subqueries` e `CTE`, técnicas para estruturar consultas mais complexas de forma organizada e reutilizável.
