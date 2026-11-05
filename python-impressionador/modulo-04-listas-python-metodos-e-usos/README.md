# 📘 Módulo 04 — Listas Python - Métodos e Usos

---

## 📌 Contexto do Módulo

Quarto módulo da trilha Python Impressionador, com 14 aulas. Apresenta as listas do Python, um dos objetos mais importantes da linguagem: como consultar e alterar valores pelo índice, adicionar e remover itens, medir o tamanho, achar o maior e o menor valor, juntar e ordenar listas, imprimir listas, copiar listas e trabalhar com listas de listas. Inclui uma cartilha com os principais métodos de lista e três materiais de exercícios.

Os exemplos usam situações de loja e de vendas, como produtos, estoque, unidades vendidas e vendedores.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Criar listas e consultar ou modificar valores pelo índice
- Descobrir o índice de um item com `index` e relacionar listas paralelas
- Adicionar e remover itens com `append`, `pop` e `remove`
- Usar `len`, `max`, `min`, `sort`, `extend` e `join`
- Entender a diferença entre igualar e copiar uma lista
- Trabalhar com listas de listas
- Resolver exercícios de cadastro, consulta e cálculo usando listas

---

## 📂 Estrutura do Módulo

```bash
modulo-04-listas-python-metodos-e-usos/
│
├── Notebooks/
│   ├── 01_listas_em_python.ipynb
│   ├── 02_indices_consultando_e_modificando_valores.ipynb
│   ├── 03_descobrindo_o_indice_de_um_item.ipynb
│   ├── 04_adicionar_e_remover_itens.ipynb
│   ├── 05_tamanho_maior_e_menor_valor.ipynb
│   ├── 06_juntar_listas_e_ordenar.ipynb
│   ├── 07_print_e_join_em_listas.ipynb
│   ├── 08_cartilha_de_metodos_de_lista.ipynb
│   ├── 09_alteracoes_incrementais_de_variaveis.ipynb
│   ├── 11_copiar_e_igualdade_de_listas.ipynb
│   └── 12_lista_de_listas.ipynb
│
└── Exercicios/
    ├── 10_exercicios_listas_parte_1.ipynb
    ├── 13_exercicios_listas_parte_2.ipynb
    └── 14_gabarito_exercicios_extras_listas.ipynb
```

---

## 🧠 Conceitos Abordados

### 🔹 Listas em Python

Estrutura `lista = [valor, valor, ...]`, a importância das listas e o fato de que, ao importar uma base de dados, ela costuma ser lida como lista ou como uma variação de lista. Exemplos com lista de produtos e lista de unidades vendidas.

### 🔹 Índices: Consultar e Modificar Valores

`lista[i]` para consultar, com o índice começando em 0, e `lista[i] = novo_valor` para substituir um valor.

### 🔹 Descobrindo o Índice de um Item

`lista.index(item)` combinado com listas paralelas, como produtos e estoque, e `in` para verificar se o item existe antes de consultar.

### 🔹 Adicionar e Remover Itens

`append` para adicionar, `pop(indice)` e `remove(item)` para remover. A aula apresenta duas formas de tratar o erro ao remover um item que não existe: um `if` antes ou o `try`/`except`.

### 🔹 Tamanho, Maior e Menor Valor

`len(lista)`, `max(lista)` e `min(lista)`.

### 🔹 Juntar Listas e Ordenar

`extend` e o operador `+` para juntar listas, o cuidado de que `[1] + [2]` não é o mesmo que `1 + 2`, e `sort` para ordenar.

### 🔹 Print e Join em Listas

Print normal de uma lista e o método `join` para montar um texto, junto com um lembrete do `split` de strings.

### 🔹 Cartilha de Métodos de Lista

Material de consulta com 11 métodos: `append`, `extend`, `insert`, `remove`, `pop`, `clear`, `index`, `count`, `sort`, `reverse` e `copy`.

### 🔹 Alterações Incrementais de Variáveis

`variavel = variavel + valor` e a forma abreviada `variavel += valor`.

### 🔹 Copiar e Igualdade de Listas

`lista2 = lista` não cria uma lista nova (as duas variáveis apontam para a mesma lista). Para copiar, usa-se `lista.copy()` ou `lista[:]`.

### 🔹 Lista de Listas

Listas em que cada item é outra lista, com exemplo de vendedores, produtos e vendas.

---

## 🧪 Aplicação Prática (Exercícios)

1. **Listas em Python (`01_listas_em_python.ipynb`)** — estrutura de uma lista e exemplos de lista de produtos e de vendas.
2. **Índices (`02_indices_consultando_e_modificando_valores.ipynb`)** — explicação de índices e substituição de valores, com as listas de exemplo.
3. **Descobrindo o índice (`03_descobrindo_o_indice_de_um_item.ipynb`)** — consulta da quantidade em estoque de um produto com `index`, e um programa de consulta de estoque que avisa quando o produto não existe, com as saídas salvas.
4. **Adicionar e remover itens (`04_adicionar_e_remover_itens.ipynb`)** — lista de produtos para o exemplo de adicionar e remover e explicação do tratamento de erro. A célula de código final está vazia no arquivo.
5. **Tamanho, maior e menor valor (`05_tamanho_maior_e_menor_valor.ipynb`)** — listas de exemplo e as perguntas da aula. As respostas não estão no arquivo.
6. **Juntar listas e ordenar (`06_juntar_listas_e_ordenar.ipynb`)** — listas de exemplo para juntar e ordenar. As respostas não estão no arquivo.
7. **Print e join (`07_print_e_join_em_listas.ipynb`)** — lista de produtos e o texto de exemplo para o `split`. As respostas não estão no arquivo.
8. **Cartilha de métodos (`08_cartilha_de_metodos_de_lista.ipynb`)** — uso e resultado de cada um dos 11 métodos.
9. **Alterações incrementais (`09_alteracoes_incrementais_de_variaveis.ipynb`)** — exemplo de adicionar um produto às listas, à soma de vendas e ao texto de um e-mail. Os trechos a completar estão em branco no arquivo.
10. **Exercícios Listas - Parte 1 (`10_exercicios_listas_parte_1.ipynb`)** — enunciados sobre melhor e pior mês de vendas, faturamento total, participação do melhor mês e top 3 de vendas do ano, com as listas de dados. O arquivo não traz as respostas.
11. **Copiar e igualdade (`11_copiar_e_igualdade_de_listas.ipynb`)** — comparação entre `lista2 = lista` e `lista2 = lista.copy()` ao alterar um item.
12. **Lista de listas (`12_lista_de_listas.ipynb`)** — lista de vendas por vendedor e produto, com as perguntas da aula. As respostas não estão no arquivo.
13. **Exercícios Listas - Parte 2 (`13_exercicios_listas_parte_2.ipynb`)** — enunciado de recálculo de preços após a criação de um imposto sobre livros, com a lista de produtos e a lista de listas com vendas e preços. O arquivo não traz a resposta.
14. **Exercícios extras resolvidos (`14_gabarito_exercicios_extras_listas.ipynb`)** — quatro exercícios: cadastro de produtos sem repetição (ignorando maiúsculas), consulta de preços, cálculo de bônus por unidades vendidas e descoberta do vendedor que mais vendeu.

> Os valores e as regras dos enunciados são fictícios e servem só de exercício. A regra de imposto sobre livros do exercício 13 é um cenário hipotético e pode não refletir a legislação atual.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Criação, consulta e alteração de listas pelo índice
- Métodos de lista para adicionar, remover, ordenar, juntar e copiar itens
- Funções `len`, `max`, `min`, `sum` e `join` aplicadas a listas
- Diferença entre igualar e copiar uma lista
- Listas de listas para representar dados em tabela
- Uso de listas em cadastros, consultas e cálculos

---

## 🚀 Conclusão

Este módulo apresentou as listas, base para trabalhar com conjuntos de dados em Python. O próximo módulo da trilha é o **Módulo 05 — For - Estrutura de Repetição**.
