# 📘 Módulo 07 — Variáveis

---

## 📌 Contexto do Módulo

Sétimo módulo da trilha SQL Impressionador. Introduz o conceito de variáveis em T-SQL: declaração, tipos de dados, conversão de tipos, formatação de valores, funções de arredondamento e uso de variáveis dentro de consultas (inclusive armazenando resultados de `SELECT` e acumulando valores). Também cobre variáveis globais do sistema.

A base de dados utilizada em todos os exemplos é a **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Tipos de dados em SQL Server (inteiro, decimal, texto, data)
- Declaração e atribuição de variáveis com `DECLARE` e `SET`
- Identificação (`SQL_VARIANT_PROPERTY`) e conversão (`CAST`) de tipos de dado
- Formatação personalizada de valores com `FORMAT`
- Arredondamento de números com `ROUND`, `FLOOR` e `CEILING`
- Armazenamento do resultado de um `SELECT` (valor único ou registro completo) em variáveis
- Acúmulo de valores dentro de uma variável em um loop implícito de `SELECT`
- Uso de variáveis dentro de consultas para parametrizar filtros e cálculos
- Exibição de mensagens com `PRINT`
- Variáveis globais do sistema (`@@SERVERNAME`, `@@VERSION`, `@@ROWCOUNT`)

---

## 📂 Estrutura do Módulo

```bash
modulo-07-variaveis/
│
├── Queries/
│   ├── 01_tipos_de_dados.sql
│   ├── 02_operacoes_basicas.sql
│   ├── 03_round_floor_ceiling.sql
│   ├── 04_identificando_tipo_dado.sql
│   ├── 05_especificando_tipo_dado.sql
│   ├── 06_format.sql
│   ├── 07_declare_e_set.sql
│   ├── 08_armazenando_resultado_select.sql
│   ├── 09_armazenando_registro_consulta.sql
│   ├── 10_acumulando_valores.sql
│   ├── 11_utilizando_variavel_consulta_parte1.sql
│   ├── 12_utilizando_variavel_consulta_parte2.sql
│   ├── 13_print.sql
│   └── 14_variaveis_globais.sql
│
├── Exercicios/
│   ├── 15_exercicio_7.sql
│   ├── 16_resultados_exercicio_7.sql
│   └── Lista_de_Exercicios_7.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 Tipos de Dados e Operações Básicas

SQL Server diferencia valores por tipo: inteiro (`INT`), decimal (`FLOAT` ou `DECIMAL(N, M)`), texto (`VARCHAR(N)`) e data (`DATETIME`/`DATE`). Operações básicas (`+`, `-`, `*`, `/`) se comportam de forma diferente conforme o tipo — inclusive soma de datas (`'21/03/2021' + 1` avança um dia) e concatenação de textos com `+`.

### 🔹 ROUND, FLOOR e CEILING

`ROUND(valor, casas)` arredonda para o número de casas decimais especificado (e pode truncar com um terceiro parâmetro); `FLOOR` arredonda sempre para baixo; `CEILING` arredonda sempre para cima.

### 🔹 Identificando e Especificando o Tipo de um Dado

`SQL_VARIANT_PROPERTY(valor, 'BaseType')` identifica o tipo de um dado. `CAST(valor AS tipo)` converte um valor para outro tipo — essencial, por exemplo, para concatenar um número a uma string (`CAST(30.99 AS VARCHAR(30))`) ou converter um texto em data.

### 🔹 FORMAT

Formata valores numéricos, personalizados ou de data para exibição — ex: `FORMAT(1000, 'N')` para separador de milhar, ou `FORMAT(data, 'dd/MM/yyyy')` para formato de data customizado.

### 🔹 DECLARE e SET — Declarando Variáveis

Estrutura básica: `DECLARE @variavel tipo` seguido de `SET @variavel = valor`. É possível declarar múltiplas variáveis de uma vez, separadas por vírgula.

### 🔹 Armazenando Resultado de SELECT em Variável

Uma variável pode receber o resultado de uma subconsulta escalar (`SET @var = (SELECT ...)`), ou múltiplas variáveis podem receber colunas de uma mesma linha simultaneamente (`SELECT @var1 = coluna1, @var2 = coluna2 FROM ... WHERE ...`).

### 🔹 Acumulando Valores em uma Variável

Técnica para concatenar o resultado de várias linhas em uma única variável de texto, usando a variável nos dois lados da atribuição dentro de um `SELECT` (`SET @lista = @lista + coluna + ', '`) — útil para gerar listas legíveis a partir de múltiplas linhas.

### 🔹 Usando Variáveis em Consultas

Variáveis podem ser usadas para parametrizar filtros (`WHERE coluna >= @varData`) ou cálculos (`preco * (1 - @varDesconto)`), tornando a consulta reutilizável e mais fácil de ajustar.

### 🔹 PRINT

Exibe uma mensagem de texto na aba de mensagens do SSMS, diferente do `SELECT`, que exibe um resultado tabular — útil para mensagens de status ou logs de execução, geralmente concatenando texto fixo com variáveis convertidas via `CAST`.

### 🔹 Variáveis Globais

Variáveis do sistema, prefixadas com `@@` (ex: `@@SERVERNAME`, `@@VERSION`, `@@ROWCOUNT`), que trazem informações sobre o ambiente ou a última operação executada.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios cobrem desde operações matemáticas básicas com variáveis até cenários de negócio mais elaborados:

1. **Operações matemáticas com variáveis** — declaração de 4 variáveis `float` e cálculo de soma, subtração, multiplicação e divisão entre elas, com arredondamento do resultado final.
2. **Tipagem correta por cenário** — declaração de variáveis de tipos diferentes (texto, inteiro, decimal) e cálculo de faturamento a partir delas, exibidas em uma única consulta.
3. **Montagem de frase com dados de usuário** — combinação de `CAST` e `FORMAT` para montar uma frase legível a partir de variáveis de nome, data de nascimento e quantidade de pets.
4. **Relatório com PRINT** — identificação das lojas fechadas em 2008 e montagem de uma frase de resultado usando `PRINT` (em vez de `SELECT`), acumulando os nomes das lojas em uma variável.
5. **Consulta parametrizada por variável** — uso de uma variável para armazenar o ID de uma subcategoria específica ("Fans"), evitando repetir o valor literal na consulta principal.

As respostas completas estão documentadas em [`Exercicios/16_resultados_exercicio_7.sql`](./Exercicios/16_resultados_exercicio_7.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Tipagem de dados e conversão entre tipos em SQL Server
- Declaração e uso de variáveis para parametrizar consultas
- Armazenamento de resultados de consultas (escalares e por linha) em variáveis
- Técnicas de acúmulo de valores para gerar listas textuais a partir de múltiplas linhas
- Formatação e arredondamento de valores para exibição
- Diferença entre `PRINT` (mensagem) e `SELECT` (resultado tabular)

---

## 🚀 Conclusão

Este módulo introduziu variáveis como ferramenta para tornar consultas SQL mais dinâmicas, reutilizáveis e legíveis — uma ponte entre consultas puramente declarativas e uma lógica mais procedural. Essa base é essencial para os próximos módulos, que avançam para manipulação de strings e datas, funções condicionais e, mais adiante, estruturas de repetição (loops) em SQL.
