# 📘 Módulo 03 — Funções Básicas

---

## 📌 Contexto do Módulo

Terceiro módulo da trilha Excel Impressionador. Cobre as funções e ferramentas de cálculo fundamentais do Excel — desde operadores aritméticos e sequências numéricas até funções de agregação (`SOMA`, `MÉDIA`, `MÁXIMO`, `MÍNIMO`, `SUBTOTAL`), contagem de valores, truncamento, e ferramentas de produtividade como AutoSoma, Ferramenta Subtotal, Excluir Vazias e Auditoria de Fórmulas.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Criação de sequências numéricas e uso de operadores aritméticos (soma, subtração, multiplicação, divisão)
- Funções de agregação: `SOMA`, `MULT`, `MÉDIA`, `ARRED`, `MÁXIMO`, `MÍNIMO`, `MAIOR`, `MENOR`
- Truncamento de valores numéricos
- Contagem de valores preenchidos e numéricos com `CONT.VALORES` e `CONT.NÚM`
- Totalização de dados filtrados com a função `SUBTOTAL`
- Ferramentas de produtividade: AutoSoma, Ferramenta Subtotal (Dados) e Excluir Vazias
- Opções de Cálculo do Excel e Auditoria de Fórmulas para rastrear dependências

---

## 📂 Estrutura do Módulo

```bash
modulo-03-funcoes-basicas/
│
└── Planilhas/
    ├── Funções_Básicas_-_AutoSoma.xlsx
    ├── Funções_Básicas_-_Função_SUBTOTAL.xlsx
    └── Funções_Básicas_-_Exercícios_Funções_Básicas.xlsx
```

---

## 🧠 Conceitos Abordados

### 🔹 Sequências e Operadores Aritméticos

Criação de sequências numéricas automáticas (alça de preenchimento) e uso dos operadores básicos de soma, subtração, multiplicação e divisão diretamente em fórmulas.

### 🔹 Funções de Agregação

`SOMA` e `MULT` somam e multiplicam intervalos de valores; `MÉDIA` calcula a média aritmética; `ARRED` arredonda um número para a quantidade de casas decimais especificada; `MÁXIMO` e `MÍNIMO` retornam o maior e o menor valor de um intervalo; `MAIOR` e `MENOR` retornam o k-ésimo maior/menor valor, permitindo, por exemplo, encontrar o 2º ou 3º maior valor de uma lista.

### 🔹 Truncamento

Remove as casas decimais de um número sem arredondá-lo (diferente do `ARRED`, que arredonda para cima ou para baixo conforme o valor).

### 🔹 Contagem de Valores

`CONT.VALORES` conta todas as células não vazias de um intervalo (texto ou número); `CONT.NÚM` conta apenas as células que contêm números.

### 🔹 Função SUBTOTAL

Realiza cálculos (soma, média, contagem, etc.) considerando apenas as linhas visíveis de um intervalo — ideal para bases com filtros aplicados, já que ignora linhas ocultas/filtradas, ao contrário de `SOMA`.

### 🔹 AutoSoma e Ferramenta Subtotal

O **AutoSoma** insere rapidamente fórmulas de soma (ou outras agregações) via botão da faixa de opções ou atalho. A **Ferramenta Subtotal** (guia Dados) cria automaticamente subtotais agrupados por categoria em uma base ordenada, inserindo linhas de resumo por grupo.

### 🔹 Excluir Vazias

Remove ou seleciona automaticamente as células vazias de um intervalo, útil para limpar bases de dados antes de aplicar fórmulas ou análises.

### 🔹 Opções de Cálculo e Auditoria de Fórmulas

As **Opções de Cálculo** controlam se o Excel recalcula fórmulas automaticamente ou apenas manualmente (útil em planilhas muito grandes e pesadas). A **Auditoria de Fórmulas** permite rastrear visualmente as células precedentes e dependentes de uma fórmula, facilitando a identificação de erros.

---

## 🧪 Aplicação Prática (Exercícios)

1. **AutoSoma, Ferramenta Subtotal e Excluir Vazias** — praticados sobre uma base de vendas mensais por vendedor (jan–jun/2020), incluindo uma versão com vendedores agrupados por região (para a Ferramenta Subtotal) e outra com linhas vazias propositalmente inseridas (para o exercício de Excluir Vazias).
2. **Função SUBTOTAL** — aplicada sobre uma base de vendas com quase 10 mil linhas (data, produto, forma de pagamento, quantidade, preço e total), somando valores considerando apenas os registros visíveis após a aplicação de filtros.
3. **Exercícios de Fixação (Partes 1 a 5)** — bateria de exercícios cobrindo Operações Matemáticas, `SOMA`, `MÉDIA`, `ARRED`, `MÍNIMO`, `MÁXIMO` e demais funções do módulo, aplicados sobre uma base de mais de 4 mil pedidos (produto, vendedor, data, valores), com abas de resumo por vendedor e por produto para consolidar os resultados.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Uso das principais funções de agregação e estatística básica do Excel
- Diferença entre arredondamento (`ARRED`) e truncamento de valores
- Contagem de valores preenchidos e numéricos em uma base de dados
- Totalização de dados filtrados com `SUBTOTAL`, evitando o erro comum de somar linhas ocultas com `SOMA`
- Uso de ferramentas de produtividade (AutoSoma, Ferramenta Subtotal, Excluir Vazias) para acelerar tarefas recorrentes
- Controle das Opções de Cálculo e uso da Auditoria de Fórmulas para rastrear e validar fórmulas complexas

---

## 🚀 Conclusão

Este módulo consolidou a base de cálculo do Excel, com destaque para a diferença entre `SOMA` e `SUBTOTAL` em bases filtradas — um erro comum entre iniciantes. As funções e ferramentas aprendidas aqui serão a base para os próximos módulos, que avançam para Classificação e Filtros, Ferramentas de Dados e funções mais avançadas do mercado de trabalho.
