# 📘 Módulo 24 — Integração SQL Server e Excel

---

## 📌 Contexto do Módulo

Vigésimo quarto módulo da trilha SQL Impressionador, e o primeiro projeto de integração da trilha: conectar o SQL Server diretamente ao Excel, permitindo que um relatório no Excel se atualize automaticamente a partir de dados no banco. Utiliza a base **AdventureWorks 2014**, com o objetivo de construir uma view analítica de vendas online e conectá-la a um relatório com tabelas dinâmicas no Excel.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Definição de indicadores de negócio antes de escrever a consulta (planejamento do relatório)
- Identificação das tabelas necessárias e seus relacionamentos, incluindo relacionamento em cadeia (produto → subcategoria → categoria)
- Construção de uma `VIEW` analítica (`VENDAS_INTERNET`) que consolida múltiplas tabelas em uma única fonte de dados, pronta para consumo externo
- Conexão do Excel ao SQL Server via Power Query, usando a view como fonte de dados
- Atualização de dados no Excel refletindo mudanças feitas diretamente no banco de dados

---

## 📂 Estrutura do Módulo

```bash
modulo-24-integracao-sql-server-e-excel/
│
├── Queries/
│   └── 01_passo_a_passo.sql
│
├── Entregaveis/
│   └── Relatorio_Vendas_AdventureWorks.xlsx
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 Planejamento do Relatório Antes da Consulta

O projeto começa definindo os indicadores de negócio desejados (não o código): total de vendas por categoria, receita por mês, receita/custo por país e vendas por gênero do cliente — só depois disso é que as tabelas e colunas necessárias são identificadas.

### 🔹 Identificação de Tabelas e Relacionamentos

Mapeamento das 4 tabelas envolvidas (`FactInternetSales`, `DimCustomer`, `DimSalesTerritory`, `DimProductCategory`), incluindo a identificação de um relacionamento em cadeia — a categoria do produto não se relaciona diretamente com a tabela de fatos, exigindo passar por `DimProduct` e `DimProductSubcategory` antes de chegar em `DimProductCategory`.

### 🔹 Construção da View Analítica

A view `VENDAS_INTERNET` consolida todas as colunas necessárias para os 4 indicadores em uma única fonte: número do pedido, data, categoria do produto, nome completo do cliente, gênero, país, quantidade vendida, custo e receita — filtrada para o ano de 2013. Ter uma única view "achatada" simplifica enormemente o consumo no Excel, que não precisa lidar com múltiplos joins.

### 🔹 Conexão Excel ↔ SQL Server

O Excel se conecta à view criada via Power Query (Dados → Obter Dados → Do Banco de Dados → Do SQL Server), permitindo montar tabelas dinâmicas e gráficos diretamente a partir da `VIEW`, sem precisar copiar e colar dados manualmente.

### 🔹 Atualização Refletindo Mudanças no Banco

Uma alteração feita diretamente no banco de dados (via `UPDATE` em uma transação) é demonstrada para mostrar que, ao atualizar a conexão no Excel (Dados → Atualizar Tudo), o relatório reflete automaticamente o novo valor — validando o fluxo de integração ponta a ponta.

---

## 📦 Entregável

O relatório final em Excel, com o painel de indicadores conectado à view `VENDAS_INTERNET`, está disponível em [`Entregaveis/Relatorio_Vendas_AdventureWorks.xlsx`](./Entregaveis/Relatorio_Vendas_AdventureWorks.xlsx).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Planejamento de um relatório de dados a partir de indicadores de negócio, antes de escrever qualquer código
- Modelagem de uma view analítica consolidada para simplificar o consumo por ferramentas externas
- Conexão do Excel a uma fonte de dados SQL Server via Power Query
- Validação do fluxo de atualização de dados entre banco de dados e relatório

---

## 🚀 Conclusão

Este módulo conectou, na prática, tudo o que foi construído em SQL a uma ferramenta de análise amplamente usada no mercado — o Excel. A lição central é que uma boa `VIEW` bem modelada facilita enormemente o trabalho de quem consome os dados depois, seja em Excel, Power BI ou qualquer outra ferramenta. O próximo (e último) módulo da trilha SQL Impressionador repete esse mesmo processo, mas com Power BI no lugar do Excel.
