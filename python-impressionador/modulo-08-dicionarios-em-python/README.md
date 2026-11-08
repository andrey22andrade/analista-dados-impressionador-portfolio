# 📘 Módulo 08 — Dicionários em Python

---

## 📌 Contexto do Módulo

Oitavo módulo da trilha Python Impressionador, com 10 aulas. Apresenta os dicionários do Python, estrutura que guarda valores associados a chaves: como consultar itens pela chave, verificar se um item existe, adicionar, modificar e remover itens, percorrer um dicionário com `for` e usar os métodos `items`, `keys` e `values`. Mostra também como transformar listas em dicionários com `zip` e inclui três materiais de exercícios e uma cartilha com os métodos de dicionário.

Os exemplos usam situações de vendas, como produtos mais vendidos, preços, reajustes e comparação de vendas entre períodos.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Criar dicionários e consultar valores pelas chaves
- Verificar se uma chave existe com `if` e com `get`
- Adicionar, modificar e remover itens de um dicionário
- Percorrer dicionários com `for` e `items()`
- Usar `keys()` e `values()` e converter o resultado em lista
- Transformar listas em dicionários com `zip`
- Resolver exercícios de consulta, cadastro, reajuste e análise de vendas com dicionários

---

## 📂 Estrutura do Módulo

```bash
modulo-08-dicionarios-em-python/
│
├── Notebooks/
│   ├── 01_dicionarios_em_python.ipynb
│   ├── 02_pegar_item_e_verificar_item.ipynb
│   ├── 03_adicionar_modificar_e_remover_itens.ipynb
│   ├── 04_for_em_dicionario.ipynb
│   ├── 06_metodos_uteis_items_keys_e_values.ipynb
│   ├── 07_zip_e_transformando_listas_em_dicionarios.ipynb
│   └── 10_cartilha_de_metodos_de_dicionarios.ipynb
│
└── Exercicios/
    ├── 05_gabarito_exercicios_dicionario_1.ipynb
    ├── 08_gabarito_exercicios_dicionario_2.ipynb
    └── 09_gabarito_exercicios_extras_dicionarios.ipynb
```

---

## 🧠 Conceitos Abordados

### 🔹 Dicionários em Python

Estrutura `dicionario = {chave: valor, ...}`. Pontos citados na aula: não se deve usar o dicionário para pegar itens em uma determinada ordem, os valores podem ser de tipos diferentes, as chaves são obrigatoriamente únicas e o dicionário é mais intuitivo de trabalhar.

### 🔹 Pegar Item e Verificar Item

Não confiar na ordem do dicionário e usar as chaves. Duas formas de pegar um valor: `dicionario[chave]` e `.get(chave)`. Uma chave que não existe gera `KeyError` com colchetes, e o `get` devolve `None`, usado para verificar se o item está no dicionário.

### 🔹 Adicionar, Modificar e Remover Itens

`dicionario[chave] = valor` e `update` para adicionar, o mesmo comando para modificar um valor existente, e `del`, `pop` e `clear` para remover. A aula também lembra que o `del` funciona para listas.

### 🔹 For em Dicionário

`for chave in dicionario` para percorrer as chaves, com exemplo de total de notebooks vendidos usando `in` nas chaves.

### 🔹 Métodos Úteis: items, keys e values

`items()` para percorrer chave e valor ao mesmo tempo, com unpacking. `keys()` e `values()` devolvem visões do dicionário que acompanham as modificações, e `list()` as transforma em listas. Exemplo de ordenação das chaves em ordem alfabética.

### 🔹 Zip e Transformando Listas em Dicionários

`dict.fromkeys` para criar um dicionário com valor padrão, `dict(lista_de_tuplas)` e `zip` para juntar duas listas em um dicionário.

### 🔹 Cartilha de Métodos de Dicionário

Material de consulta com 11 métodos: `clear`, `copy`, `fromkeys`, `get`, `items`, `keys`, `pop`, `popitem`, `setdefault`, `update` e `values`.

---

## 🧪 Aplicação Prática (Exercícios)

1. **Dicionários em Python (`01_dicionarios_em_python.ipynb`)** — dicionários de produtos mais vendidos por categoria e de vendas de tecnologia, com a consulta pelas chaves.
2. **Pegar item e verificar item (`02_pegar_item_e_verificar_item.ipynb`)** — consulta com colchetes e com `get`, o `KeyError` de uma chave inexistente (mostrado na aula) e a verificação de um item que não existe.
3. **Adicionar, modificar e remover itens (`03_adicionar_modificar_e_remover_itens.ipynb`)** — exemplos com os lucros de dois trimestres, usando `update`, atribuição, `clear` e `del` em lista.
4. **For em dicionário (`04_for_em_dicionario.ipynb`)** — `for` sobre as chaves e o total de notebooks vendidos.
5. **Exercícios de dicionário 1 (`05_gabarito_exercicios_dicionario_1.ipynb`)** — identificação de estados com nível de CO2 acima do limite, a partir da média de cinco sensores, e extração do link de download de um vídeo em um dicionário vindo de uma API. Os links do exemplo estão com o trecho de assinatura mascarado.
6. **Métodos úteis: items, keys e values (`06_metodos_uteis_items_keys_e_values.ipynb`)** — produtos com mais de 5.000 unidades de duas formas (chaves e `items`), `keys` e `values` e ordenação das chaves. Material usado nas aulas 6 e 7.
7. **Zip e listas em dicionários (`07_zip_e_transformando_listas_em_dicionarios.ipynb`)** — dicionário de vendas montado com `zip` e `dict`, e a consulta de uma venda por lista e por dicionário.
8. **Exercícios de dicionário 2 (`08_gabarito_exercicios_dicionario_2.ipynb`)** — transformação de listas de produtos e vendas de 2019 e 2020 em um dicionário `produto: (vendas2019, vendas2020)`.
9. **Exercícios extras (`09_gabarito_exercicios_extras_dicionarios.ipynb`)** — seis exercícios resolvidos: consulta de preços, cadastro de produto inexistente, reajuste de preços por faixa, total do reajuste, crescimento percentual de 2023 sobre 2022 por mês e simulação de empate nos meses com queda. O arquivo não traz saídas salvas.
10. **Cartilha de métodos (`10_cartilha_de_metodos_de_dicionarios.ipynb`)** — uso de cada um dos 11 métodos, com saídas.

> Os dados, valores e regras dos enunciados são fictícios e servem só de exercício.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Criação e consulta de dicionários pelas chaves
- Verificação de itens e tratamento de chaves inexistentes
- Adição, modificação e remoção de itens
- Percorrer dicionários com `for`, `items`, `keys` e `values`
- Conversão entre listas e dicionários com `zip` e `dict`
- Análise de vendas e reajustes de preços com dicionários

---

## 🚀 Conclusão

Este módulo mostrou como organizar dados em pares chave e valor, formato muito comum em dados vindos de APIs e bancos de dados, e como transformar listas em dicionários e o contrário. O próximo módulo da trilha é o **Módulo 09 — Iterables**.
