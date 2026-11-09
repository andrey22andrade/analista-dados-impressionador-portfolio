# 📘 Módulo 09 — Iterables

---

## 📌 Contexto do Módulo

Nono módulo da trilha Python Impressionador, com 3 aulas. Explica o conceito de iterable, estrutura de dados que pode ser percorrida item a item, e apresenta duas estruturas novas: o `range` e o `set`. Os arquivos incluem uma cartilha com os métodos de `set`.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Entender o que é um iterable e quais estruturas já vistas são iterables
- Usar `range` com tamanho, com início e fim, e com passo
- Usar `set` para remover valores duplicados e contar itens únicos
- Consultar os métodos mais usados de `set`

---

## 📂 Estrutura do Módulo

```bash
modulo-09-iterables/
│
└── Notebooks/
    ├── 01_o_que_e_um_iterable.ipynb
    ├── 02_range.ipynb
    ├── 03_set.ipynb
    └── 04_cartilha_de_metodos_de_set.ipynb
```

---

## 🧠 Conceitos Abordados

### 🔹 O que é um Iterable

Estrutura que armazena dados e pode ser percorrida com um `for`, passando de item em item. Exemplos da aula: listas, strings, tuplas e dicionários. O termo aparece em várias explicações das funções do Python.

### 🔹 Range

`range(tamanho)`, `range(inicio, fim)` e `range(inicio, fim, passo)`. Exemplos com o `for`: percorrer os índices de listas de produtos e estoque, escolher os funcionários de uma faixa de posições (exemplo de classificação de funcionários em classes A, B e C) e contar com passo.

### 🔹 Set

Estrutura `{valor, valor, ...}` que não aceita valores duplicados e não tem ordem fixa. Aplicação da aula: contar quantos clientes diferentes a loja teve a partir de uma lista com CPFs repetidos, convertendo a lista em `set`.

### 🔹 Métodos de Set

Cartilha com 6 métodos: `add`, `remove`, `clear`, `union`, `intersection` e `difference`.

---

## 🧪 Aplicação Prática (Exercícios)

1. **O que é um iterable (`01_o_que_e_um_iterable.ipynb`)** — `for` percorrendo uma lista, um texto, uma tupla e um dicionário, com saídas.
2. **Range (`02_range.ipynb`)** — `range` com um valor, com início e fim e com passo, e o exemplo de funcionários por posição, com saídas.
3. **Set (`03_set.ipynb`)** — criação de um `set` e contagem de clientes únicos a partir de uma lista de CPFs com repetições, com saídas.
4. **Cartilha de métodos de set (`04_cartilha_de_metodos_de_set.ipynb`)** — uso de cada um dos 6 métodos, com saídas.

> A ordem dos itens de um `set` pode mudar entre execuções, como explicado na aula. Os dados e valores dos exemplos são fictícios.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Conceito de iterable e estruturas que podem ser percorridas com `for`
- `range` com início, fim e passo
- `set` para eliminar duplicidades e contar itens únicos
- Operações entre conjuntos, como união, interseção e diferença

---

## 🚀 Conclusão

Este módulo reuniu o conceito de iterable e duas estruturas muito usadas na análise de dados, o `range` e o `set`, que ajudam a percorrer sequências e a trabalhar com valores únicos. O próximo módulo da trilha é o **Módulo 10 — Criando suas funções em Python**.
