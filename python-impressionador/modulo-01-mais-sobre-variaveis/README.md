# 📘 Módulo 01 — Mais sobre Variáveis

---

## 📌 Contexto do Módulo

Primeiro módulo da trilha Python Impressionador, com 7 aulas. Apresenta a ordem de execução dos programas e os tipos de variáveis do Python, mostra o que acontece ao misturar tipos diferentes e ensina a montar textos com variáveis usando concatenação, o método `format` e f-strings. Fecha com uma lista de exercícios de estrutura sequencial.

As duas primeiras aulas (comentário sobre as próximas aulas e ordem de execução dos programas) não têm arquivo de apoio. Os materiais do módulo cobrem as aulas 3 a 7.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Identificar os tipos de variáveis do Python (`int`, `float`, `str` e `bool`) com `type()`
- Entender o erro ao misturar tipos diferentes, como texto e número
- Montar mensagens com variáveis usando concatenação, `format` e f-string
- Receber dados do usuário com `input` e converter o tipo com `int()`, `float()` e `str()`
- Resolver problemas de estrutura sequencial com entrada, cálculo e saída de dados

---

## 📂 Estrutura do Módulo

```bash
modulo-01-mais-sobre-variaveis/
│
├── Notebooks/
│   ├── 01_tipos_de_variaveis.ipynb
│   ├── 02_misturando_tipos_de_variaveis.ipynb
│   ├── 03_comando_format.ipynb
│   └── 04_fstring_e_mudanca_de_tipo.ipynb
│
└── Exercicios/
    └── 05_gabarito_estrutura_sequencial.ipynb
```

---

## 🧠 Conceitos Abordados

### 🔹 Ordem de Execução dos Programas

Aula de introdução sobre a ordem em que o Python executa um programa (sem arquivo de apoio).

### 🔹 Tipos de Variáveis

- **int**: números inteiros
- **float**: números com casas decimais
- **str**: texto (um número entre aspas, como `'1.000'`, é texto)
- **bool**: `True` ou `False`
- Uso de `type()` para ver o tipo de uma variável
- As variáveis não são declaradas explicitamente, mas não convém ficar trocando o tipo delas o tempo todo

### 🔹 Misturando Tipos de Variáveis

Tentativa de juntar um texto com um número usando `+`, o que gera erro de tipo (`TypeError`).

### 🔹 Concatenação e Método `format`

Montagem de mensagens concatenando textos com `str()` e uso do método `format` com chaves `{}`.

### 🔹 F-string e Mudança de Tipo de Variável

- Comparação entre `format` e f-string para escrever o mesmo texto
- `input` devolve texto, então é preciso converter com `int()` ou `float()` antes de calcular
- Conferência do tipo da variável com `type()`

### 🔹 Estrutura Sequencial

Lista de 14 exercícios em que o programa pede dados, faz o cálculo e mostra o resultado, com `input`, `print` e f-string.

---

## 🧪 Aplicação Prática (Exercícios)

1. **Tipos de variáveis (`01_tipos_de_variaveis.ipynb`)** — exemplos de `int`, `float`, `str` e `bool` com `type()`, junto com as anotações da aula.
2. **Misturando tipos (`02_misturando_tipos_de_variaveis.ipynb`)** — concatenação de um texto com um número inteiro, que gera o erro de tipo da aula.
3. **Comando format (`03_comando_format.ipynb`)** — ponto de partida da aula, com a concatenação de textos usando `str()`. A seção do método `format` está vazia no arquivo; o uso do `format` aparece no arquivo seguinte.
4. **F-string e mudança de tipo (`04_fstring_e_mudanca_de_tipo.ipynb`)** — mensagem escrita com `format` e com f-string, e conversão de `input` para `float` com conferência do tipo.
5. **Lista de exercícios resolvida (`05_gabarito_estrutura_sequencial.ipynb`)** — 14 exercícios de estrutura sequencial: mensagem na tela, soma de dois números, média de 4 notas, conversão de metros para centímetros, área de uma sala, salário por hora trabalhada, conversão entre Fahrenheit e Celsius, peso ideal (fórmula única e por gênero), cálculo de salário líquido com descontos, quantidade de tinta para uma área e tempo de download de um arquivo. Os valores dos enunciados são fictícios e servem só de exemplo.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Tipos básicos de variáveis do Python e verificação com `type()`
- Erros causados ao misturar tipos diferentes
- Formatação de textos com concatenação, `format` e f-string
- Entrada de dados com `input` e conversão de tipos
- Resolução de problemas simples de estrutura sequencial

---

## 🚀 Conclusão

Este módulo deu a base para escrever programas que recebem dados, fazem cálculos e mostram o resultado de forma organizada, com atenção ao tipo de cada variável. O próximo módulo da trilha é o **Módulo 02 — If - Condições em Python**.
