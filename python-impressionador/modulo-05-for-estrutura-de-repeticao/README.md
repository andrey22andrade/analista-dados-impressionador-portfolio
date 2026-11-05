# 📘 Módulo 05 — For - Estrutura de Repetição

---

## 📌 Contexto do Módulo

Quinto módulo da trilha Python Impressionador, com 12 aulas. Apresenta a estrutura de repetição `for`: o `for` com `range`, o `for` que percorre cada item de uma lista ou de um texto, o `for` combinado com `if`, o `enumerate`, o `for` dentro de `for`, o uso de uma lista auxiliar e as instruções `break` e `continue`. Inclui exercícios resolvidos de cadastro, análise de vendas e controle de estoque, e uma lista de exercícios extras sobre listas.

Os exemplos usam situações de empresa, como produção de uma fábrica, metas de vendas, estoque mínimo e comparação de vendas entre anos.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Repetir um trecho de código com `for` e `range`
- Percorrer cada item de uma lista ou cada caractere de um texto
- Combinar `for` com `if` para contar e filtrar dados
- Usar `enumerate` para ter o item e o índice ao mesmo tempo
- Trabalhar com listas de listas usando `for` dentro de `for`
- Montar uma lista auxiliar durante o `for`
- Interromper ou pular itens com `break` e `continue`
- Resolver exercícios de análise de dados com listas e `for`

---

## 📂 Estrutura do Módulo

```bash
modulo-05-for-estrutura-de-repeticao/
│
├── Notebooks/
│   ├── 01_estrutura_de_repeticao_for.ipynb
│   ├── 02_for_each_percorrer_lista.ipynb
│   ├── 03_for_e_if.ipynb
│   ├── 04_enumerate.ipynb
│   ├── 05_diferentes_tipos_de_for.ipynb
│   ├── 07_for_dentro_de_for.ipynb
│   ├── 08_criando_lista_auxiliar.ipynb
│   └── 10_break_e_continue.ipynb
│
└── Exercicios/
    ├── 06_gabarito_exercicios_for_1_e_2.ipynb
    ├── 09_gabarito_exercicios_for_3.ipynb
    └── 11_gabarito_exercicios_extras_listas.ipynb
```

---

## 🧠 Conceitos Abordados

### 🔹 Estrutura de Repetição For

`for i in range(n)` para repetir um código `n` vezes, com um exemplo de resumo da produção de uma fábrica usando `len` e `range`.

### 🔹 For Each: Percorrer Cada Item

O `for item in lista` percorre uma lista item a item, e o mesmo vale para um texto, caractere a caractere. A aula explica que `range(5)` equivale à lista `[0, 1, 2, 3, 4]`.

### 🔹 For e If

`if` dentro do `for` e uso de um contador, com um exemplo que calcula o percentual de funcionários que bateram a meta de vendas.

### 🔹 Enumerate

`for i, item in enumerate(lista)` para ter o índice e o item no mesmo `for`, com um exemplo de produtos abaixo do estoque mínimo.

### 🔹 Quando Usar Cada Tipo de For

Os três tipos de `for` da aula: `for item in lista`, `for i in range` e `for` com `enumerate`.

### 🔹 For dentro de For

Percorrer uma lista de listas, com um exemplo de estoque de várias fábricas.

### 🔹 Lista Auxiliar

Uso de uma lista auxiliar e do `in` para guardar cada resultado uma única vez, sem repetição.

### 🔹 Break e Continue

`break` interrompe e encerra o `for`, e `continue` pula para o próximo item.

---

## 🧪 Aplicação Prática (Exercícios)

1. **Estrutura de repetição For (`01_estrutura_de_repeticao_for.ipynb`)** — `for` com `range` e resumo de produção de uma fábrica, com saídas.
2. **For each (`02_for_each_percorrer_lista.ipynb`)** — `for` percorrendo uma lista de produtos e os caracteres de um texto, com saídas.
3. **For e if (`03_for_e_if.ipynb`)** — percentual de funcionários que bateram a meta de vendas, com saída.
4. **Enumerate (`04_enumerate.ipynb`)** — `for` normal e `for` com `enumerate` sobre uma lista de funcionários, e produtos abaixo do estoque mínimo, com saídas.
5. **Diferentes tipos de for (`05_diferentes_tipos_de_for.ipynb`)** — lista de produtos e preços e os três títulos de `for` da aula. O arquivo é o material inicial, com as células de código ainda em branco.
6. **Exercícios de for resolvidos (`06_gabarito_exercicios_for_1_e_2.ipynb`)** — três exercícios, usados nas aulas 6 e 7: registro de hóspedes de um hotel com `input` e `for`, análise de vendedores que bateram a meta e comparação de vendas de 2019 e 2020 com `enumerate` e percentual de crescimento.
7. **For dentro de for (`07_for_dentro_de_for.ipynb`)** — verificação de fábricas com algum produto abaixo do estoque mínimo, com saída.
8. **Criando lista auxiliar (`08_criando_lista_auxiliar.ipynb`)** — solução do desafio anterior com uma lista auxiliar, que lista cada fábrica uma única vez.
9. **Exercícios de for 3 resolvidos (`09_gabarito_exercicios_for_3.ipynb`)** — percentual de vendedores que bateram a meta, resolvido de duas formas (lista auxiliar e contador), e descoberta do vendedor que mais vendeu.
10. **Break e continue (`10_break_e_continue.ipynb`)** — exemplos de `break` e `continue` com uma lista de vendas.
11. **Exercícios extras de listas (`11_gabarito_exercicios_extras_listas.ipynb`)** — sete exercícios resolvidos: vendas e média por vendedor, médias de alunos, funcionários acima de 25 anos com salário abaixo da média, meses com temperatura acima da média, abono salarial, consumo de combustível de veículos e faixas de salário com contadores.

> Os dados, valores e regras dos enunciados são fictícios e servem só de exercício. Valores como o preço do combustível do exercício de consumo podem estar desatualizados.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Estrutura de repetição `for` com `range`, listas e textos
- `enumerate` e `for` dentro de `for`
- Contadores, listas auxiliares e `break`/`continue`
- Análise de dados simples com listas, como metas, médias, percentuais e estoque
- Construção de rotinas de cadastro e relatórios com `for` e `input`

---

## 🚀 Conclusão

Este módulo ensinou a automatizar tarefas repetitivas e a analisar listas de dados item a item, base para trabalhar com bases maiores. O próximo módulo da trilha é o **Módulo 06 — While e Criando um Loop infinito**.
