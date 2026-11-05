# 📘 Módulo 03 — Strings - Textos e a importância no Python

---

## 📌 Contexto do Módulo

Terceiro módulo da trilha Python Impressionador, com 10 aulas. Trabalha com strings (textos) em Python: índice e tamanho, índices negativos e cortes de texto, operações com strings, métodos de string, formatação de números com `format` e exercícios de validação de dados, como CPF, e-mail e telefone.

A primeira aula é uma introdução à importância das strings e não tem arquivo de apoio. Os materiais do módulo cobrem as aulas 2 a 10.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Acessar caracteres de um texto pelo índice e medir o tamanho com `len()`
- Usar índices negativos e cortes (`texto[início:fim:passo]`)
- Fazer operações com strings: `str()`, concatenação com `+`, `in`, `format`, `%s` e `%d`
- Usar métodos de string para tratar e validar textos
- Formatar números com `format`: alinhamento, sinal, separador de milhar, casas decimais e percentual
- Validar e padronizar dados digitados pelo usuário, como CPF, e-mail e telefone

---

## 📂 Estrutura do Módulo

```bash
modulo-03-strings-textos-e-a-importancia-no-python/
│
├── Notebooks/
│   ├── 01_indice_e_tamanho_de_string.ipynb
│   ├── 02_indice_negativo_e_pedaco_de_texto.ipynb
│   ├── 03_operacoes_com_string.ipynb
│   ├── 04_metodos_de_string.ipynb
│   ├── 05_formatacao_de_numeros.ipynb
│   └── 07_cortes_de_string.ipynb
│
└── Exercicios/
    ├── 06_gabarito_exercicios_string.ipynb
    └── 08_gabarito_exercicios_extras_strings.ipynb
```

---

## 🧠 Conceitos Abordados

### 🔹 Índice e Tamanho de String

Posição de cada caractere do texto a partir do zero, `texto[índice]` para pegar um caractere e `len(texto)` para o tamanho.

### 🔹 Índice Negativo e Pedaço de Texto

Índices negativos para contar a partir do fim do texto e o uso de `:` para pegar um pedaço, nas formas `texto[:índice]`, `texto[índice:]` e `texto[índice:índice]`.

### 🔹 Operações com String

`str()` para transformar número em texto, concatenação com `+`, `format` com `{}`, `%s` e `%d` para substituir valores, e `in` para verificar se um texto está dentro de outro.

### 🔹 Métodos de String

Material de consulta com 16 métodos: `capitalize`, `casefold`, `count`, `endswith`, `find`, `format`, `isalnum`, `isalpha`, `isnumeric`, `replace`, `split`, `splitlines`, `startswith`, `strip`, `title` e `upper`.

### 🔹 Formatação de Números

- Alinhamento do texto (`:<`, `:>` e `:^`)
- Sinal (`:+`), separador de milhar (`:,` e `:_`), casas decimais fixas (`:f`) e percentual (`:%`)
- Também listados na consulta: formato científico (`:e`) e hexadecimal (`:x` e `:X`)
- Valor em formato de moeda brasileira, combinando `format` e `replace`
- `round()` para arredondar

### 🔹 Cortes de String

Corte com posição inicial e final, com índices negativos e com passo (`step`), incluindo a inversão de um texto com `[-1::-1]`.

### 🔹 Validação de Dados

Validação de CPF (apenas números, 11 caracteres, com remoção de pontos, traços e espaços das pontas), de e-mail (campos preenchidos, `@` e ponto depois do `@`, com `find`) e de telefone, e comparação de duas strings por tamanho e conteúdo.

---

## 🧪 Aplicação Prática (Exercícios)

1. **Índice e tamanho (`01_indice_e_tamanho_de_string.ipynb`)** — tabela de posições de um texto de exemplo e as variáveis usadas na aula. O arquivo não traz saídas.
2. **Índice negativo e pedaço de texto (`02_indice_negativo_e_pedaco_de_texto.ipynb`)** — explicação de índices negativos e cortes e um exercício de fixação com os `print` para completar (tamanho, primeiro e último caractere e servidor do e-mail). O arquivo é o material inicial da aula, com a parte a completar ainda em aberto.
3. **Operações com string (`03_operacoes_com_string.ipynb`)** — resumo das operações com string e células de exemplo. A célula de concatenação de texto com número gera erro de tipo, como mostrado na aula, e as células de `format` e `%s`/`%d` estão incompletas no arquivo.
4. **Métodos de string (`04_metodos_de_string.ipynb`)** — consulta com uso e resultado de cada um dos 16 métodos.
5. **Formatação de números (`05_formatacao_de_numeros.ipynb`)** — exemplos com saídas: alinhamento, sinal, separador de milhar, casas decimais, percentual, moeda brasileira e `round()`.
6. **Exercícios de string resolvidos (`06_gabarito_exercicios_string.ipynb`)** — cadastro de CPF (só números), cadastro de CPF com tratamento de pontos, traços e espaços das pontas, e cadastro de nome e e-mail com validação.
7. **Cortes de string (`07_cortes_de_string.ipynb`)** — cortes em um texto de preços por mês e inversão de um código com passo negativo, com as respostas.
8. **Exercícios extras (`08_gabarito_exercicios_extras_strings.ipynb`)** — comparação de duas strings por tamanho e conteúdo, e validação e correção de número de telefone de 7 dígitos.

> Os dados de CPF, e-mail e telefone dos exercícios são exemplos, e os e-mails dos arquivos são os exemplos usados na aula.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Índices, tamanho e cortes de strings
- Operações e métodos de string
- Formatação de números e valores com `format`
- Tratamento e validação de textos digitados pelo usuário
- Aplicação de strings e condições em cadastros de CPF, e-mail e telefone

---

## 🚀 Conclusão

Este módulo mostrou como tratar e validar textos, que aparecem em quase toda base de dados, como nomes, e-mails e códigos. O próximo módulo da trilha é o **Módulo 04 — Listas Python - Métodos e Usos**.
