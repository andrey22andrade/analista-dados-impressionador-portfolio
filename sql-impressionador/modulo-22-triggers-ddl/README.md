# 📘 Módulo 22 — Triggers DDL

---

## 📌 Contexto do Módulo

Vigésimo segundo módulo da trilha SQL Impressionador. Complementa o módulo anterior abordando `TRIGGER`s do tipo DDL — gatilhos disparados por eventos de alteração da própria estrutura do banco de dados (`CREATE`, `ALTER`, `DROP`), em vez de eventos sobre os dados em si. São aplicadas a nível de banco de dados (`ON DATABASE`), não de uma tabela específica.

Os exemplos usam o banco `Exercicios`.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Diferença entre triggers DML (eventos sobre dados) e DDL (eventos sobre estrutura)
- Criação de uma trigger DDL a nível de banco de dados (`ON DATABASE`)
- Eventos DDL que podem disparar a trigger: `CREATE_TABLE`, `ALTER_TABLE`, `DROP_TABLE` (entre outros)
- Bloqueio de operações estruturais com `ROLLBACK` dentro da trigger
- Habilitar e desabilitar triggers DDL (individualmente ou todas do banco)
- Exclusão de uma trigger DDL

---

## 📂 Estrutura do Módulo

```bash
modulo-22-triggers-ddl/
│
├── Queries/
│   └── 01_triggers_ddl.sql
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 Trigger DDL — O que é

Assim como uma trigger DML reage a `INSERT`/`UPDATE`/`DELETE`, uma trigger DDL reage a comandos que alteram a **estrutura** do banco de dados: `CREATE`, `ALTER` e `DROP` (de tabelas, entre outros objetos). É útil para impedir ou auditar mudanças estruturais não autorizadas.

### 🔹 Criando uma Trigger DDL

```sql
CREATE TRIGGER nome
ON DATABASE
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS
BEGIN
    ...
END
```

Diferente das triggers DML (que são associadas a uma tabela específica com `ON tabela`), a trigger DDL é associada ao banco de dados inteiro com `ON DATABASE`, e a cláusula `FOR` especifica quais eventos a disparam.

### 🔹 Bloqueando Operações Estruturais

Combinando `PRINT` (mensagem informativa) com `ROLLBACK` dentro do corpo da trigger, é possível impedir que qualquer tentativa de criar, alterar ou excluir uma tabela seja concluída — uma forma de proteger a estrutura do banco contra mudanças não autorizadas.

### 🔹 Habilitando, Desabilitando e Excluindo Triggers DDL

`ENABLE TRIGGER nome ON DATABASE` / `DISABLE TRIGGER nome ON DATABASE` controlam uma trigger específica; `DISABLE TRIGGER ALL ON DATABASE` desativa todas as triggers DDL do banco de uma vez — útil, por exemplo, para permitir uma migração de schema planejada sem precisar remover a trigger. `DROP TRIGGER nome ON DATABASE` exclui a trigger permanentemente.

---

## 🧪 Aplicação Prática

Este módulo não trouxe uma lista de exercícios separada — o aprendizado foi consolidado diretamente na progressão dos exemplos do arquivo de aula:

1. Criação de uma trigger DDL (`tgRecusarTabelas`) que bloqueia qualquer `CREATE TABLE`, `ALTER TABLE` ou `DROP TABLE` no banco `Exercicios`, com `ROLLBACK` automático.
2. Teste da trigger tentando criar uma tabela (`teste`), confirmando que a operação é bloqueada.
3. Reativação explícita da trigger (`ENABLE TRIGGER`) e novo teste de bloqueio (`teste2`).
4. Desativação de todas as triggers DDL do banco (`DISABLE TRIGGER ALL ON DATABASE`).
5. Exclusão da trigger criada (`DROP TRIGGER ... ON DATABASE`).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Proteção da estrutura do banco de dados contra alterações não autorizadas
- Diferença de escopo entre triggers DML (por tabela) e DDL (por banco de dados)
- Gerenciamento do ciclo de vida de triggers DDL

---

## 🚀 Conclusão

Este módulo encerrou o par de módulos sobre triggers, cobrindo tanto a proteção de dados (DML) quanto a proteção da estrutura do banco (DDL) — ferramentas de governança importantes em ambientes onde mudanças não controladas podem gerar risco. O próximo módulo avança para `Pivot Table`, técnica para transformar dados de formato longo para formato largo diretamente em SQL.
