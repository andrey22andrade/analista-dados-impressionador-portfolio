# 📘 Módulo 05 — Ferramentas de Dados

---

## 📌 Contexto do Módulo

Quinto módulo da trilha Excel Impressionador. Cobre as principais ferramentas de tratamento e preparação de bases de dados no Excel — Texto para Colunas, Remover Duplicatas, Validação de Dados (padrão e personalizada), Consolidar e Preenchimento Relâmpago, com foco em quando cada ferramenta é a mais adequada.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Separação de dados de uma única coluna em várias colunas com **Texto para Colunas**, incluindo separação por delimitador e por largura fixa
- Remoção de registros duplicados considerando uma ou várias colunas simultaneamente com **Remover Duplicatas**
- Restrição de valores digitados em uma célula com **Validação de Dados**, incluindo regras **personalizadas** baseadas em fórmulas (ex.: impedir duplicados, limitar valores a um saldo disponível)
- Combinação de dados de múltiplas planilhas/abas em uma única visão com **Consolidar**
- Reconhecimento de quando o **Preenchimento Relâmpago** (Flash Fill) é a ferramenta certa para extrair, combinar ou transformar padrões de texto

---

## 📂 Estrutura do Módulo

```bash
modulo-05-ferramentas-de-dados/
│
└── Planilhas/
    ├── Ferramentas_de_Dados_-_Texto_para_Colunas_-_Separado_Decimal.xlsx
    ├── Ferramentas_de_Dados_-_Remover_Duplicadas_-_Diversas_Colunas.xlsx
    ├── Ferramentas_de_Dados_-_Exercícios_-_Validação_de_Dados.xlsx
    ├── Validação_de_Dados_Personalizada.xlsx
    ├── Ferramentas_de_Dados_-_Consolidar.xlsx
    └── Ferramentas_de_Dados_-_Preenchimento_Relâmpago_-_Quando_Usar.xlsx
```

---

## 🧠 Conceitos Abordados

### 🔹 Texto para Colunas

Divide o conteúdo de uma coluna em várias colunas com base em um delimitador (vírgula, ponto e vírgula, etc.) ou em largura fixa — usado, por exemplo, para separar nome/sobrenome/data de nascimento/estado/CPF de uma única coluna de texto, ou para converter números importados com separador decimal incorreto.

### 🔹 Remover Duplicatas

Remove linhas duplicadas de uma base considerando uma única coluna ou a combinação de várias colunas ao mesmo tempo — importante notar que o critério de "duplicado" muda conforme quais colunas são selecionadas na comparação.

### 🔹 Validação de Dados

Restringe o que pode ser digitado em uma célula (lista de valores, intervalo numérico, data, etc.), reduzindo erros de digitação. A **Validação de Dados Personalizada** vai além das opções prontas, usando uma fórmula própria como critério — por exemplo, impedir que um valor lançado ultrapasse um saldo disponível, ou impedir que um nome já cadastrado seja digitado novamente (evitar duplicados).

### 🔹 Consolidar

Combina dados de várias planilhas com estrutura semelhante (mesmas linhas/colunas) em uma única tabela resumo, somando ou agregando os valores automaticamente — útil para juntar relatórios individuais (por vendedor, por filial, etc.) em uma visão consolidada.

### 🔹 Preenchimento Relâmpago — Quando Usar

Explora casos de uso do Flash Fill além do básico: extrair partes específicas de um texto (produto, origem, estoque a partir de um código único), extrair um nome a partir de uma frase mais longa, formatar números grandes com separador de milhar, montar resumos a partir de várias colunas de texto, extrair componentes de um código alfanumérico e converter formatos de data (EUA para Brasil).

---

## 🧪 Aplicação Prática (Exercícios)

1. **Texto para Colunas** — praticado em diferentes cenários: separação de nome completo/data/estado/CPF a partir de uma única coluna, separação de um código de produto (produto + origem + estoque), separação de estado/cidade a partir de um código concatenado, e separação de dados de ativos financeiros (código, abertura, fechamento) com decimal separado por vírgula.
2. **Remover Duplicatas** — aplicado sobre uma base de vendas com mais de 7 mil linhas (produto, data, e-mail, telefone, forma de pagamento, preço), comparando o resultado ao remover duplicatas considerando diferentes combinações de colunas.
3. **Validação de Dados** — praticada com uma lista de nomes, salário, estado e sexo, restringindo os valores aceitos em cada coluna.
4. **Validação de Dados Personalizada** — dois cenários: validar um lançamento de despesa contra um saldo disponível (não permitir ultrapassar o valor restante) e impedir o cadastro de um nome de funcionário já existente na lista (evitar duplicados).
5. **Consolidar** — dados de vendas mensais por produto de 5 vendedores (Bruno, Luiza, Clara, Marcos, Lucas) combinados em uma única tabela consolidada por mês e produto.
6. **Preenchimento Relâmpago — Quando Usar** — seis exemplos práticos: extração de dados de um código de produto, extração de nomes de indicados ao Oscar a partir de frases longas, formatação de números de população com separador de milhar, geração de resumos bibliográficos a partir de título/autor/editora/ano, extração de dia/mês/ano a partir de um código com data, e conversão de datas do formato americano (MM/DD/AAAA) para o formato brasileiro (DD/MM/AAAA).

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Separação e reestruturação de dados importados de forma incorreta com Texto para Colunas
- Identificação e remoção de duplicatas considerando múltiplos critérios
- Criação de regras de validação personalizadas com fórmulas, indo além das opções padrão do Excel
- Consolidação de relatórios de múltiplas fontes em uma única visão
- Reconhecimento de padrões de texto adequados para uso do Preenchimento Relâmpago, e quando essa ferramenta é mais eficiente que fórmulas

---

## 🚀 Conclusão

Este módulo aprofundou o tratamento e preparação de dados no Excel, reunindo ferramentas essenciais para qualquer analista lidar com bases "sujas" ou desestruturadas antes de qualquer análise. Esse preparo é a base para os próximos módulos, que avançam para funções voltadas ao mercado de trabalho e para Tabelas Dinâmicas.
