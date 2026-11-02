# 📘 Módulo 02 — If - Condições em Python

---

## 📌 Contexto do Módulo

Segundo módulo da trilha Python Impressionador, com 9 aulas. Apresenta a estrutura de decisão do Python: o `if` com `else`, os blocos e a indentação, o `if` dentro de `if`, o `elif`, os comparadores e os operadores `and` e `or`. Inclui uma aula sobre comparações menos intuitivas, duas aulas de exercícios com `if` e fecha com uma lista de 23 exercícios de estruturas de decisão.

Os exemplos usam situações de empresa, como bônus de vendedores, metas de vendas, controle de estoque e folha de pagamento.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Escrever condições com `if` e `else`
- Organizar o código em blocos com indentação e usar `if` dentro de `if`
- Tratar vários casos com `elif`
- Comparar valores com `==`, `!=`, `>`, `<`, `>=`, `<=`, `in` e `not`
- Combinar condições com `and` e `or`
- Validar dados digitados pelo usuário com `input`
- Resolver exercícios com regras de negócio usando estruturas de decisão

---

## 📂 Estrutura do Módulo

```bash
modulo-02-if-condicoes-em-python/
│
├── Notebooks/
│   ├── 01_estrutura_do_if.ipynb
│   ├── 02_blocos_e_indentacao.ipynb
│   ├── 03_elif.ipynb
│   ├── 04_comparadores.ipynb
│   ├── 05_and_e_or.ipynb
│   └── 07_comparacoes_contraintuitivas.ipynb
│
└── Exercicios/
    ├── 06_gabarito_exercicios_if_parte_1.ipynb
    ├── 08_gabarito_exercicios_if_parte_2.ipynb
    └── 09_gabarito_estruturas_de_decisao.ipynb
```

---

## 🧠 Conceitos Abordados

### 🔹 Estrutura do If

- `if` para executar um bloco só quando a condição é verdadeira
- `else` para tratar o caso em que a condição é falsa
- Exemplo de meta de vendas de um produto, com dados hipotéticos

### 🔹 Blocos e Indentação

- A indentação indica onde a estrutura começa e termina
- Várias ações dentro do mesmo `if` ou `else`
- `if` dentro de `if` para tratar mais de uma condição
- Cuidado com a repetição de código

### 🔹 Elif

Uso do `elif` quando há mais de dois casos, com um exemplo de bônus de vendedores em faixas de resultado.

### 🔹 Comparadores

- Igual (`==`), diferente (`!=`), maior e menor (`>`, `>=`, `<`, `<=`)
- `in` para verificar se um texto existe dentro de outro
- `not` para inverter a comparação
- `pass` para o caso em que não se quer fazer nada

### 🔹 And e Or

Combinação de condições no mesmo `if`: com `and` as duas precisam ser verdadeiras, com `or` basta uma. Exemplo de bônus que depende do resultado individual, da meta da loja e de uma nota de avaliação.

### 🔹 Comparações Contraintuitivas

Uso de valores diretamente como condição, como em `if faturamento and custo`, para verificar se os campos digitados foram preenchidos. O resumo da aula também cita `if 0` e `if ''`.

### 🔹 Exercícios de Estruturas de Decisão

Exercícios de cálculo de bônus, controle de estoque por categoria de produto e uma lista de 23 exercícios com `if`, `elif`, `else`, `and`, `or` e `in`.

---

## 🧪 Aplicação Prática (Exercícios)

1. **Estrutura do if (`01_estrutura_do_if.ipynb`)** — `if` simples e `if` com `else`, com o exemplo de meta de vendas de um produto.
2. **Blocos e indentação (`02_blocos_e_indentacao.ipynb`)** — `if` dentro de `if` aplicado ao cálculo da taxa de um fundo de investimentos, a partir do rendimento.
3. **Elif (`03_elif.ipynb`)** — cálculo de bônus de vendedor em três faixas, de acordo com a meta de vendas.
4. **Comparadores (`04_comparadores.ipynb`)** — comparação de faturamentos de duas lojas e validação de e-mail com `!=`, `in` e `not`.
5. **And e or (`05_and_e_or.ipynb`)** — regra de bônus com `and` e `or`, combinando resultado do funcionário, resultado da loja e nota de avaliação.
6. **Exercícios If - Parte 1 (`06_gabarito_exercicios_if_parte_1.ipynb`)** — dois exercícios de cálculo de bônus de funcionários: o primeiro com `if` e `else` e o segundo com mais faixas, resolvido com `if` dentro de `if` e com `elif`.
7. **Comparações contraintuitivas (`07_comparacoes_contraintuitivas.ipynb`)** — verificação de campos preenchidos antes de calcular o lucro de uma loja.
8. **Exercícios If - Parte 2 (`08_gabarito_exercicios_if_parte_2.ipynb`)** — mini sistema de controle de estoque: lê produto, categoria e quantidade com `input`, avisa quando o estoque está abaixo do mínimo da categoria e pede o preenchimento caso falte algum dado.
9. **Lista de exercícios de estruturas de decisão (`09_gabarito_estruturas_de_decisao.ipynb`)** — 23 exercícios resolvidos, entre eles: maior de dois ou três números, positivo ou negativo, estado civil, e-mail de spam, média de notas e conceito, reajuste de salário por faixa, folha de pagamento com descontos, dia da semana, ano bissexto, caixa eletrônico, classificação por respostas, descontos em combustível, frutas e carnes, e cálculo de tinta para uma área.

> Os valores e as regras dos enunciados são fictícios e servem só de exercício. Os preços e as alíquotas citados nos enunciados podem estar desatualizados.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Estruturas de decisão com `if`, `elif` e `else`
- Indentação e blocos de código
- Comparadores e operadores lógicos (`and`, `or`, `not`, `in`)
- Validação de dados digitados pelo usuário
- Tradução de regras de negócio em condições de código

---

## 🚀 Conclusão

Este módulo ensinou o programa a tomar decisões, aplicando regras de negócio como metas, bônus, estoque e descontos. O próximo módulo da trilha é o **Módulo 03 — Strings - Textos e a importância no Python**.
