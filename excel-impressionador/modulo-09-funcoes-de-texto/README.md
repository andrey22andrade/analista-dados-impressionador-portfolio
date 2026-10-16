# 📘 Módulo 09 — Funções de Texto

---

## 📌 Contexto do Módulo

Nono e último módulo da trilha Excel Impressionador. Cobre as funções de manipulação de texto do Excel — extração, localização, concatenação, limpeza e conversão de textos e valores — aplicadas ao tratamento de bases com códigos, nomes, e-mails e datas, além de dois desafios práticos e uma bateria final de exercícios.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Extração de partes de um texto com `ESQUERDA`, `DIREITA` e `EXT.TEXTO`
- Contagem de caracteres com `NÚM.CARACT` e localização de posições com `LOCALIZAR` e `PROCURAR`
- Junção de textos com `CONCATENAR` e `CONCAT`
- Padronização de maiúsculas/minúsculas com `MAIÚSCULA`, `MINÚSCULA` e `PRI.MAIÚSCULA`
- Limpeza de espaços desnecessários com `ARRUMAR` e troca de trechos com `SUBSTITUIR`
- Conversão de valores para texto formatado com a função `TEXTO` (dia da semana, nome do mês, telefone, datas)
- Combinação de várias funções de texto para decompor códigos e e-mails em partes úteis
- Comparação entre fórmulas de texto, Preenchimento Relâmpago e Texto para Colunas

---

## 📂 Estrutura do Módulo

```bash
modulo-09-funcoes-de-texto/
│
└── Planilhas/
    ├── Funções_de_Texto.xlsx
    └── Exercícios_Funções_de_Texto.xlsx
```

---

## 🧠 Conceitos Abordados

### 🔹 Extração e Contagem de Texto

`ESQUERDA` e `DIREITA` retornam os caracteres do início ou do fim de um texto; `EXT.TEXTO` retorna um trecho a partir de uma posição e tamanho definidos; `NÚM.CARACT` retorna o tamanho total do texto — base para qualquer extração dinâmica.

### 🔹 Localização de Posições

`LOCALIZAR` e `PROCURAR` retornam a posição de um texto dentro de outro; a diferença é que `PROCURAR` diferencia maiúsculas de minúsculas e `LOCALIZAR` não. Combinadas com `ESQUERDA`/`DIREITA`/`EXT.TEXTO`, permitem separar textos de tamanho variável (ex.: usando a posição de um separador como `_` ou `@`).

### 🔹 Concatenação

`CONCATENAR` junta textos de uma célula por vez; `CONCAT` aceita intervalos de células de uma só vez, simplificando a junção de várias colunas.

### 🔹 Padronização e Limpeza de Texto

`MAIÚSCULA`, `MINÚSCULA` e `PRI.MAIÚSCULA` padronizam a capitalização; `ARRUMAR` remove espaços desnecessários (no início, no fim e duplicados entre palavras); `SUBSTITUIR` troca um trecho de texto por outro — todas essenciais para limpar bases importadas.

### 🔹 Função TEXTO

Converte um valor em texto no formato especificado — por exemplo, transformar uma data no dia da semana ou no nome do mês, ou aplicar máscara de telefone a um número (`"(##) #####-####"`).

### 🔹 Combinando Funções (Aplicação Prática e Desafios)

Uso conjunto de várias funções de texto para decompor informações embutidas em um código — como separar Código, Marca e Fábrica a partir de um texto único com `_` como separador, extrair o servidor de um e-mail a partir do `@`, ou identificar vendedor, produto, classe e filial a partir de um código de venda.

### 🔹 Fórmulas de Texto x Preenchimento Relâmpago x Texto para Colunas

Comparação entre as três abordagens para resolver o mesmo problema de separação de textos: fórmulas (mais flexíveis e dinâmicas), Preenchimento Relâmpago (rápido, mas estático) e Texto para Colunas (rápido para delimitadores fixos, mas também estático).

---

## 🧪 Aplicação Prática (Exercícios)

1. **Exemplos e Aplicação Prática** — demonstração de cada função sobre textos de exemplo (nome completo, produtos com espaços desnecessários, datas e telefones) e uma aplicação em uma base de vendas, extraindo vendedor, produto, classe e filial a partir do código da venda.
2. **Desafio 1** — separar `Código_Marca_Fábrica` em três colunas usando fórmulas de texto, com colunas auxiliares para descobrir a posição do separador `_`.
3. **Desafio 2** — extrair o servidor de e-mail (ex.: `hashtagtreinamentos`, `globo`, `hotmail`, `yahoo`) a partir de uma lista de endereços de e-mail.
4. **Exercícios finais** — dois exercícios de fixação: separar *Primeiro Nome* e *Último Nome* a partir de uma lista de quase 2 mil nomes completos, e separar *Produto* e *Cor* a partir de uma lista de produtos.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Extração, localização e concatenação de textos com fórmulas
- Padronização e limpeza de dados textuais importados
- Conversão de valores em texto formatado com a função `TEXTO`
- Combinação de múltiplas funções de texto para decompor informações embutidas em códigos
- Escolha da melhor abordagem (fórmulas, Preenchimento Relâmpago ou Texto para Colunas) conforme o problema de tratamento de dados

---

## 🚀 Conclusão

Este módulo fechou a trilha Excel Impressionador com as funções de tratamento de texto, essenciais para preparar bases "sujas" antes de qualquer análise. Junto com Tabela Dinâmica, Gráficos e as Funções Mercado de Trabalho, completa o conjunto de ferramentas do Excel para um Analista de Dados Júnior — o próximo passo do portfólio é a trilha de Power BI.
