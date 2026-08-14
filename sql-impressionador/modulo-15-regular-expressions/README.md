# 📘 Módulo 15 — Regular Expressions

---

## 📌 Contexto do Módulo

Décimo quinto módulo da trilha SQL Impressionador. SQL Server não tem suporte nativo a expressões regulares completas (regex), mas oferece um recurso equivalente e poderoso: o `LIKE` com padrões avançados de caracteres, combinado com o conceito de `COLLATION` para controlar a sensibilidade a maiúsculas/minúsculas e acentuação. O módulo cobre os três níveis de configuração do `COLLATION` e um conjunto extenso de padrões de `LIKE` para filtros de texto sofisticados.

---

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- O que é `COLLATION` e os três níveis em que pode ser definido (SQL Server, banco de dados, coluna/tabela)
- Diferença entre `CI` (Case Insensitive) e `CS` (Case Sensitive), e `AS` (Accent Sensitive)
- Como consultar e alterar o `COLLATION` em cada nível
- `LIKE` sensível a maiúsculas/minúsculas (dependente do `COLLATION` da coluna)
- Padrões de caractere no `LIKE`: intervalos (`[a-z]`, `[0-9]`), conjuntos (`[MEK]`), curinga de um caractere (`_`), negação (`[^...]`)
- Combinação de padrões para validar formato (ex: quantidade de caracteres, estrutura letra+número)
- Identificação de caracteres especiais em um texto
- Aplicação de padrões `LIKE` também sobre colunas numéricas (formatadas como texto)

---

## 📂 Estrutura do Módulo

```bash
modulo-15-regular-expressions/
│
├── Queries/
│   └── 01_collation_e_like_patterns.sql
│
└── README.md
```

---

## 🧠 Conceitos Abordados

### 🔹 COLLATION — O que é e por que importa

Define se comparações de texto diferenciam maiúsculas de minúsculas (`CI`/`CS`) e se são sensíveis a acentuação (`AS`). O padrão do SQL Server costuma ser `Latin1_General_CI_AS` — ou seja, não diferencia caixa, mas diferencia acento.

### 🔹 COLLATION em 3 Níveis

1. **SQL Server**: definido na instalação (`SELECT SERVERPROPERTY('collation')` para consultar).
2. **Banco de Dados**: herda do SQL Server por padrão, mas pode ser definido na criação (`CREATE DATABASE ... COLLATE ...`) ou alterado depois (`ALTER DATABASE ... COLLATE ...`).
3. **Coluna/Tabela**: herda do banco por padrão, mas pode ser sobrescrito por coluna (`coluna VARCHAR(100) COLLATE ...`), permitindo, por exemplo, uma única coluna case-sensitive em uma tabela cujo restante não é.

### 🔹 LIKE Case-Sensitive

Com uma coluna configurada com `COLLATE ..._CS_AS`, o `LIKE` passa a diferenciar maiúsculas de minúsculas — um `LIKE 'mar%'` deixa de encontrar "Marcela" se a coluna for case-sensitive, exigindo o padrão exato de caixa ou o uso de intervalos (`[M-m]`) para cobrir ambos os casos.

### 🔹 Padrões de Caractere no LIKE

- **Intervalo** `[a-z]`, `[0-9]`: qualquer caractere dentro do intervalo.
- **Conjunto** `[MEK]`: qualquer um dos caracteres listados.
- **Curinga de um caractere** `_`: exatamente um caractere qualquer (diferente do `%`, que cobre qualquer quantidade).
- **Negação** `[^...]`: qualquer caractere que **não** esteja no conjunto/intervalo indicado.

Esses padrões podem ser combinados na mesma expressão para validar estrutura (quantidade de caracteres, posição de letras vs. números) ou identificar caracteres fora do esperado (ex: símbolos especiais).

### 🔹 LIKE em Colunas Numéricas

O padrão `LIKE` também pode ser aplicado a colunas numéricas (o SQL Server converte implicitamente para texto), permitindo, por exemplo, filtrar números com uma quantidade específica de dígitos na parte inteira ou decimal.

---

## 🧪 Aplicação Prática

Este módulo não trouxe uma lista de exercícios separada — o aprendizado foi consolidado diretamente nos exemplos práticos do arquivo de aula, que incluem:

- Configuração de tabelas com `COLLATE` case-sensitive para demonstrar a diferença de comportamento do `LIKE`.
- Filtros por letra inicial com case sensitivity (`[m][a][r]%` vs. `[M][a][r]%` vs. `[M-m][A-a]%`).
- Validação de tamanho de texto (`[A-z]` para 1 caractere, `[A-z][A-z]` para 2).
- Validação de estrutura mista letra+número (`[A-z][0-9]`).
- Filtros combinando maiúscula/minúscula com curinga (`[Mm]_[Rr]%`).
- Negação para excluir letras iniciais específicas (`[^Ll]%`).
- Identificação de caracteres especiais fora do intervalo alfanumérico (`%[^A-z0-9]%`).
- Filtros de precisão decimal em colunas numéricas (`[0-9][0-9].[0][0]`, `[5]__.[7][0-9]`).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Controle de sensibilidade a maiúsculas/minúsculas e acentuação via `COLLATION`
- Construção de padrões de texto avançados com `LIKE` (intervalos, conjuntos, curingas, negação)
- Validação de formato e estrutura de dados de texto e número
- Identificação de caracteres inesperados ou inválidos em uma coluna

---

## 🚀 Conclusão

Este módulo estendeu a capacidade de filtro de texto muito além do `LIKE '%texto%'` básico, oferecendo uma alternativa robusta a expressões regulares dentro do próprio SQL Server — essencial para validação e limpeza de dados (ex: identificar registros com formato inválido). O próximo módulo avança para `Constraints`, regras de integridade que garantem a qualidade dos dados diretamente na estrutura das tabelas.
