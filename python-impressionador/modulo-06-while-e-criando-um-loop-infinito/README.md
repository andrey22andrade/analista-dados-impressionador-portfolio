# 📘 Módulo 06 — While e Criando um Loop infinito

---

## 📌 Contexto do Módulo

Sexto módulo da trilha Python Impressionador, com 4 aulas. Apresenta a estrutura de repetição `while`, que repete um código enquanto uma condição for verdadeira, e mostra o cuidado necessário para não criar um loop infinito. Inclui um exercício de `while` com registro de vendas e fecha com uma lista de 14 exercícios de estruturas de repetição, que combinam `while`, `for`, `break` e `continue`.

Os exemplos usam situações de empresa, como registro de vendas, metas de vendedores, cadastro de dados e votação.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Repetir um código com `while` enquanto uma condição for verdadeira
- Identificar e evitar loops infinitos
- Usar `while True` com `break` para encerrar a repetição
- Validar dados digitados pelo usuário repetindo a pergunta até a resposta ser válida
- Combinar `while`, `for`, `break` e `continue` na resolução de exercícios

---

## 📂 Estrutura do Módulo

```bash
modulo-06-while-e-criando-um-loop-infinito/
│
├── Notebooks/
│   ├── 01_estrutura_while.ipynb
│   └── 02_loop_infinito_no_while.ipynb
│
└── Exercicios/
    ├── 03_gabarito_exercicio_de_while.ipynb
    └── 04_gabarito_estruturas_de_repeticao.ipynb
```

---

## 🧠 Conceitos Abordados

### 🔹 Estrutura While

O `while` repete o código enquanto a condição for verdadeira e sai da repetição quando ela deixa de ser. Exemplo de registro de vendas, em que o usuário cadastra produtos até apertar enter com a caixa vazia.

### 🔹 Loop Infinito no While

Sempre que usar `while`, é preciso garantir que o programa termine em algum momento. Exemplo com uma lista de vendedores e vendas, que percorre a lista com um contador (`i += 1`) até encontrar quem não bateu a meta.

### 🔹 Exercício de While

Sistema de vendas que registra produto e quantidade (2 inputs) em uma lista até o usuário deixar o produto vazio, com `while True` e `break`. A aula também cita as duas formas de fazer: um `while` com a condição que finaliza o programa, ou um `while` sem fim com um `break` dentro.

### 🔹 Estruturas de Repetição

Lista de 14 exercícios com validação de dados com `while` (nota, login e senha, cadastro de nome, idade, salário, gênero e estado civil), crescimento populacional, faturamento mensal (maior valor, soma e média), média de idade de equipes, votação, investimento em CDs, tabela de preços, reajuste salarial, pedido de lanchonete e enquete de jogadores com `break` e `continue`.

---

## 🧪 Aplicação Prática (Exercícios)

1. **Estrutura while (`01_estrutura_while.ipynb`)** — registro de produtos em uma lista até a caixa ficar vazia, com saída.
2. **Loop infinito no while (`02_loop_infinito_no_while.ipynb`)** — vendedores que bateram a meta de 50 vendas, percorrendo as listas com `while` e um contador, com saída.
3. **Exercício de while resolvido (`03_gabarito_exercicio_de_while.ipynb`)** — registro de produtos e quantidades em uma lista de listas, com `while True` e `break`.
4. **Estruturas de repetição resolvidas (`04_gabarito_estruturas_de_repeticao.ipynb`)** — 14 exercícios resolvidos. Algumas soluções cobrem só parte do enunciado, como o pedido de lanchonete (mostra só o total) e a enquete (sem gravar o resultado em arquivo).

> Os dados, valores e regras dos enunciados são fictícios e servem só de exercício. Preços e taxas citados nos enunciados podem estar desatualizados.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Estrutura de repetição `while` e condição de parada
- Prevenção de loops infinitos
- `while True` com `break` e `continue`
- Validação de entradas do usuário
- Resolução de exercícios com `while` e `for` em situações de negócio

---

## 🚀 Conclusão

Este módulo completou as estruturas de repetição do Python, mostrando quando usar `while` em vez de `for` e como garantir que o programa termine. O próximo módulo da trilha é o **Módulo 07 — Tuplas - Uma "lista" muito útil e imutável**.
