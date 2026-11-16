# 📘 Módulo 12 — Exercícios e O que falta aprender agora?

---

## 📌 Contexto do Módulo

Décimo segundo módulo da trilha Python Impressionador, com 8 aulas. Faz um balanço do que ainda falta aprender em Python e reúne exercícios práticos de fundamentos: cálculo de impostos, tratamento de dados em tabela e extração de links de uma resposta de API, além de três projetos resolvidos: analisador de texto, gerador de senhas e gerador de QR Code.

A aula 2 (como vão funcionar os exercícios do módulo) não tem arquivo de apoio.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Conhecer o que ainda falta aprender em Python e como escolher o próximo caminho
- Aplicar funções, dicionários, listas e tuplas na resolução de problemas de negócio
- Montar uma tabela com `pandas` a partir de uma lista de tuplas
- Extrair informações de dicionários aninhados, como uma resposta de API
- Usar as bibliotecas `string`, `collections`, `random` e `qrcode` em pequenos projetos

---

## 📂 Estrutura do Módulo

```bash
modulo-12-exercicios-e-o-que-falta-aprender-agora/
│
├── Notebooks/
│   └── 01_o_que_falta_aprender.ipynb
│
└── Exercicios/
    ├── 02_gabarito_exercicios_fundamentos_python.ipynb
    ├── 03_gabarito_analisador_de_texto.ipynb
    ├── 04_gabarito_gerador_de_senhas.ipynb
    └── 05_gabarito_qr_code.ipynb
```

---

## 🧠 Conceitos Abordados

### 🔹 O que falta aprender

Texto sobre os próximos passos em Python: orientação a objeto (classes e métodos), formas mais avançadas de fazer o que já se sabe (list comprehensions, lambda expressions e estrutura `with`) e o uso de mais módulos. Traz recomendações de caminho conforme o objetivo: dominar Python, ir direto para dados ou automação, ou seguir para desenvolvimento.

### 🔹 Exercícios de Fundamentos de Python

Três exercícios (aulas 3, 4 e 5): cálculo de impostos de uma empresa a partir do faturamento mensal, montagem de uma tabela com `pandas` e de um texto de e-mail a partir de uma lista de tuplas, e extração dos links de download de vídeos em três qualidades a partir de um dicionário aninhado.

### 🔹 Analisador de Texto

Função `analisar_texto`, documentada com docstring, que conta palavras, a frequência de cada palavra e a frequência de cada letra, usando `string.punctuation`, `str.maketrans`, `translate` e `collections.Counter`.

### 🔹 Gerador de Senhas

Função `gerar_senha` que cria uma senha aleatória com tamanho definido pelo usuário, com no mínimo 4 caracteres e ao menos uma letra, um número e um caractere especial, usando `random.choice`, `random.choices` e `random.shuffle`.

### 🔹 QR Code

Uso da biblioteca `qrcode` para gerar um QR Code simples, um QR Code com uma imagem no centro e vários QR Codes de uma só vez, a partir de um dicionário de links.

---

## 🧪 Aplicação Prática (Exercícios)

1. **O que falta aprender (`01_o_que_falta_aprender.ipynb`)** — texto com os próximos passos e as recomendações de caminho, sem código.
2. **Exercícios de fundamentos resolvidos (`02_gabarito_exercicios_fundamentos_python.ipynb`)** — (1) conversão de faturamentos escritos como texto em números e cálculo dos impostos mensais e trimestrais de cada mês, guardados em um dicionário `mês: (faturamento, imposto mensal, imposto trimestral)`; (2) tabela com `pandas` e texto de e-mail para o RH com nome e cargo de cada pessoa; (3) lista de vídeos com URI, nome, duração e links de 540p, 720p e 1080p. Esse exercício usa um arquivo com a resposta da API de um serviço de vídeos que não está no repositório, e as assinaturas dos links nas saídas estão mascaradas.
3. **Analisador de texto (`03_gabarito_analisador_de_texto.ipynb`)** — função `analisar_texto` aplicada a um texto de exemplo, com saída.
4. **Gerador de senhas (`04_gabarito_gerador_de_senhas.ipynb`)** — função `gerar_senha` e entrada do tamanho pelo usuário. O arquivo não traz saída salva, porque a senha muda a cada execução.
5. **QR Code (`05_gabarito_qr_code.ipynb`)** — QR Codes de um link e de vários links, com e sem imagem. O arquivo não traz saídas salvas. A imagem usada no centro e os QR Codes gerados não estão no repositório.

> Os dados, valores e regras dos enunciados são fictícios e servem só de exercício. As alíquotas de impostos citadas no exercício de fundamentos podem estar desatualizadas.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Planejamento dos próximos estudos em Python
- Funções, dicionários e listas aplicados a problemas de negócio
- Tabelas com `pandas` a partir de listas de tuplas
- Extração de dados de dicionários aninhados
- Bibliotecas `string`, `collections`, `random` e `qrcode` em projetos pequenos

---

## 🚀 Conclusão

Este módulo reuniu exercícios e pequenos projetos para consolidar os fundamentos de Python antes de avançar para listas mais avançadas e funções. O próximo módulo da trilha é o **Módulo 13 — List Comprehension**.
