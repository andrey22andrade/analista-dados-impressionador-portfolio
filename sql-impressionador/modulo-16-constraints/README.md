# 📘 Módulo 16 — Constraints

---

## 📌 Contexto do Módulo

Décimo sexto módulo da trilha SQL Impressionador. Aborda as `CONSTRAINTS` — regras de integridade definidas diretamente na estrutura das tabelas para garantir a qualidade dos dados: valores obrigatórios, unicidade, validação de faixa/lista de valores, valores padrão, auto-incremento e relacionamento entre tabelas via chave primária e estrangeira.

Os exemplos usam o banco de dados **Exercicios** (criado no módulo de CRUD) recriado com constraints aplicadas.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- O que são constraints e por que aplicá-las
- `NOT NULL` — impedir valores nulos
- `UNIQUE` — impedir valores duplicados (mas permite nulo)
- `CHECK` — validar que o valor atende a uma condição
- `DEFAULT` — valor padrão quando a coluna não é preenchida
- `IDENTITY` — auto-incremento de colunas de ID
- `PRIMARY KEY` — identificação única de cada linha da tabela
- `FOREIGN KEY` — relacionamento entre tabelas via chave primária de outra tabela
- Nomeação explícita de constraints (facilita manutenção e mensagens de erro)
- Violação de constraints na prática (o que acontece e por quê)
- Gerenciamento de constraints já existentes: adicionar, remover

---

## 📂 Estrutura do Módulo

```bash
modulo-16-constraints/
│
├── Queries/
│   └── 01_constraints.sql
│
├── Exercicios/
│   ├── 02_exercicios_16.sql
│   ├── 03_resultados_exercicios_16.sql
│   └── Lista_de_Exercicios_16.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 Tipos de Constraint

- **`NOT NULL`**: obriga que a coluna sempre tenha um valor preenchido.
- **`UNIQUE`**: garante que não haja valores duplicados na coluna (nulos ainda são permitidos).
- **`CHECK`**: valida que o valor inserido satisfaz uma condição lógica (ex: `salario > 0`, `genero IN ('M', 'F', 'O', 'PND')`).
- **`DEFAULT`**: define um valor automático quando a coluna não é informada no `INSERT` (ex: `data_assinatura DATE DEFAULT GETDATE()`).
- **`IDENTITY(seed, increment)`**: gera automaticamente valores sequenciais para a coluna, tipicamente usada em colunas de ID.
- **`PRIMARY KEY`**: identifica cada linha de forma única — não aceita nulos nem duplicatas, e é a base para relacionamentos entre tabelas.
- **`FOREIGN KEY`**: relaciona uma coluna com a chave primária de outra tabela, garantindo que só existam valores que correspondam a um registro válido na tabela referenciada.

### 🔹 Nomeando Constraints

Nomear cada constraint explicitamente (`CONSTRAINT nome_da_constraint TIPO(coluna)`) facilita identificar qual regra foi violada em uma mensagem de erro, e também facilita alterá-la ou removê-la depois.

### 🔹 Violação de Constraints na Prática

O módulo demonstra deliberadamente violações para entender o comportamento do banco: inserir um valor fora do `CHECK`, inserir um valor duplicado em coluna `UNIQUE`, e inserir uma chave estrangeira que não existe na tabela referenciada — todas resultam em erro e a inserção é bloqueada, preservando a integridade dos dados.

### 🔹 Gerenciando Constraints Existentes

`ALTER TABLE ... DROP CONSTRAINT nome` remove uma constraint já criada; `ALTER TABLE ... ADD CONSTRAINT nome TIPO(coluna)` adiciona uma nova constraint a uma tabela já existente — útil para corrigir ou reestruturar regras sem recriar a tabela do zero.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios simulam a modelagem completa de um banco de dados de locadora de carros, aplicando constraints apropriadas a cada coluna com base em sua descrição de negócio:

1. **Modelagem do banco `AlugaFacil`** — criação de 3 tabelas relacionadas:
   - `Cliente`: chave primária auto-incrementada, colunas obrigatórias e `cnh` única.
   - `Carro`: chave primária auto-incrementada, colunas obrigatórias, `placa` única e `tipo` restrito a uma lista de valores (`CHECK` com `Hatch`, `Sedan`, `SUV`).
   - `Locacoes`: chave primária auto-incrementada, todas as colunas obrigatórias, e duas chaves estrangeiras (`id_carro`, `id_cliente`) relacionando com as tabelas anteriores.
2. **Teste de violação de constraints** — inserções propositalmente inválidas (valores nulos, duplicados, fora da lista permitida, ou referências inexistentes) para confirmar que cada constraint bloqueia corretamente a operação, seguido da exclusão do banco de dados criado.

As respostas completas estão documentadas em [`Exercicios/03_resultados_exercicios_16.sql`](./Exercicios/03_resultados_exercicios_16.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Definição de regras de integridade diretamente na estrutura das tabelas
- Modelagem de relacionamentos consistentes entre tabelas via chave primária/estrangeira
- Validação de dados na origem (evitando dados inválidos, duplicados ou incompletos)
- Gerenciamento de constraints já existentes em tabelas já criadas

---

## 🚀 Conclusão

Este módulo trouxe a camada de integridade e confiabilidade dos dados — constraints garantem que o banco de dados rejeite automaticamente informações inconsistentes, reduzindo a necessidade de validação manual posterior. Combinado com os módulos de CRUD e modelagem, fecha a base de administração de tabelas da trilha. Os próximos módulos avançam para `Sequences`, `Transactions`, `Functions`, `Procedures` e `Triggers` — recursos mais avançados de automação e controle transacional no banco de dados.
