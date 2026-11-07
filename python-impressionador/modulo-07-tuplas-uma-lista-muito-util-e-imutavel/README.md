# 📘 Módulo 07 — Tuplas - Uma "lista" muito útil e imutável

---

## 📌 Contexto do Módulo

Sétimo módulo da trilha Python Impressionador, com 5 aulas. Apresenta as tuplas, estruturas parecidas com as listas, mas imutáveis. O módulo mostra como criar tuplas, como desempacotar os valores (unpacking), como trabalhar com uma lista de tuplas e fecha com exercícios de análise de vendas.

Os exemplos usam situações de vendas e de e-commerce, como metas de vendedores, comparação de vendas entre anos e vendas de produtos por dia.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Criar tuplas e entender a diferença para as listas
- Fazer o unpacking de tuplas em variáveis
- Percorrer uma lista de tuplas com `for`
- Resolver exercícios de análise de vendas usando tuplas

---

## 📂 Estrutura do Módulo

```bash
modulo-07-tuplas-uma-lista-muito-util-e-imutavel/
│
├── Notebooks/
│   ├── 01_tuplas.ipynb
│   ├── 02_unpacking_em_tuplas.ipynb
│   └── 03_lista_de_tuplas.ipynb
│
└── Exercicios/
    └── 04_gabarito_exercicios_de_tupla.ipynb
```

---

## 🧠 Conceitos Abordados

### 🔹 Tuplas

Estrutura `tupla = (valor, valor, ...)`. A tupla parece uma lista, mas é imutável. Vantagens citadas na aula: é mais eficiente em desempenho, protege a base de dados por ser imutável e é muito usada para dados heterogêneos. Tentar alterar um valor de uma tupla gera erro de tipo (`TypeError`).

### 🔹 Unpacking em Tuplas

Desempacotamento dos valores da tupla em variáveis, como `nome, data, salario, cargo = tupla`, em vez de acessar cada posição pelo índice. A aula também comenta que o `enumerate`, usado até então, cria uma tupla.

### 🔹 Lista de Tuplas

Listas em que cada item é uma tupla, formato comum em dados extraídos de bancos de dados. Exemplo com vendas de um e-commerce, percorridas com `for` e unpacking para calcular o faturamento de um produto em um dia e descobrir o produto mais vendido do dia.

### 🔹 Exercícios de Tupla

Exercícios parecidos com os de listas, usando o unpacking dentro do `for`.

---

## 🧪 Aplicação Prática (Exercícios)

1. **Tuplas (`01_tuplas.ipynb`)** — criação de uma tupla com dados de um funcionário (exemplo fictício) e a tentativa de alterar um valor, que gera erro por a tupla ser imutável.
2. **Unpacking em tuplas (`02_unpacking_em_tuplas.ipynb`)** — desempacotamento de uma tupla em variáveis e exemplo com `enumerate` sobre listas de vendas e funcionários.
3. **Lista de tuplas (`03_lista_de_tuplas.ipynb`)** — lista de tuplas com vendas de um e-commerce, faturamento de um produto em um dia e produto mais vendido em unidades em outro dia, com saídas. Reúne o material das aulas 3 e 4.
4. **Exercícios de tupla resolvidos (`04_gabarito_exercicios_de_tupla.ipynb`)** — análise de vendedores que bateram a meta e comparação de vendas de dois anos com cálculo do percentual de crescimento, com unpacking no `for`.

> Os dados e valores dos enunciados são fictícios e servem só de exercício.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Criação de tuplas e diferença entre tupla e lista
- Imutabilidade e seus efeitos no código
- Unpacking de tuplas em variáveis
- Trabalho com listas de tuplas e `for`
- Análise de vendas com dados organizados em tuplas

---

## 🚀 Conclusão

Este módulo mostrou como organizar dados que não devem ser alterados e como acessá-los de forma simples com o unpacking, formato comum em dados vindos de bancos de dados. O próximo módulo da trilha é o **Módulo 08 — Dicionários em Python**.
