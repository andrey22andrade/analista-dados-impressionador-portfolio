# 📘 Módulo 08 — Manipulando Strings e Datas

---

## 📌 Contexto do Módulo

Oitavo módulo da trilha SQL Impressionador. Aprofunda a manipulação de dados de texto (strings) e de data em SQL Server — funções para concatenar, extrair, buscar, substituir e limpar textos, além de funções para extrair componentes de datas, calcular diferenças e formatar valores de data para exibição.

A base de dados utilizada em todos os exemplos é a **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Concatenação de textos com `CONCAT`
- Conversão de caixa com `UPPER` e `LOWER`
- Extração de substrings com `LEFT`, `RIGHT`, `SUBSTRING` e `CHARINDEX`
- Contagem de caracteres com `LEN` e `DATALENGTH`
- Remoção de espaços extras com `TRIM`, `LTRIM` e `RTRIM`
- Substituição de texto com `REPLACE`, `TRANSLATE` e `STUFF`
- Extração de componentes de data com `DAY`, `MONTH`, `YEAR` e `DATEFROMPARTS`
- Data/hora atual e informações de data com `GETDATE`, `SYSDATETIME`, `DATEPART` e `DATENAME`
- Cálculo entre datas com `DATEADD` e `DATEDIFF`
- Formatação personalizada de datas e números com `FORMAT`

---

## 📂 Estrutura do Módulo

```bash
modulo-08-manipulando-strings-e-datas/
│
├── Queries/
│   ├── 01_concat.sql
│   ├── 02_upper_lower.sql
│   ├── 03_left_right.sql
│   ├── 04_len_datalength.sql
│   ├── 05_trim_ltrim_rtrim.sql
│   ├── 06_replace.sql
│   ├── 07_translate_stuff.sql
│   ├── 08_charindex_substring.sql
│   ├── 09_format.sql
│   ├── 10_getdate_sysdatetime_datepart_datename.sql
│   ├── 11_day_month_year_datefromparts.sql
│   └── 12_dateadd_datediff.sql
│
├── Exercicios/
│   ├── 13_exercicio_8.sql
│   ├── 14_resultados_exercicio_8.sql
│   └── Lista_de_Exercicios_8.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 CONCAT

Junta múltiplos valores de texto em uma única string — por exemplo, montar o nome completo de um cliente a partir de `FirstName` e `LastName`.

### 🔹 UPPER e LOWER

Convertem um texto inteiramente para maiúsculas ou minúsculas, útil para padronização de exibição ou comparação de textos.

### 🔹 LEFT, RIGHT, SUBSTRING e CHARINDEX

`LEFT`/`RIGHT` extraem um número fixo de caracteres a partir do início ou do fim de um texto. `SUBSTRING` extrai caracteres a partir de uma posição específica. `CHARINDEX` localiza a posição de um caractere ou substring dentro de um texto — muito usado em conjunto com `SUBSTRING` para extrair partes de um texto de tamanho variável (ex: separar sobrenome a partir da posição do espaço).

### 🔹 LEN e DATALENGTH

`LEN` retorna a quantidade de caracteres de um texto; `DATALENGTH` retorna o tamanho em bytes — a diferença aparece, por exemplo, ao contar espaços à direita, que `LEN` ignora mas `DATALENGTH` contabiliza.

### 🔹 TRIM, LTRIM e RTRIM

Removem espaços em branco extras de um texto — `TRIM` de ambos os lados, `LTRIM` só da esquerda, `RTRIM` só da direita. Importantes para higienizar dados antes de comparações ou exibição.

### 🔹 REPLACE, TRANSLATE e STUFF

`REPLACE` substitui todas as ocorrências de um trecho de texto por outro (pode ser encadeado para múltiplas substituições). `TRANSLATE` faz substituições caractere a caractere de forma simultânea (útil para trocar vários símbolos de uma vez). `STUFF` insere um texto em uma posição específica, removendo um número definido de caracteres.

### 🔹 DAY, MONTH, YEAR e DATEFROMPARTS

`DAY`, `MONTH` e `YEAR` extraem, respectivamente, o dia, mês e ano de uma data. `DATEFROMPARTS` faz o caminho inverso: monta uma data a partir de valores separados de dia, mês e ano.

### 🔹 GETDATE, SYSDATETIME, DATEPART e DATENAME

`GETDATE`/`SYSDATETIME` retornam a data/hora atual do sistema (`SYSDATETIME` com maior precisão). `DATEPART` retorna um componente da data como número; `DATENAME` retorna o mesmo componente como texto (ex: nome do mês por extenso).

### 🔹 DATEADD e DATEDIFF

`DATEADD` soma ou subtrai uma quantidade de dias/meses/anos a uma data. `DATEDIFF` calcula a diferença entre duas datas na unidade especificada (dias, meses, anos etc.) — essencial para calcular idades, tempo de atividade ou prazos.

### 🔹 FORMAT (revisão aplicada)

Formatação personalizada de datas (ex: `'dd/MMMM/yyyy'` com cultura `'pt-BR'` para nome do mês por extenso em português) e de números/moeda para exibição mais amigável.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios aplicam manipulação de texto e data em cenários de relatório, cadastro e RH:

1. **Otimização de nomes para gráfico** — contagem de caracteres dos nomes de produto (`LEN`), cálculo da média de caracteres (`AVG` + `LEN`), e redução do nome removendo marca e cor redundantes com `REPLACE` encadeado, comparando a média antes e depois.
2. **Substituição de códigos** — uso de `TRANSLATE` para trocar dígitos (0-9) por letras (A-J) na coluna `StyleName`, sem precisar de múltiplos `REPLACE`.
3. **Geração de login e senha** — combinação de `CHARINDEX` + `LEFT` para extrair o login a partir do e-mail (antes do `@`), e `UPPER` + `DATENAME(DAYOFYEAR, ...)` para montar uma senha a partir do primeiro nome e do dia do ano de nascimento.
4. **Filtro por ano de primeira compra** — uso de `YEAR(DateFirstPurchase) = 2001` para identificar clientes elegíveis a uma ação de marketing.
5. **Decomposição de data de contratação** — separação da data de contratação em dia, mês (por extenso, com `DATENAME`) e ano, para uso em relatório automatizado de RH.
6. **Tempo de atividade das lojas** — cálculo do tempo em dias desde a abertura até hoje (`DATEDIFF(DAY, OpenDate, GETDATE())`), filtrando apenas lojas ainda ativas e ordenando para identificar a mais antiga.

As respostas completas estão documentadas em [`Exercicios/14_resultados_exercicio_8.sql`](./Exercicios/14_resultados_exercicio_8.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Manipulação completa de strings: extração, busca, substituição e limpeza
- Extração e composição de datas a partir de seus componentes
- Cálculo de diferenças e deslocamentos entre datas
- Formatação de dados de texto e data para exibição amigável em relatórios
- Aplicação combinada dessas funções para resolver problemas reais de cadastro, relatório e RH

---

## 🚀 Conclusão

Este módulo consolidou um conjunto de ferramentas essenciais no dia a dia de um Analista de Dados: tratar e padronizar dados de texto e data, que raramente chegam prontos para análise. Essa base de limpeza e transformação de dados prepara o terreno para o próximo módulo, que introduz funções condicionais (`CASE WHEN`) para criar lógica de negócio diretamente nas consultas.
