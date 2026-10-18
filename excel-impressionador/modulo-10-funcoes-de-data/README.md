# 📘 Módulo 10 — Funções de Data

---

## 📌 Contexto do Módulo

Décimo módulo da trilha Excel Impressionador. Cobre o trabalho com datas e horas no Excel — extração de partes de uma data, análises de crescimento anual e mensal (YoY e MoM), valor acumulado, diferença entre datas com `DATADIF`, cálculo de dias úteis considerando feriados e controle de horas trabalhadas (banco de horas).

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Extração de dia, mês, ano e dia da semana de uma data, e uso de `HOJE` e `AGORA`
- Cálculo de datas futuras a partir de uma quantidade de meses (ex.: fim de contrato)
- Análise de crescimento em relação ao ano anterior (YoY) e ao mês anterior (MoM)
- Análise do valor acumulado dentro do ano
- Cálculo da diferença entre duas datas com `DATADIF`
- Cálculo de dias úteis e de datas de entrega/prazo considerando fins de semana e feriados
- Trabalho com horas no Excel: horas trabalhadas, horas extras e valor do banco de horas

---

## 📂 Estrutura do Módulo

```bash
modulo-10-funcoes-de-data/
│
└── Planilhas/
    ├── Funções_de_Data_-_Pasta_de_Trabalho_1.xlsx
    ├── Funções_de_Data_-_Pasta_de_Trabalho_2.xlsx
    └── Exercícios_Funções_de_Datas.xlsx
```

---

## 🧠 Conceitos Abordados

### 🔹 Introdução às Funções de Data

Funções para extrair partes de uma data (`DIA`, `MÊS`, `ANO`, `DIA.DA.SEMANA`), obter a data e a hora atuais (`HOJE` e `AGORA`) e calcular uma data futura a partir de um número de meses (por exemplo, a data de fim de um contrato). Também é apresentada a diferença entre uma base com a data completa em uma coluna e uma base com dia, mês e ano separados.

### 🔹 Crescimento Anual (YoY) e Mensal (MoM)

**YoY** (*Year over Year*) compara um período com o mesmo período do ano anterior; **MoM** (*Month over Month*) compara com o mês imediatamente anterior. Ambos são calculados como variação percentual sobre o faturamento, usando funções de soma condicional sobre as datas da base.

### 🔹 Análise do Valor Acumulado

Cálculo do faturamento acumulado dentro do ano, mês a mês, e sua comparação com o acumulado do ano anterior — útil para acompanhar se o ano corrente está acima ou abaixo do ritmo do ano passado.

### 🔹 Função DATADIF

Retorna a diferença entre duas datas em anos, meses ou dias, conforme a unidade informada. Aplicada para calcular o tempo de contrato de clientes e, a partir dele, o valor total pago.

### 🔹 Dias Úteis

`DIATRABALHO` retorna a data final após um número de dias úteis a partir de uma data inicial, e `DIATRABALHOTOTAL` retorna a quantidade de dias úteis entre duas datas. Ambas permitem informar uma lista de **feriados** para que sejam desconsiderados, além dos fins de semana.

### 🔹 Trabalhando com Horas no Excel

Cálculo de horas trabalhadas a partir dos horários de entrada, saída para almoço, retorno e saída, apuração de horas extras acima da jornada, soma de horas que ultrapassam 24h (formato de horas acumuladas) e conversão das horas extras em valor financeiro (salário extra).

---

## 🧪 Aplicação Prática (Exercícios)

1. **Introdução e Crescimento (Pasta de Trabalho 1)** — base de vendas com mais de 8 mil registros (produto, quantidade, data, loja, preço, faturamento, cliente e gênero) de 2019 a 2021, usada em três análises: crescimento anual (YoY), crescimento mensal e anual (MoM e YoY) e faturamento acumulado no ano.
2. **DATADIF, Dias Úteis e Banco de Horas (Pasta de Trabalho 2)** — base de 320 clientes com data de início de contrato para calcular o tempo de contrato e o valor total pago; cálculo de data de entrega e de dias úteis; base de 176 projetos com prazo em dias úteis, pendências e atraso, considerando uma tabela de feriados; e uma planilha de banco de horas semanal para apurar horas trabalhadas, horas extras e salário extra.
3. **Exercícios finais** — dois exercícios de fixação: (1) cálculo da data de vencimento e do valor com juros de faturas pagas com atraso, considerando dias úteis e feriados; (2) cálculo dos anos de contrato e do valor total pago por cliente a partir da data de início do contrato.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Manipulação de datas e extração de suas partes para análises por período
- Cálculo de crescimento YoY e MoM e de valores acumulados no ano
- Cálculo de tempo entre datas com `DATADIF`
- Cálculo de prazos e atrasos em dias úteis, considerando uma tabela de feriados
- Apuração de horas trabalhadas e horas extras, incluindo totais acima de 24 horas

---

## 🚀 Conclusão

Este módulo consolidou o uso de datas e horas como base para análises temporais e para controles de prazo, contrato e jornada. As análises de crescimento (YoY e MoM) e de valor acumulado são muito usadas em relatórios gerenciais e preparam o terreno para os próximos módulos da trilha, Previsão e Solver e Dashboards.
