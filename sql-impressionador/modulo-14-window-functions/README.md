# 📘 Módulo 14 — Window Functions

---

## 📌 Contexto do Módulo

Décimo quarto módulo da trilha SQL Impressionador — um dos mais densos e poderosos para análise de dados. Introduz as funções de janela (`OVER()`, `PARTITION BY`), que permitem calcular agregações, rankings, deslocamentos e acumulados **sem colapsar as linhas** da consulta, diferente do `GROUP BY` tradicional. Cobre funções de agregação em janela, funções de classificação, funções de offset (deslocamento) e aplicações práticas como percentual de participação, soma/média móvel, acumulado e variação percentual (MoM/YoY).

Os exemplos usam um banco de dados próprio, **WF**, criado especificamente para este módulo, além da `ContosoRetailDW` nos exercícios finais.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Diferença entre agregação tradicional (`GROUP BY`) e agregação em janela (`OVER()`)
- Funções de agregação como janela: `SUM`, `COUNT`, `AVG`, `MIN`, `MAX` com `OVER()`
- Particionamento com `PARTITION BY` para calcular agregações por subgrupo, mantendo o detalhe da linha
- Funções de classificação: `ROW_NUMBER`, `RANK`, `DENSE_RANK`, `NTILE`
- Combinação de `RANK` com `GROUP BY` para ranquear resultados já agregados
- Cálculo de percentual de participação (total geral e por partição)
- Soma e média acumulada (`ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW`)
- Soma e média móvel (`ROWS BETWEEN N PRECEDING AND CURRENT ROW`)
- Funções de offset: `FIRST_VALUE`, `LAST_VALUE`, `LAG`, `LEAD`
- Cálculo de variação percentual mês a mês (MoM) usando `LAG`

---

## 📂 Estrutura do Módulo

```bash
modulo-14-window-functions/
│
├── Queries/
│   ├── 01_script_tabela_lojas.sql
│   ├── 02_funcoes_agregacao.sql
│   ├── 03_funcoes_classificacao.sql
│   ├── 04_funcoes_classificacao_partition_by.sql
│   ├── 05_rank_group_by.sql
│   ├── 06_calculando_percentual_participacao.sql
│   ├── 07_calculo_acumulado.sql
│   ├── 08_soma_movel_media_movel.sql
│   ├── 09_offset_first_last_value.sql
│   ├── 10_offset_lag_lead.sql
│   └── 11_calculo_mom.sql
│
├── Exercicios/
│   ├── 12_exercicios_14.sql
│   ├── 13_resultados_exercicios_14.sql
│   └── Lista_de_Exercicios_14.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 Funções de Agregação em Janela

`SUM(coluna) OVER()`, `COUNT(*) OVER()`, `AVG(coluna) OVER()`, `MIN`/`MAX` com `OVER()` calculam a agregação sobre todo o conjunto (ou partição) sem agrupar as linhas — cada linha mantém seu detalhe original, e ganha uma coluna extra com o total/média/contagem do contexto. Com `PARTITION BY coluna`, a agregação passa a ser calculada por subgrupo (ex: total por região), mantendo o detalhe de cada loja.

### 🔹 Funções de Classificação

- **`ROW_NUMBER()`**: numera as linhas sequencialmente, sem empates.
- **`RANK()`**: numera com empates, mas pula números após um empate (ex: 1, 2, 2, 4).
- **`DENSE_RANK()`**: numera com empates, sem pular números (ex: 1, 2, 2, 3).
- **`NTILE(N)`**: divide o resultado em N grupos de tamanho aproximadamente igual.

Combinadas com `PARTITION BY`, essas funções reiniciam a contagem/ranking a cada partição (ex: ranking de vendas dentro de cada região, não no total geral).

### 🔹 RANK + GROUP BY

`RANK()` pode ser aplicado sobre o resultado já agregado por `GROUP BY` — por exemplo, ranquear regiões pelo total de vendas, combinando as duas técnicas na mesma consulta.

### 🔹 Percentual de Participação

Combinação de `SUM(coluna) OVER()` (total geral) com o valor da linha individual para calcular a proporção — e com `PARTITION BY` para calcular a participação dentro de um subgrupo específico (ex: % de vendas de uma loja dentro da sua região).

### 🔹 Soma e Média Acumulada

`SUM`/`AVG` com `OVER(ORDER BY coluna ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)` calcula o acumulado até a linha atual, considerando todas as linhas anteriores na ordenação especificada.

### 🔹 Soma e Média Móvel

Mesma lógica do acumulado, mas com uma janela deslizante de tamanho fixo: `ROWS BETWEEN N PRECEDING AND CURRENT ROW` considera apenas as N linhas anteriores mais a atual, "andando" junto com a ordenação.

### 🔹 FIRST_VALUE e LAST_VALUE

Retornam, respectivamente, o primeiro e o último valor de uma janela ordenada. Para `LAST_VALUE` funcionar corretamente ao longo de toda a janela (e não só até a linha atual), é necessário especificar explicitamente `ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING`.

### 🔹 LAG e LEAD

`LAG(coluna, N, valor_padrao)` traz o valor de N linhas **anteriores** na ordenação; `LEAD` traz o valor de N linhas **seguintes**. Essenciais para comparar um período com o anterior/seguinte sem precisar de `JOIN`.

### 🔹 Cálculo MoM (Month over Month)

Combina `LAG` com uma divisão para calcular a variação percentual entre o valor atual e o valor do período anterior — usando `NULLIF` para evitar erro de divisão por zero quando não há valor anterior.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios aplicam window functions a análises de produto, histórico de lojas e novos clientes, com grau de dificuldade crescente (incluindo dois "desafios" que exigem construir views e tabelas auxiliares do zero):

1-4. **Análise de produtos (view `vwProdutos`)** — total geral de vendas (`SUM() OVER()`), total por marca (`SUM() OVER(PARTITION BY Marca)`), percentual de participação por marca, e ranking (`RANK()`) de marca/cor filtrado para a marca Contoso.

**Desafio 1** — construção de uma view `vwHistoricoLojas` do zero (histórico de lojas abertas por Ano/Mês, com ID gerado via `ROW_NUMBER()` ordenado corretamente por `CalendarMonth`), seguida de soma móvel de 3 meses (exercício 5) e acumulado total (exercício 6).

**Desafio 2** — construção de um ambiente completo do zero: banco de dados `Desafio`, tabela `Calendario` gerada via loop `WHILE`, colunas auxiliares de data (Ano, Mês, Dia, AnoMes, NomeMes com `CASE`), e a view `vwNovosClientes`. A partir dela: soma móvel e média móvel de 2 meses, acumulado total, acumulado intra-ano (YTD, reiniciando com `PARTITION BY Ano`), e cálculo de variação percentual MoM e YoY (`LAG` com deslocamento de 1 e 12 posições).

As respostas completas estão documentadas em [`Exercicios/13_resultados_exercicios_14.sql`](./Exercicios/13_resultados_exercicios_14.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Cálculo de agregações, rankings e deslocamentos sem perder o detalhe da linha
- Uso de `PARTITION BY` para recalcular métricas por subgrupo
- Construção de indicadores analíticos avançados: percentual de participação, acumulado, médias/somas móveis e variação percentual (MoM/YoY)
- Combinação de window functions com views, `GROUP BY` e tabelas de calendário construídas via loop
- Resolução de problemas analíticos complexos em etapas (views auxiliares → funções de janela → indicador final)

---

## 🚀 Conclusão

Este foi um dos módulos mais ricos da trilha: window functions são a ferramenta que separa análises básicas de análises verdadeiramente comparativas e temporais — rankings, participação percentual, tendências e acumulados são a base de praticamente todo dashboard e relatório gerencial. O próximo módulo avança para `Regular Expressions`, técnicas de busca e validação de padrões de texto mais avançadas que complementam as funções de string já vistas.
