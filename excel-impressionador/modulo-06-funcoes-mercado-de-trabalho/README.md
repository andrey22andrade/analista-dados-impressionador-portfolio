# 📘 Módulo 06 — Funções Mercado de Trabalho

---

## 📌 Contexto do Módulo

Sexto módulo da trilha Excel Impressionador — o mais extenso até aqui, com 79 aulas. Reúne as funções mais cobradas em processos seletivos e usadas no dia a dia de um analista: `SE` (e suas combinações com `E`/`OU`), funções condicionais de contagem/soma/média/máx/mín (`CONT.SES`, `SOMASES`, `MÉDIASES`, `MÁXIMOSES`, `MÍNIMOSES`), toda a família de funções de busca (`PROCV`, `PROCH`, `PROCX`, `SEERRO`, `CORRESP`, `ÍNDICE`, `DESLOC`), além de `INDIRETO` e `SOMARPRODUTO`.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Construção de testes lógicos com `SE`, incluindo `SE` composto/aninhado e classificação em faixas
- Combinação de múltiplos critérios com `E` e `OU`
- Travamento (absoluto e parcial) de referências em fórmulas
- Contagem, soma, média, máximo e mínimo condicionais (`CONT.SES`, `SOMASES`, `MÉDIASES`, `MÁXIMOSES`, `MÍNIMOSES`)
- Uso do asterisco (`*`) como curinga em fórmulas condicionais e de busca
- Busca de valores com `PROCV`, `PROCH` e `PROCX`, incluindo valores aproximados, chaves compostas e retorno de múltiplos valores
- Tratamento de erros de busca com `SEERRO`
- Localização de posições e valores com `CORRESP` e `ÍNDICE`, isoladas e combinadas
- Deslocamento dinâmico de intervalos com `DESLOC`, inclusive como origem de Validação de Dados
- Referência dinâmica a intervalos e planilhas com `INDIRETO`, incluindo uso com Intervalos Nomeados
- Multiplicação e soma de matrizes com `SOMARPRODUTO`

---

## 📂 Estrutura do Módulo

```bash
modulo-06-funcoes-mercado-de-trabalho/
│
└── Planilhas/
    ├── Função_SE_-_Exercício_de_Fixação_2.xlsx
    ├── Função_E_-_Três_Condições.xlsx
    ├── Função_CONT_SES_-_Exercício_Fixação.xlsx
    ├── Função_SOMASES_-_Exercício_Fixação.xlsx
    ├── Trancamento_Parcial_-_Exercício_Prático.xlsx
    ├── MEDIASES.xlsx
    ├── Função_MÁXIMOSES.xlsx
    ├── Função_MÍNIMOSES.xlsx
    ├── Exercício_CONT_SES_SOMASES.xlsx
    ├── Função_PROCV_-_PROCV_retornando_mais_de_um_valor.xlsx
    ├── Uso_do_asterisco_em_formulas.xlsx
    ├── Função_SEERRO_-_Procurar_em_Mais_Colunas.xlsx
    ├── Função_PROCH_-_Exercício_de_Fixação.xlsx
    ├── PROCX_Duplo_e_Triplo.xlsx
    ├── Função_CORRESP_-_Montar_Resumo.xlsx
    ├── ÍNDICE_com_CORRESP_Parte_2.xlsx
    ├── Função_DESLOC_-_Uso_na_Validação_de_Dados.xlsx
    ├── Função_INDIRETO_-_Intervalos_Nomeados_2.xlsx
    ├── SOMARPRODUTO.xlsx
    └── Exercícios_de_Fixação_Final.xlsx
```

> ⚠️ **Observação:** sete dos arquivos enviados (`...DESLOC_e_CORRESP`, `...INDIRETO_e_CONT_SES`, `...PROCV`, `...PROCV_e_SEERRO`, `...SE_PROCV_ÍNDICE_e_CORRESP`, `...SOMASES`, `...Trancamento_Parcial`) são o **mesmo workbook** (abas `Início`, `Trancamento Parcial`, `Base Dólar`, `Despesas`, `Planilha Vendas`, `Resumo Vendas`, `SEERRO`, `SE & PROCV & ÍNDICE e CORRESP`, `Matrículas_Janeiro`, `Matrículas_Fevereiro`, `Relatório Matrículas`, `Ranking com Desempate`), salvo a cada checkpoint das aulas 74 a 80. Recomendo subir para o GitHub apenas a versão mais completa/final, renomeada como `Exercícios_de_Fixação_Final.xlsx` — é o que já refleti na estrutura acima. Da mesma forma, `Função_E_-_Três_Condições.xlsx` e `Função_OU_-_Três_Condições.xlsx` têm conteúdo idêntico (abas `PraticaE`, `PraticaOU`, `ÍNDICE CORRESP`); mantive só a de `E` na lista.

---

## 🧠 Conceitos Abordados

### 🔹 Função SE

`SE` avalia um teste lógico e retorna um valor para "verdadeiro" e outro para "falso". O módulo cobre a introdução, como replicar a fórmula para várias células, **SE composto** (aninhando várias condições em cascata) e classificação de valores em faixas (ex.: definir uma comissão por faixa de faturamento).

### 🔹 Funções E e OU

`E` retorna verdadeiro apenas se **todas** as condições forem atendidas; `OU` retorna verdadeiro se **pelo menos uma** condição for atendida. Praticadas com duas e três condições simultâneas, geralmente combinadas dentro de uma função `SE`.

### 🔹 Travamento (Trancamento) de Referências

Uso do `$` para travar referências de célula de forma absoluta ou parcial (travando só a linha ou só a coluna), essencial para "arrastar" fórmulas sem perder a referência a uma célula fixa (ex.: uma tabela de impostos ou taxas).

### 🔹 Funções Condicionais: CONT.SES, SOMASES, MÉDIASES, MÁXIMOSES e MÍNIMOSES

Versões condicionais das funções de agregação: `CONT.SES` conta, `SOMASES` soma, `MÉDIASES` calcula a média, `MÁXIMOSES`/`MÍNIMOSES` retornam o maior/menor valor — todas considerando um ou mais critérios simultâneos (ex.: soma de vendas de uma equipe em uma região específica).

### 🔹 Uso do Asterisco (`*`) em Fórmulas

O `*` funciona como curinga em `CONT.SES`, `SOMASES` e `PROCV` para buscas parciais de texto (ex.: encontrar qualquer célula que contenha um determinado trecho, sem precisar do texto exato).

### 🔹 Função PROCV

Busca um valor na primeira coluna de uma tabela e retorna um valor correspondente em outra coluna da mesma linha. Cobre desde a introdução até tópicos avançados: preenchimento de bases, uso em Tabelas, busca em outras planilhas, uso combinado com `SE` e `SEERRO`, busca por valores aproximados, uso de **chave composta** (concatenação de colunas para criar uma chave única de busca) e retorno de **mais de um valor** correspondente.

### 🔹 Função SEERRO

Substitui o erro retornado por uma fórmula (como um `PROCV` sem correspondência) por um valor alternativo definido pelo usuário. Praticada em buscas com uma, duas, três e mais colunas de critério.

### 🔹 Função PROCH

Equivalente ao `PROCV`, mas busca na primeira **linha** de uma tabela e retorna um valor de outra linha da mesma coluna — usada em bases organizadas horizontalmente. O módulo também cobre as **limitações do PROCV e do PROCH** (busca sempre da esquerda para a direita/cima para baixo, exige coluna/linha de busca na borda da tabela).

### 🔹 Função PROCX

Sucessora do `PROCV`/`PROCH`, mais flexível: busca em qualquer direção, lida melhor com valores não encontrados, permite controlar a ordem de pesquisa e valores aproximados, e suporta busca **dupla e tripla** (múltiplos critérios de busca combinados).

### 🔹 Funções CORRESP e ÍNDICE

`CORRESP` retorna a **posição** de um valor dentro de um intervalo; `ÍNDICE` retorna o **valor** de uma célula a partir de sua posição (linha/coluna) em um intervalo. Combinadas (`ÍNDICE` + `CORRESP`), formam uma alternativa mais flexível ao `PROCV` — inclusive para montar resumos e buscas em qualquer direção.

### 🔹 Função DESLOC

Retorna uma referência a um intervalo deslocado a partir de um ponto inicial, por um número de linhas e colunas definido — usado para retornar um valor específico, somar colunas dinamicamente, retornar uma coluna inteira, e até como origem dinâmica de uma **Validação de Dados**.

### 🔹 Função INDIRETO

Converte um texto em uma referência de célula/intervalo válida, permitindo montar referências dinâmicas — usada para consultar várias planilhas a partir de um nome digitado, combinada com `CONT.SES` e outras funções, e para referenciar **Intervalos Nomeados** dinamicamente.

### 🔹 Função SOMARPRODUTO

Multiplica os elementos correspondentes de duas ou mais matrizes e soma os resultados — usada, por exemplo, para calcular o valor total de vendas (quantidade × preço) por marca, sem precisar de uma coluna auxiliar.

---

## 🧪 Aplicação Prática (Exercícios)

- **SE, E e OU** — testes lógicos aplicados a bases de vendas (imposto por país de destino, bônus por faturamento) e de funcionários (elegibilidade a bônus por tipo de contrato, estado e data de entrada).
- **Trancamento Parcial** — aplicado a uma tabela de impostos (ICMS, PIS, COFINS, IR) usada como referência fixa em fórmulas replicadas.
- **CONT.SES / SOMASES / MÉDIASES / MÁXIMOSES / MÍNIMOSES** — praticadas em bases de funcionários (cargo, área, salário), vendedores (idade, estado, valor de venda) e produtos (marca, divisão, origem, estoque), incluindo uma bateria de exercícios em 4 partes combinando `CONT.SES` e `SOMASES`.
- **PROCV, SEERRO e PROCH** — praticados em bases de funcionários e de produtos com códigos alternativos (`COD1` a `COD4`), incluindo tratamento de nomes não encontrados com `SEERRO`.
- **PROCX** — praticado com uma base de vendas por região/vendedor/divisão, retornando o número da nota fiscal a partir de diferentes combinações de critérios (busca dupla e tripla).
- **CORRESP e ÍNDICE** — praticados em bases de produtos com código e estoque, e em uma base de vendas por ano e marca, para localizar posições e montar resumos automáticos.
- **DESLOC** — aplicado a uma base de vendas mensais por equipe (jan–jun/2020), retornando valores, somatórios e colunas de forma dinâmica a partir do mês escolhido.
- **INDIRETO** — praticado com uma base de produção de veículos por ano, referenciando colunas dinamicamente a partir de um nome digitado.
- **SOMARPRODUTO** — aplicado a uma base de itens (marca, quantidade, preço unitário), calculando o valor total por marca sem coluna auxiliar.
- **Exercícios de Fixação Final (aulas 74–80)** — bateria final combinando praticamente todas as funções do módulo (Trancamento Parcial, PROCV, SOMASES, DESLOC, CORRESP, SEERRO, SE, ÍNDICE e INDIRETO) sobre bases de despesas em dólar, vendas, matrículas de alunos e ranking com critério de desempate.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Construção de testes lógicos simples e compostos, combinando `SE`, `E` e `OU`
- Uso correto do travamento de referências para reaproveitar fórmulas sem erros
- Aplicação de funções condicionais de agregação com um ou mais critérios
- Domínio completo da família de funções de busca do Excel (`PROCV`, `PROCH`, `PROCX`, `CORRESP`+`ÍNDICE`, `DESLOC`), sabendo quando cada uma é a mais adequada
- Tratamento de erros de busca com `SEERRO`
- Criação de referências dinâmicas com `INDIRETO`
- Cálculo de somas ponderadas sem colunas auxiliares com `SOMARPRODUTO`

---

## 🚀 Conclusão

Este foi o módulo mais denso da trilha até aqui, reunindo praticamente todas as funções de busca e condicionais cobradas em vagas de Analista de Dados Júnior. O domínio de `PROCV`/`PROCX`/`ÍNDICE`+`CORRESP` e das funções `.SES` é a base para os próximos módulos, que avançam para Tabela Dinâmica e Gráficos — onde essas mesmas bases de dados serão resumidas e visualizadas.
