# 📘 Módulo 11 — Módulos, Bibliotecas e Introdução à Orientação a Objeto

---

## 📌 Contexto do Módulo

Décimo primeiro módulo da trilha Python Impressionador, com 10 aulas. Introduz a ideia de que tudo no Python é um objeto com métodos prontos, explica o que são módulos e bibliotecas e como importá-los, e usa duas bibliotecas de datas e horas como exemplo: `time` e `datetime`. Mostra como medir o tempo de execução, pausar o código, formatar datas, converter texto em data, fazer contas com datas e trabalhar com fusos horários. Fecha com exercícios e um desafio de cálculo de idade.

Os exemplos usam situações de empresa, como contagem regressiva para um evento, tempo desde a última compra do cliente e horário de funcionamento de escritórios em cidades diferentes.

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Entender o conceito de objeto e a estrutura `variável.método()`
- Importar módulos e bibliotecas (`import`, `import ... as` e `from ... import`)
- Usar a biblioteca `time` para medir tempo de execução, pausar o programa e formatar datas
- Usar a biblioteca `datetime` para criar datas, calcular diferenças com `timedelta` e comparar datas
- Converter datas em texto (`strftime`) e texto em datas (`strptime`)
- Trabalhar com fusos horários usando `timezone` e `ZoneInfo`
- Resolver exercícios de datas, horários e idade

---

## 📂 Estrutura do Módulo

```bash
modulo-11-modulos-bibliotecas-e-introducao-a-orientacao-a-objeto/
│
├── Notebooks/
│   ├── 01_orientacao_a_objeto.ipynb
│   ├── 02_modulos_e_bibliotecas.ipynb
│   ├── 03_biblioteca_time.ipynb
│   ├── 05_biblioteca_datetime.ipynb
│   └── 06_datetime_formatacao_e_fuso_horario.ipynb
│
└── Exercicios/
    ├── 04_gabarito_exercicios_biblioteca_time.ipynb
    ├── 07_gabarito_exercicios_datetime.ipynb
    └── 08_gabarito_desafio_datetime.ipynb
```

---

## 🧠 Conceitos Abordados

### 🔹 Orientação a Objeto

Tudo no Python é um objeto (string, lista, dicionário...) e cada objeto tem métodos próprios. A aula usa a analogia do controle remoto: o controle é o objeto e cada botão é um método. Estrutura `variável.método()`, e a vantagem de importar módulos com objetos e métodos prontos.

### 🔹 Módulos e Bibliotecas

Importância de usar o que já existe pronto. `import biblioteca`, `import biblioteca as nome`, `from biblioteca import *` e `from biblioteca import funcao1, funcao2`, com exemplo de data e hora atual.

### 🔹 Biblioteca time

- Marco zero (EPOCH, 1º de janeiro de 1970) e `time()`
- `ctime()` para a data em texto
- Medição do tempo de execução de um código
- `sleep()` para fazer o programa esperar
- `gmtime()` e `localtime()`, que devolvem uma data estruturada com ano, mês, dia, hora, minuto e segundo
- Montagem de datas no formato brasileiro

### 🔹 Formatação de Data com time

`strftime()` para transformar a data em texto, `locale` para nomes de meses e dias da semana em português e `strptime()` para ler datas escritas como texto.

### 🔹 Biblioteca datetime

`datetime.now()`, `.date()`, `.time()`, atributos como `year`, `month` e `day`, `date.today()` e criação de uma data a partir dos valores com `datetime(ano, mes, dia)`. Contas com `timedelta` (dias e semanas), diferença entre duas datas e comparação de datas com operadores.

### 🔹 Formatação de Data e Fuso Horário no datetime

`strftime()` e `strptime()` no `datetime`, datas sem fuso (naive) e com fuso (aware), `timezone.utc`, `timezone(timedelta(...))`, conversão com `astimezone()`, `ZoneInfo` com nomes como `America/Sao_Paulo` e `available_timezones()`.

---

## 🧪 Aplicação Prática (Exercícios)

1. **Orientação a objeto (`01_orientacao_a_objeto.ipynb`)** — explicação do conceito de objeto e método, sem código.
2. **Módulos e bibliotecas (`02_modulos_e_bibliotecas.ipynb`)** — as formas de importar uma biblioteca, com exemplos usando `time` e saídas.
3. **Biblioteca time (`03_biblioteca_time.ipynb`)** — `time`, `ctime`, medição de tempo de execução, `sleep`, `gmtime` e `localtime`, `strftime` com `locale` e `strptime`, com saídas. Reúne o material das aulas 3 e 4.
4. **Exercícios da biblioteca time (`04_gabarito_exercicios_biblioteca_time.ipynb`)** — contagem regressiva de 10 a 0 com pausa de um segundo, data e hora atuais em português, tempo de execução de um laço de 100 milhões de voltas e padronização de duas listas de datas escritas em formatos diferentes, com saídas.
5. **Biblioteca datetime (`05_biblioteca_datetime.ipynb`)** — data e hora atuais, criação de datas, `timedelta`, diferença e comparação de datas, com saídas. Reúne o material das aulas 6 e 7.
6. **Formatação e fuso horário no datetime (`06_datetime_formatacao_e_fuso_horario.ipynb`)** — `strftime`, `strptime`, datas com fuso, `timezone`, `astimezone` e `ZoneInfo`, com saídas.
7. **Exercícios de datetime (`07_gabarito_exercicios_datetime.ipynb`)** — oferta de desconto para clientes que não compram há mais de 30 dias, data e hora em São Paulo, Nova York e Tóquio e uma função que diz se cada escritório está aberto ou fechado (das 9h às 17h), com saídas.
8. **Desafio de datetime (`08_gabarito_desafio_datetime.ipynb`)** — cálculo da idade a partir de uma data de nascimento digitada em `dd/mm/aaaa`, com o ajuste para quem ainda não fez aniversário no ano, com saída.

> Os resultados de data e hora salvos nos notebooks são de quando eles foram executados e mudam a cada execução. Os tempos de execução dos laços de 100 milhões de voltas dependem do computador. Os dados dos exemplos são fictícios.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Conceito de objeto e métodos
- Importação e uso de módulos e bibliotecas
- Bibliotecas `time` e `datetime` para tempo de execução e datas
- Conversão entre datas e texto, com formatos e idioma
- Cálculos entre datas com `timedelta`
- Fusos horários com `timezone` e `ZoneInfo`

---

## 🚀 Conclusão

Este módulo mostrou como usar bibliotecas prontas para trabalhar com datas e horas, algo presente em quase toda base de dados. O próximo módulo da trilha é o **Módulo 12 — Exercícios e O que falta aprender agora?**.
