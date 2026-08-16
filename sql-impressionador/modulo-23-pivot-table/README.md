# 📘 Módulo 23 — Pivot Table

---

## 📌 Contexto do Módulo

Vigésimo terceiro módulo da trilha SQL Impressionador. Introduz o operador `PIVOT`, que transforma dados de formato longo (uma linha por combinação categoria/valor) para formato largo (uma coluna por categoria) diretamente em SQL — equivalente ao que uma tabela dinâmica faz no Excel ou Power BI. Cobre a sintaxe básica, adição de agrupamentos por linha, a limitação do `PIVOT` com colunas dinâmicas, e a solução usando SQL dinâmico.

A base de dados utilizada é a **ContosoRetailDW**.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- O que o operador `PIVOT` faz e quando usá-lo
- Estrutura de uma consulta com `PIVOT`: subconsulta base, função de agregação, coluna a ser "pivotada" e lista de valores que viram colunas
- Adição de agrupamentos de linha adicionais ao lado das colunas pivotadas
- Limitação central do `PIVOT`: a lista de colunas precisa ser conhecida e escrita manualmente com antecedência
- Solução da limitação com SQL dinâmico: construção da lista de colunas via `QUOTENAME` + concatenação, e execução via `sp_executesql`

---

## 📂 Estrutura do Módulo

```bash
modulo-23-pivot-table/
│
├── Queries/
│   └── 01_pivot_table.sql
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 O que o PIVOT faz

Transforma valores únicos de uma coluna em novas colunas no resultado, aplicando uma função de agregação para preencher cada célula — por exemplo, transformar um `GROUP BY BrandName` (uma linha por marca) em uma única linha com uma coluna para cada marca, contendo a contagem de produtos.

### 🔹 Estrutura de uma Consulta PIVOT

```sql
SELECT * FROM
(SELECT coluna_valor, coluna_categoria FROM tabela) AS Dados
PIVOT(
    FUNCAO_AGREGACAO(coluna_valor)
    FOR coluna_categoria
    IN ([valor1], [valor2], [valor3], ...)
) AS PivotTable
```

É necessário primeiro isolar, em uma subconsulta, apenas as colunas relevantes (a que vai virar coluna e a que será agregada) — o `PIVOT` não pode ser aplicado diretamente sobre a tabela original com todas as colunas.

### 🔹 Adicionando Grupos de Linha

Colunas adicionais na subconsulta base (que não fazem parte do `PIVOT`) automaticamente se tornam agrupamentos de linha no resultado — por exemplo, adicionar o ano de contratação transforma o resultado em uma linha por ano, com uma coluna por departamento.

### 🔹 Limitação do PIVOT

A cláusula `IN (...)` do `PIVOT` exige que os valores que virarão colunas sejam **conhecidos e escritos manualmente** na consulta. Se a lista de categorias mudar (um novo departamento for criado, por exemplo), a consulta precisa ser editada manualmente — ela não se adapta sozinha aos dados.

### 🔹 Corrigindo a Limitação com SQL Dinâmico

A solução é construir a lista de colunas dinamicamente: uma consulta auxiliar percorre os valores distintos da coluna categórica, concatena-os (com `QUOTENAME` para escapar nomes com espaços/caracteres especiais) em uma variável de texto, monta a consulta `PIVOT` completa como uma string, e a executa com `EXECUTE sp_executesql @SQL`. Assim, a lista de colunas se adapta automaticamente aos dados existentes, sem intervenção manual.

---

## 🧪 Aplicação Prática

Este módulo não trouxe uma lista de exercícios separada — o aprendizado foi consolidado diretamente na progressão dos exemplos do arquivo de aula:

1. Comparação entre o resultado de um `GROUP BY BrandName` tradicional e o mesmo resultado "pivotado" (uma coluna por marca) usando `PIVOT`.
2. Adição de um agrupamento de linha (ano de contratação) à pivot table de funcionários por departamento.
3. Demonstração da limitação do `PIVOT`: adicionar uma nova dimensão (mês) exige reescrever manualmente a lista de colunas de departamento.
4. Construção da solução com SQL dinâmico: geração automática da lista de colunas via `QUOTENAME` + concatenação, montagem da string de consulta e execução via `sp_executesql`.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Transformação de dados de formato longo para formato largo diretamente em SQL
- Construção de tabelas dinâmicas (pivot tables) com agrupamento de linha
- Reconhecimento das limitações do `PIVOT` estático
- Construção de SQL dinâmico para tornar o `PIVOT` adaptável a mudanças nos dados

---

## 🚀 Conclusão

Este módulo encerra a trilha de manipulação avançada de dados dentro do SQL Server, mostrando como reproduzir uma tabela dinâmica diretamente no banco — útil para relatórios que exigem esse formato antes mesmo de chegar a uma ferramenta de BI. Com isso, a trilha **SQL Impressionador** está tecnicamente completa. Restam os módulos de integração (Excel e Power BI), que conectam o que foi aprendido em SQL às ferramentas de análise e visualização.
