# 📘 Módulo 21 — Triggers DML

---

## 📌 Contexto do Módulo

Vigésimo primeiro módulo da trilha SQL Impressionador. Introduz `TRIGGER`s do tipo DML — gatilhos disparados automaticamente quando um comando `INSERT`, `UPDATE` ou `DELETE` é executado sobre uma tabela ou view. Cobre triggers `AFTER` (após o evento) e `INSTEAD OF` (no lugar do evento), as tabelas especiais `INSERTED`/`DELETED`, e como habilitar, desabilitar e excluir triggers.

Os exemplos usam o banco `Exercicios` (dos módulos de CRUD/Constraints), aplicando triggers à tabela `dCliente`.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- O que é uma trigger e a diferença entre triggers DDL e DML
- Criação de uma trigger `AFTER` disparada por `INSERT`, `UPDATE` e/ou `DELETE`
- As tabelas especiais `INSERTED` e `DELETED`, disponíveis apenas dentro de uma trigger
- Identificação de qual evento (insert/update/delete) disparou a trigger, a partir do conteúdo de `INSERTED`/`DELETED`
- Criação de uma trigger `INSTEAD OF` para bloquear ou substituir o comportamento padrão de um evento
- Uso de `RAISERROR` e `ROLLBACK` dentro de uma trigger para impedir uma operação
- Habilitar e desabilitar triggers (individualmente ou todas de uma tabela)
- Exclusão de uma trigger (`DROP TRIGGER`)

---

## 📂 Estrutura do Módulo

```bash
modulo-21-triggers-dml/
│
├── Queries/
│   └── 01_triggers_dml.sql
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 O que é uma Trigger

Um gatilho disparado automaticamente quando ocorre um evento no banco de dados. Triggers podem responder a eventos **DDL** (`CREATE`, `ALTER`, `DROP`) ou **DML** (`INSERT`, `UPDATE`, `DELETE`) — este módulo foca nas do tipo DML.

### 🔹 Trigger AFTER

`CREATE TRIGGER nome ON tabela AFTER INSERT, UPDATE, DELETE AS BEGIN ... END` executa a lógica definida **depois** que o evento já ocorreu na tabela — útil para logs, notificações ou validações posteriores.

### 🔹 Tabelas INSERTED e DELETED

Dentro de uma trigger, o SQL Server disponibiliza duas tabelas temporárias especiais: `INSERTED` contém as linhas novas/atualizadas; `DELETED` contém as linhas removidas/substituídas. O padrão de preenchimento indica o tipo de evento:
- **INSERT**: `INSERTED` tem registros, `DELETED` fica vazia.
- **DELETE**: `INSERTED` fica vazia, `DELETED` tem registros.
- **UPDATE**: ambas têm registros (o valor antigo em `DELETED`, o novo em `INSERTED`).

Essa lógica permite identificar dentro da própria trigger qual operação foi executada, usando `IF EXISTS (SELECT * FROM INSERTED)` e `IF EXISTS (SELECT * FROM DELETED)` combinados.

### 🔹 Trigger INSTEAD OF

`INSTEAD OF INSERT` (ou `UPDATE`/`DELETE`) substitui completamente o comportamento padrão do evento — a operação original só acontece se a lógica dentro da trigger explicitamente a executar. Usada para implementar regras de negócio que bloqueiam ou modificam a operação original, como impedir cadastros em determinados dias.

### 🔹 RAISERROR e ROLLBACK em Triggers

Dentro de uma trigger `INSTEAD OF`, é possível usar `RAISERROR` para emitir uma mensagem de erro personalizada e `ROLLBACK` para cancelar a operação, impedindo que os dados sejam alterados quando uma regra de negócio não é atendida.

### 🔹 Habilitando, Desabilitando e Excluindo Triggers

`ENABLE TRIGGER nome ON tabela` (ou `DISABLE TRIGGER`) ativa/desativa uma trigger específica sem excluí-la; `ENABLE/DISABLE TRIGGER ALL ON tabela` afeta todas as triggers da tabela de uma vez. `DROP TRIGGER nome` remove a trigger permanentemente.

---

## 🧪 Aplicação Prática

Este módulo não trouxe uma lista de exercícios separada — o aprendizado foi consolidado diretamente na progressão dos exemplos do arquivo de aula:

1. Criação de uma trigger simples que apenas imprime uma mensagem após qualquer alteração na tabela `dCliente`.
2. Evolução da trigger para exibir o conteúdo de `DELETED`, entendendo o que cada tabela especial contém.
3. Refinamento para identificar exatamente qual operação (insert/update/delete) disparou a trigger, combinando os dois `EXISTS`.
4. Criação de uma trigger `INSTEAD OF INSERT` para bloquear cadastros de clientes aos domingos, usando `RAISERROR` e `ROLLBACK` para impedir a operação original.
5. Demonstração de como habilitar, desabilitar e excluir a trigger criada.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Automação de reações a eventos de alteração de dados
- Uso das tabelas especiais `INSERTED`/`DELETED` para auditoria e lógica condicional
- Implementação de regras de negócio que bloqueiam operações indesejadas
- Gerenciamento do ciclo de vida de uma trigger (criar, habilitar/desabilitar, excluir)

---

## 🚀 Conclusão

Este módulo trouxe uma ferramenta poderosa de automação e governança de dados: triggers DML garantem que certas regras sejam aplicadas automaticamente, sem depender de disciplina manual em cada aplicação que escreve no banco. O próximo módulo avança para `Triggers DDL`, que respondem a eventos de alteração da própria estrutura do banco de dados (criação, alteração e exclusão de objetos).
