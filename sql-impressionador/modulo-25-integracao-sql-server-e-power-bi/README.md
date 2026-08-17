# 📘 Módulo 25 — Integração SQL Server e Power BI

---

## 📌 Contexto do Módulo

Vigésimo quinto e último módulo da trilha SQL Impressionador — o projeto final de integração, conectando o SQL Server diretamente ao Power BI. Segue a mesma estrutura do projeto de integração com Excel (módulo 24), mas com um passo extra: o **layout do dashboard é planejado visualmente antes de ser construído**, usando um mockup em PowerPoint como guia de design. Utiliza a base **AdventureWorks 2014**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Planejamento de indicadores de negócio organizados por página/aba do dashboard (Visão Geral e Clientes)
- Identificação das tabelas e colunas necessárias para atender a todos os indicadores planejados
- Construção de uma `VIEW` consolidada (`RESULTADOS_ADW`) como fonte única de dados para o Power BI
- Planejamento visual do layout do dashboard (mockup) antes da construção, para guiar decisões de design
- Conexão do Power BI ao SQL Server, usando a view como fonte de dados
- Construção do dashboard final com múltiplas páginas (Visão Geral e Clientes)

---

## 📂 Estrutura do Módulo

```bash
modulo-25-integracao-sql-server-e-power-bi/
│
├── Queries/
│   └── 01_passo_a_passo.sql
│
├── Layout/
│   ├── Layout.pptx
│   ├── 01_capa.png
│   ├── 02_visao_geral.png
│   └── 03_clientes.png
│
├── Entregaveis/
│   └── Projeto_Integracao_Power_BI_SQL.pbix
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 Planejamento de Indicadores por Página

Diferente do projeto do Excel (uma lista única de indicadores), aqui os indicadores são organizados por página do dashboard:
- **Visão Geral**: receita total, quantidade vendida, total de categorias, quantidade de clientes, receita/lucro por mês, margem de lucro, quantidade vendida por mês, lucro por país.
- **Clientes**: vendas por país, clientes por país, vendas por gênero, vendas por categoria.

Organizar os indicadores por página antes de escrever qualquer código ajuda a garantir que a view final tenha todas as colunas necessárias para todas as páginas do relatório.

### 🔹 Construção da View RESULTADOS_ADW

A view consolida `FactInternetSales` com `DimProduct` → `DimProductSubcategory` → `DimProductCategory` (relacionamento em cadeia) e `DimCustomer` → `DimGeography`, trazendo: número do pedido, data, categoria do produto, ID e nome do cliente, sexo (já tratado com `REPLACE` para texto legível), país, quantidade vendida, receita, custo e **lucro** (`SalesAmount - TotalProductCost`, calculado diretamente na view). Ter o lucro pré-calculado na origem evita repetir essa conta em múltiplas visualizações dentro do Power BI.

### 🔹 Layout Mockup Antes da Construção

Antes de abrir o Power BI, o layout de cada página é esboçado em PowerPoint (`Layout.pptx`) — definindo posicionamento de cards de KPI, gráficos e cores, sem se preocupar ainda com os dados. Essa etapa de design antecipado evita retrabalho visual depois que os gráficos já estão conectados aos dados.

### 🔹 Conexão Power BI ↔ SQL Server

O Power BI se conecta à view `RESULTADOS_ADW` via conector nativo do SQL Server (Obter Dados → SQL Server), trazendo os dados já prontos para modelagem e criação de visuais, sem precisar tratar relacionamentos complexos dentro do próprio Power BI — a "camada pesada" de joins já foi resolvida no SQL.

---

## 🎨 Layout do Dashboard

Planejamento visual feito antes da construção no Power BI:

- **Capa** — página de abertura do dashboard ("Dashboard Comercial — Hash&AdventureWorks").
- **Visão Geral** — cards de KPI (receita, categorias, clientes, etc.) no topo, seguidos de blocos de gráficos para as análises por mês e por país.
- **Clientes** — blocos dedicados a vendas por país, clientes por país, vendas por gênero e por categoria.

O arquivo completo do mockup está em [`Layout/Layout.pptx`](./Layout/Layout.pptx).

---

## 📦 Entregável

O dashboard final em Power BI, conectado à view `RESULTADOS_ADW` e construído a partir do layout planejado, está disponível em [`Entregaveis/Projeto_Integracao_Power_BI_SQL.pbix`](./Entregaveis/Projeto_Integracao_Power_BI_SQL.pbix).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Planejamento de indicadores organizados por página de um dashboard
- Modelagem de uma view analítica única, com métricas pré-calculadas (como lucro), como fonte de dados para BI
- Design de layout antecipado para acelerar e organizar a construção de dashboards
- Conexão do Power BI a uma fonte de dados SQL Server

---

## 🚀 Conclusão

Este módulo encerra a trilha **SQL Impressionador** completa — do `SELECT` básico até a integração final com Power BI, passando por filtros, agregações, joins, variáveis, funções condicionais, views, CRUD, subqueries, window functions, constraints, transações, functions, procedures e triggers. A trilha demonstrou, na prática, o ciclo completo de um Analista de Dados: modelar dados no banco, consolidá-los em views bem estruturadas, e entregá-los prontos para consumo em ferramentas de análise e visualização (Excel e Power BI).

Um ponto a revisar: o script `01_passo_a_passo.sql` deste módulo ainda traz, ao final, um trecho residual do projeto de integração com Excel (a segunda definição de colunas/view `VENDAS_INTERNET` e a transação de teste do módulo 24) — vale limpar esse conteúdo duplicado antes de considerar o script definitivo.

**Próxima etapa da trilha geral**: Excel Impressionador, Power BI Impressionador e Python Impressionador.
