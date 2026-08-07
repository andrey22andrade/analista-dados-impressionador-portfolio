# 📘 Módulo 09 — Funções Condicionais

---

## 📌 Contexto do Módulo

Nono módulo da trilha SQL Impressionador. Introduz a lógica condicional em SQL através do `CASE WHEN`, permitindo criar colunas calculadas com base em regras de negócio, e suas variações (múltiplas condições, aninhamento, combinação com `AND`/`OR`, soma de condições). Também cobre alternativas mais compactas como `IIF` e o tratamento de valores nulos com `ISNULL`.

A base de dados utilizada em todos os exemplos é a **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Estrutura básica `CASE WHEN ... THEN ... ELSE ... END`
- Múltiplas condições com `CASE WHEN ... WHEN ... ELSE ... END`
- Combinação do `CASE` com operadores lógicos `AND` e `OR`
- `CASE` aditivo (somando resultados de mais de um `CASE`)
- `CASE` aninhado (um `CASE` dentro de outro)
- `IIF` como alternativa mais compacta ao `CASE` simples
- `IIF` composto (aninhado) para múltiplas condições
- `ISNULL` para substituir valores nulos por um valor padrão

---

## 📂 Estrutura do Módulo

```bash
modulo-09-funcoes-condicionais/
│
├── Queries/
│   ├── 01_case_when_else_explicacao.sql
│   ├── 02_case_when_else_exemplo.sql
│   ├── 03_case_when_when_else_explicacao.sql
│   ├── 04_case_when_when_else_exemplo.sql
│   ├── 05_case_and_or.sql
│   ├── 06_case_aditivo.sql
│   ├── 07_case_aninhado.sql
│   ├── 08_isnull.sql
│   ├── 09_iif.sql
│   └── 10_iif_composto.sql
│
├── Exercicios/
│   ├── 11_exercicios_9.sql
│   ├── 12_resultados_exercicios_9.sql
│   └── Lista_de_Exercicios_9.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 CASE WHEN ... ELSE (estrutura simples)

Permite criar uma coluna cujo valor depende de um teste lógico: `CASE WHEN condição THEN resultado1 ELSE resultado2 END` — por exemplo, aprovar ou reprovar um aluno com base em uma nota, ou classificar um produto vencido ou não com base em datas.

### 🔹 CASE WHEN ... WHEN ... ELSE (múltiplas condições)

Encadeia múltiplas condições avaliadas em ordem — a primeira que for verdadeira define o resultado, e o `ELSE` cobre o que restar. Usado, por exemplo, para classificar um produto em "Luxo", "Econômico" ou "Básico" com base em faixas de preço.

### 🔹 CASE com AND e OR

As condições dentro de cada `WHEN` podem combinar múltiplos critérios com `AND`/`OR` — por exemplo, aplicar desconto apenas a produtos que sejam simultaneamente de uma marca **e** cor específicas.

### 🔹 CASE Aditivo

Múltiplos `CASE` podem ser somados na mesma expressão para acumular efeitos independentes — por exemplo, somar um desconto de categoria com um desconto adicional de subcategoria, resultando no desconto total combinado.

### 🔹 CASE Aninhado

Um `CASE` pode conter outro `CASE` dentro de um dos seus `WHEN`, permitindo regras de negócio hierárquicas — por exemplo, calcular um bônus que depende do cargo e, para um cargo específico, depende também de outra condição (ser assalariado ou não).

### 🔹 IIF (alternativa ao CASE)

`IIF(condição, valor_se_verdadeiro, valor_se_falso)` é uma forma mais compacta de escrever um `CASE WHEN...ELSE` simples, útil quando há apenas uma condição a avaliar.

### 🔹 IIF Composto

Assim como o `CASE` pode ser aninhado, `IIF`s podem ser aninhados uns dentro dos outros para representar múltiplas condições, embora a legibilidade tenda a piorar com mais de 2 níveis — nesses casos, o `CASE WHEN...WHEN` costuma ser mais claro.

### 🔹 ISNULL

Substitui valores nulos de uma coluna por um valor padrão definido — `ISNULL(coluna, valor_padrao)` — útil para exibir "Local desconhecido" em vez de um campo vazio, por exemplo.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios aplicam lógica condicional a cenários de desconto, categorização e ações de marketing:

1. **Desconto por classe de produto** — `CASE` para aplicar percentuais de desconto diferentes por `ClassName` (Economy, Regular, Deluxe), depois adaptado para usar variáveis em vez de valores fixos, facilitando futuras alterações.
2. **Categorização de marcas por volume** — `GROUP BY` + `CASE` para classificar marcas em categorias A, B ou C conforme a quantidade de produtos cadastrados.
3. **Categorização de lojas por porte** — `CASE` com múltiplas faixas de `EmployeeCount` para classificar lojas por tamanho.
4. **Divisão logística por peso (join + group by + case)** — cálculo do peso total estimado por subcategoria (`AVG(Weight) * 100`) e classificação em "Rota 1" ou "Rota 2" conforme o peso ultrapassar 1000kg.
5. **Segmentação de clientes para sorteio** — `CASE` combinando `Gender` e `TotalChildren` para classificar clientes em três categorias de campanha de marketing.
6. **Tempo de atividade de lojas (com tratamento de fechamento)** — `CASE` para calcular os dias de atividade usando `GETDATE()` para lojas ainda abertas e `CloseDate` para lojas já fechadas, evitando calcular tempo de atividade incorreto para lojas encerradas.

As respostas completas estão documentadas em [`Exercicios/12_resultados_exercicios_9.sql`](./Exercicios/12_resultados_exercicios_9.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Criação de colunas calculadas com lógica condicional
- Combinação de condições múltiplas e aninhadas
- Escolha entre `CASE` e `IIF` conforme a complexidade da regra
- Tratamento de valores nulos com `ISNULL`
- Aplicação de regras de negócio complexas (descontos, categorizações, segmentações) diretamente em consultas SQL

---

## 🚀 Conclusão

Este módulo introduziu a capacidade de embutir lógica de negócio diretamente nas consultas SQL, transformando dados brutos em classificações e decisões (descontos, categorias, segmentos) sem depender de processamento externo. Essa é uma das ferramentas mais usadas no dia a dia de um Analista de Dados. O próximo módulo avança para `SQL Views`, que permitem salvar consultas complexas — incluindo essas lógicas condicionais — como objetos reutilizáveis no banco de dados.
