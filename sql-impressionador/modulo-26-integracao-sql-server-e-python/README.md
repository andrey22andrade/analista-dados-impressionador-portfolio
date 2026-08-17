# 📘 Módulo 26 — Integração SQL Server e Python

---

## 📌 Contexto do Módulo

Vigésimo sexto módulo da trilha SQL Impressionador (módulo extra do curso, não previsto na estrutura original) — o terceiro e último projeto de integração, conectando o SQL Server diretamente ao Python via `pyodbc`. Diferente dos projetos com Excel e Power BI (focados em consumo de dados para relatórios visuais), este projeto cobre os dois sentidos da integração: **leitura** de dados do SQL Server para análise em Python, e **escrita** de dados do Python de volta para o SQL Server.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Instalação e uso da biblioteca `pyodbc` para conectar Python ao SQL Server
- Estabelecimento de conexão via string de conexão (Driver, Server, Database)
- Leitura de dados do SQL Server para um DataFrame do pandas (`pd.read_sql`)
- Análise exploratória básica em Python sobre dados vindos do SQL (`groupby`, contagem)
- Visualização simples dos dados analisados (`.plot`)
- Escrita de dados do Python para o SQL Server via `cursor.execute` + `commit`
- Uso de f-strings para montar comandos SQL parametrizados a partir de variáveis Python

---

## 📂 Estrutura do Módulo

```bash
modulo-26-integracao-sql-server-e-python/
│
├── Queries/
│   ├── 01_projeto1_escrita.sql
│   └── 02_projeto2_leitura.sql
│
├── Notebooks/
│   ├── 01_projeto1_escrita.ipynb
│   └── 02_projeto2_leitura.ipynb
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 Projeto 1 — Escrita (Python → SQL Server)

Um banco de dados (`PythonSQL`) e uma tabela (`Vendas`) são criados no SQL Server para receber dados inseridos via Python. No notebook:
- Conexão com `pyodbc.connect(...)`, informando driver, servidor e banco de dados.
- Um `INSERT INTO` é montado dinamicamente com f-string, usando variáveis Python (`id`, `data`, `cliente`, `produto`, `preco`, `quantidade`) para preencher os valores.
- O comando é executado com `cursor.execute(comando)` e confirmado no banco com `cursor.commit()` — o mesmo conceito de transação (`COMMIT`) visto no módulo de Transactions, agora disparado a partir do Python.

### 🔹 Projeto 2 — Leitura (SQL Server → Python)

Usando a base `ContosoRetailDW`, o notebook:
- Conecta ao banco via `pyodbc`.
- Executa uma consulta simples (`SELECT ColorName, UnitPrice FROM DimProduct`) e carrega o resultado diretamente em um DataFrame do pandas com `pd.read_sql(comando_sql, conexao)` — sem precisar tratar o resultado manualmente linha a linha.
- Realiza uma agregação básica em Python (`groupby('ColorName').count()`) para contar produtos por cor, replicando em pandas o que seria um `GROUP BY` em SQL.
- Gera uma visualização simples do resultado agregado com `.plot(kind='bar')`.

### 🔹 Diferença entre os Dois Sentidos de Integração

- **Leitura**: o SQL faz o trabalho pesado de busca (`SELECT`), e o Python assume a partir daí para análise, manipulação e visualização — ideal quando se quer aproveitar bibliotecas de análise (pandas, matplotlib) que o SQL puro não tem.
- **Escrita**: o Python assume o papel de gerar ou coletar dados (ex: de um formulário, uma API, um processo automatizado) e os grava de volta no banco — fechando o ciclo entre aplicação e banco de dados.

---

## 🧪 Aplicação Prática

Este módulo não trouxe uma lista de exercícios separada — o aprendizado foi consolidado diretamente nos dois projetos guiados (leitura e escrita), cada um com seu script SQL de preparação e seu notebook Python correspondente.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Conexão de Python a um banco de dados SQL Server via `pyodbc`
- Leitura de dados SQL diretamente para um DataFrame do pandas
- Escrita de dados do Python de volta para uma tabela SQL, com controle transacional
- Combinação de SQL (armazenamento e consulta) com Python (análise e visualização) em um único fluxo de trabalho

---

## 🚀 Conclusão

Este módulo extra fecha a trilha SQL Impressionador com um terceiro tipo de integração, complementando Excel e Power BI: agora com uma linguagem de programação de propósito geral, capaz tanto de consumir quanto de alimentar dados no SQL Server. Combinado com os módulos anteriores, isso demonstra os três padrões mais comuns de consumo de dados de um Analista de Dados no mercado — planilhas, ferramentas de BI e código.

Com isso, a trilha **SQL Impressionador** está, agora sim, definitivamente completa (26 módulos).
