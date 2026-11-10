# 📘 Módulo 10 — Criando suas funções em Python

---

## 📌 Contexto do Módulo

Décimo módulo da trilha Python Impressionador, com 21 aulas. Ensina a criar funções em Python (`def`): como retornar valores, usar parâmetros e argumentos, definir valores padrão, retornar mais de um objeto, documentar a função com docstring e annotations e receber uma quantidade indefinida de argumentos com `*args` e `**kwargs`. O módulo inclui exercícios com regras de negócio e um exemplo final de construção de algoritmos usando funções.

Os exemplos usam situações de empresa, como cadastro de produtos, categorização de bebidas, indicadores de estoque e inadimplência, metas de vendedores e cálculo de preços.

Não há arquivos de apoio neste portfólio para as aulas 15 (Exceções e Erros em Funções) e 18 (Exercícios de Function - Exercicios 4).

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Criar funções com `def` e retornar valores com `return`
- Usar parâmetros e argumentos, em ordem (positional) e com nome (keyword)
- Definir valores padrão para os argumentos
- Retornar mais de um objeto em uma função
- Documentar funções com docstring e annotations
- Receber quantidades indefinidas de argumentos com `*args` e `**kwargs`
- Aplicar funções em exercícios de indicadores, metas e cálculos de negócio

---

## 📂 Estrutura do Módulo

```bash
modulo-10-criando-suas-funcoes-em-python/
│
├── Notebooks/
│   ├── 01_functions_no_python.ipynb
│   ├── 02_retornar_um_valor.ipynb
│   ├── 03_argumentos_e_parametros.ipynb
│   ├── 04_varios_parametros_e_tipos_de_parametros.ipynb
│   ├── 06_dicas_e_exemplos_com_argumentos.ipynb
│   ├── 07_valores_padroes_para_argumentos.ipynb
│   ├── 08_mais_sobre_o_return.ipynb
│   ├── 10_return_com_mais_de_uma_informacao.ipynb
│   ├── 13_docstring_e_annotations.ipynb
│   ├── 14_multiplos_argumentos.ipynb
│   ├── 15_ordem_dos_tipos_de_argumento.ipynb
│   └── 16_construcao_de_algoritmos_com_funcoes.ipynb
│
└── Exercicios/
    ├── 05_gabarito_exercicios_function_1.ipynb
    ├── 09_gabarito_exercicios_function_2.ipynb
    ├── 11_gabarito_exercicios_function_3.ipynb
    └── 12_gabarito_desafio_return_com_varios_objetos.ipynb
```

---

## 🧠 Conceitos Abordados

### 🔹 Functions no Python

Uma function é um bloco de código com um único propósito. Estrutura `def nome_funcao(): ... return valor_final`, com o exemplo de uma função de cadastro de produto que padroniza o nome em letras minúsculas.

### 🔹 Retornar um Valor

Uso do `return` para devolver o resultado da função, em vez de apenas exibi-lo, com a função de cadastro de produto devolvendo o nome padronizado.

### 🔹 Argumentos e Parâmetros

Parâmetros da função, com um exemplo de soma e um exemplo prático de categorização de bebidas: o código do produto tem o tipo nas três primeiras letras (`BEB` para alcoólicas e `BSA` para não alcoólicas), e uma função verifica a categoria.

### 🔹 Vários Parâmetros e Formas de Passar Argumentos

Dois parâmetros na função, passados em ordem (positional) ou com o nome do argumento (keyword). A aula lembra que a função deve ser definida antes de ser usada.

### 🔹 Dicas e Exemplos com Argumentos

Exemplos de métodos conhecidos e seus tipos de parâmetro: `upper()` sem parâmetros, `sort()` com parâmetro keyword e `extend(lista)` com um parâmetro obrigatório.

### 🔹 Valores Padrões para os Argumentos

`def funcao(argumento=valor_padrao)`, com o exemplo do `reverse=False` do `sort` e de uma função que padroniza códigos de produtos em minúsculas (padrão) ou maiúsculas.

### 🔹 Mais sobre o Return

O `return` aceita praticamente qualquer tipo de objeto (número, texto, boolean, lista, tupla, dicionário) e, quando executado, encerra a função, mesmo dentro de um loop.

### 🔹 Return com Mais de uma Informação

Retornar várias informações como uma tupla, com um exemplo de operações básicas e a aplicação em ciência de dados: dividir listas em partes de treino e de teste a partir de um fator.

### 🔹 Docstring e Annotations

Docstring para explicar o que a função faz, seus parâmetros e o retorno, e annotations (`arg: tipo` e `-> tipo`) para indicar os tipos esperados.

### 🔹 Múltiplos Argumentos

`*args` para quantidade indefinida de argumentos de posição (recebidos como tupla) e `**kwargs` para argumentos com nome (recebidos como dicionário), com exemplos de soma de vários números e cálculo de preço final com desconto, garantia e imposto.

### 🔹 Ordem dos Tipos de Argumento

Os argumentos de posição vêm antes dos argumentos com nome, e os argumentos individuais vêm antes dos "múltiplos".

### 🔹 Construção de Algoritmos com Funções

Forma de pensar de cima para baixo (top-down), exemplificada com o exercício de uma loja de tintas, que é construído com funções.

---

## 🧪 Aplicação Prática (Exercícios)

1. **Functions no Python (`01_functions_no_python.ipynb`)** — função de cadastro de produto em minúsculas, executada três vezes em um `for`, com saída.
2. **Retornar um valor (`02_retornar_um_valor.ipynb`)** — função que devolve o produto padronizado, com saída.
3. **Argumentos e parâmetros (`03_argumentos_e_parametros.ipynb`)** — função de soma e função que identifica bebidas alcoólicas em uma lista de códigos de produtos, com saídas. Reúne o material das aulas 3 e 4.
4. **Vários parâmetros e tipos de parâmetros (`04_varios_parametros_e_tipos_de_parametros.ipynb`)** — função que verifica a categoria de um produto, usada para separar bebidas alcoólicas e não alcoólicas, com saídas.
5. **Exercícios de function 1 (`05_gabarito_exercicios_function_1.ipynb`)** — função que calcula o percentual de carga tributária de um produto a partir de preço, custo e lucro, com saída.
6. **Dicas e exemplos com argumentos (`06_dicas_e_exemplos_com_argumentos.ipynb`)** — exemplos de `upper`, `sort`, `extend` e da função de categoria.
7. **Valores padrões para argumentos (`07_valores_padroes_para_argumentos.ipynb`)** — `sort` com `reverse` e função que padroniza códigos de produtos, com saídas.
8. **Mais sobre o return (`08_mais_sobre_o_return.ipynb`)** — funções que retornam número, texto, boolean e lista filtrada, com saída.
9. **Exercícios de function 2 (`09_gabarito_exercicios_function_2.ipynb`)** — função que calcula o percentual de stockout a partir de um dicionário de vendas e função que lista os clientes inadimplentes, com saídas.
10. **Return com mais de uma informação (`10_return_com_mais_de_uma_informacao.ipynb`)** — função de operações básicas e função que separa listas de preços e tamanhos de imóveis em treino e teste, com saídas. É o mesmo material usado nas aulas 11 e 13.
11. **Exercícios de function 3 (`11_gabarito_exercicios_function_3.ipynb`)** — função que recebe a meta e um dicionário de vendas e devolve o percentual e a lista de vendedores que bateram a meta, com saída.
12. **Desafio de return com vários objetos (`12_gabarito_desafio_return_com_varios_objetos.ipynb`)** — função com `*listas` que reúne as listas de estoque de vários meses e devolve a lista de produtos sem repetição, com saídas.
13. **Docstring e annotations (`13_docstring_e_annotations.ipynb`)** — função de soma com docstring e com annotations.
14. **Múltiplos argumentos (`14_multiplos_argumentos.ipynb`)** — função de soma com `*args` e função de preço final com `**kwargs`, com saídas.
15. **Ordem dos tipos de argumento (`15_ordem_dos_tipos_de_argumento.ipynb`)** — explicação da ordem dos argumentos e a assinatura de exemplo com `*args` e `**kwargs`. As células de código estão vazias no arquivo.
16. **Construção de algoritmos com funções (`16_construcao_de_algoritmos_com_funcoes.ipynb`)** — exercício da loja de tintas, calculando quantidade de latas e custo, primeiro em um bloco de código e depois dividido em funções, com a variação de misturar latas e galões, com saídas.

> Os dados, valores e regras dos enunciados são fictícios e servem só de exercício. Preços e custos citados nos enunciados podem estar desatualizados.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Criação de funções com parâmetros, valores padrão e `return`
- Argumentos de posição e com nome, `*args` e `**kwargs`
- Retorno de múltiplos objetos
- Documentação de funções com docstring e annotations
- Divisão de problemas em funções e raciocínio de cima para baixo
- Aplicação de funções em indicadores e regras de negócio

---

## 🚀 Conclusão

Este módulo mostrou como transformar partes do código em funções reutilizáveis, mais organizadas e fáceis de testar e de documentar, base para projetos maiores de análise de dados. O próximo módulo da trilha é o **Módulo 11 — Módulos, Bibliotecas e Introdução à Orientação a Objeto**.
