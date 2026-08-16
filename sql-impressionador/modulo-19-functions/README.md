# 📘 Módulo 19 — Functions

---

## 📌 Contexto do Módulo

Décimo nono módulo da trilha SQL Impressionador. Introduz a criação de `FUNCTION`s definidas pelo usuário (User-Defined Functions) em T-SQL — blocos de lógica reutilizável que retornam um valor escalar ou uma tabela, encapsulando cálculos ou consultas que se repetiriam em múltiplos pontos do código.

Os exemplos combinam os bancos `Exercicios` (dos módulos anteriores) e `ContosoRetailDW`.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- O que é uma function e por que criar funções personalizadas
- Sintaxe de criação de uma function escalar (`CREATE FUNCTION ... RETURNS tipo AS BEGIN ... RETURN ... END`)
- Alteração (`CREATE OR ALTER FUNCTION`) e uso de uma function já criada
- Criação de funções com lógica mais complexa (variáveis internas, `IF/ELSE`)
- Funções que retornam uma tabela (`RETURNS TABLE`), parametrizadas por argumento

---

## 📂 Estrutura do Módulo

```bash
modulo-19-functions/
│
├── Queries/
│   └── 01_functions.sql
│
├── Exercicios/
│   ├── 02_exercicios_19.sql
│   ├── 03_resultados_exercicios_19.sql
│   └── Lista_de_Exercicios_19.pdf
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 O que é uma Function

Uma function é um conjunto de comandos que executa uma ação e retorna um valor — assim como as funções nativas do SQL (`DATENAME`, `LEFT`, etc.), mas definida pelo próprio usuário. Serve para evitar repetir lógica complexa em múltiplos pontos do código, encapsulando-a em um objeto reutilizável e chamável por nome.

### 🔹 Criando uma Function Escalar

```sql
CREATE FUNCTION nome(@parametro tipo)
RETURNS tipo_retorno
AS
BEGIN
    RETURN expressão
END
```

A função pode então ser chamada como `[dbo].[nome](argumento)` dentro de um `SELECT`, se comportando como uma coluna calculada reutilizável.

### 🔹 Alterando e Excluindo uma Function

`CREATE OR ALTER FUNCTION` redefine a função existente (ou cria, se não existir) sem precisar de um `DROP` explícito antes — útil para iterar sobre a lógica da função sem quebrar dependências.

### 🔹 Funções com Lógica Complexa

Uma function pode conter variáveis internas (`DECLARE`) e estruturas condicionais (`IF/ELSE`) antes do `RETURN` final — por exemplo, extrair o primeiro nome de um nome completo tratando o caso de não haver espaço no texto (nome de uma palavra só).

### 🔹 Funções que Retornam uma Tabela

`RETURNS TABLE` permite que a function retorne um conjunto de linhas (não apenas um valor único), funcionando como uma consulta parametrizada reutilizável — por exemplo, uma função que recebe um gênero e retorna todos os clientes daquele gênero, ou uma marca e retorna o resumo de produtos por cor daquela marca.

---

## 🧪 Aplicação Prática (Exercícios)

Os exercícios cobrem os dois tipos de function (escalar e de tabela) aplicados a análises de RH e produto na `ContosoRetailDW`:

1. **Cálculo de tempo entre datas (com valor padrão)** — function escalar que recebe data inicial e final, mas assume a data atual do sistema quando a data final não é informada (`NULL`), usada para calcular o tempo de casa de funcionários — incluindo ativos e desligados.
2. **Cálculo de bonificação condicional** — function escalar que aplica um percentual de bônus sobre o salário base, mas retorna zero para funcionários que não estão com status ativo (`Current`), evitando bonificar quem já saiu da empresa.
3. **Function de tabela filtrada por gênero** — recebe o gênero como parâmetro e retorna todos os clientes daquele gênero, reutilizável como se fosse uma view parametrizada.
4. **Function de tabela com resumo agregado por marca** — recebe a marca como parâmetro e retorna a contagem de produtos por cor daquela marca especificamente, combinando `RETURNS TABLE` com `GROUP BY` dentro da definição da função.

As respostas completas estão documentadas em [`Exercicios/03_resultados_exercicios_19.sql`](./Exercicios/03_resultados_exercicios_19.sql).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Criação de lógica reutilizável diretamente no banco de dados
- Diferença entre functions escalares e functions que retornam tabela
- Uso de valores padrão e lógica condicional dentro de uma function
- Parametrização de consultas reutilizáveis via `RETURNS TABLE`

---

## 🚀 Conclusão

Este módulo trouxe a capacidade de encapsular lógica de negócio reutilizável diretamente no SQL Server, reduzindo repetição de código e centralizando regras (como cálculo de bônus ou tempo de casa) em um único lugar de manutenção. O próximo módulo avança para `Procedures`, que vão além das functions ao permitir executar múltiplas instruções e operações de alteração de dados de forma encapsulada e parametrizada.
