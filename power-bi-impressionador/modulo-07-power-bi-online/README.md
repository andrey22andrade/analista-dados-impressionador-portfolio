# 📘 Módulo 07 — Power BI Online

---

## 📌 Contexto do Módulo

Sétimo módulo da trilha Power BI Impressionador, com 29 aulas. Sai do Power BI Desktop e leva os relatórios para o Power BI Online (Power BI Serviço): criação da conta, publicação, compartilhamento, exportação, workspaces e aplicativos, atualização dos dados com e sem gateway, segurança em nível de linha (RLS) e uso no celular. O módulo também apresenta os tipos de licença (Free, Pro, Premium, Premium por Usuário e Embedded).

## 🎯 Objetivo

Desenvolver conhecimentos práticos e operacionais relacionados a:

- Entender o ambiente do Power BI Online e publicar relatórios nele e na web
- Diferenciar os tipos de licença do Power BI
- Compartilhar relatórios com colegas e com pessoas de fora da empresa
- Exportar relatórios para Excel, PDF e PowerPoint
- Criar workspaces e aplicativos
- Atualizar relatórios com novos dados, com e sem gateway, e agendar atualizações automáticas
- Diferenciar relatórios e painéis (dashboards) e enviar relatórios por e-mail (assinatura)
- Aplicar segurança em nível de linha (RLS), inclusive dinâmica
- Criar o layout do relatório para celular

---

## 📂 Estrutura do Módulo

```bash
modulo-07-power-bi-online/
│
├── Relatorios/
│   ├── Hashtag_Eletro_-_Power_BI_Online.pbix
│   └── Dashboard_Compras.pbix
│
├── Bases/
│   └── Base_Acessos.xlsx
│
└── Material-de-Apoio/
    ├── Power_BI_Online.pdf
    ├── Tipos_de_Licença_do_Power_BI.pdf
    └── Gateway.pdf
```

> As bases de dados do relatório Hashtag Eletro (vendas, devoluções e cadastros) são as mesmas do [Módulo 01](../modulo-01-importacao-e-tratamento-com-power-query/Bases).

---

## 🧠 Conceitos Abordados

### 🔹 Power BI Online (Serviço)

Visualizar relatórios de qualquer lugar, compartilhar com quem não tem o Power BI instalado, atualizar os dados automaticamente e conceder acesso restrito aos dados. Inclui a criação de uma conta gratuita e o reconhecimento do ambiente.

### 🔹 Publicação

Publicação do relatório do Power BI Desktop no Power BI Online e publicação na web.

### 🔹 Tipos de Licença

- **Free x Pro**: o que cada licença permite, como compartilhar relatórios e participar de workspaces
- **Premium (capacidade)**: capacidade dedicada para grandes volumes de dados e usuários
- **Premium por Usuário**: licença individual com parte dos recursos do Premium
- **Embedded**: relatórios dentro de softwares e portais da empresa, para programadores

### 🔹 Compartilhamento e Exportação

Compartilhamento com colegas e com pessoas de fora da empresa, e exportação para Excel, PDF e PowerPoint.

### 🔹 Workspaces e Aplicativos

Criação de workspaces, criação de aplicativos no Power BI Online, download dos arquivos e ajuste da fonte de dados.

### 🔹 Relatórios x Painéis e Assinaturas

Diferença entre relatórios (reports) e painéis (dashboards), e envio do relatório e do painel por e-mail por meio de assinaturas.

### 🔹 Segurança em Nível de Linha (RLS)

Restrição de acesso aos dados por usuário, de forma que cada pessoa veja apenas as informações da sua área, como o gerente de uma loja que vê só as vendas dela. Inclui a RLS dinâmica, baseada em uma tabela de acessos.

### 🔹 Gateway e Atualização de Dados

- **Gateway**: ferramenta que funciona como ponte entre os dados locais e o Power BI Online, permitindo atualizar os dados pelo serviço e agendar atualizações automáticas
- **Gateway pessoal**: uso individual, na conta e no computador onde foi instalado
- **Gateway Enterprise (modo padrão)**: uso por várias pessoas e por outras ferramentas, como Power Automate e Power Apps
- Agendamento de atualizações automáticas e formas de atualizar sem gateway

### 🔹 Power BI no Celular

Criação do layout do relatório para celular e uso do Power BI no aplicativo móvel.

---

## 🧪 Aplicação Prática (Exercícios)

1. **Relatório Hashtag Eletro (`Hashtag_Eletro_-_Power_BI_Online.pbix`)** — o dashboard completo do módulo 05, com 6 páginas e 31 medidas, acrescido de uma tabela `Acessos` ligada à tabela `dProdutos` pela coluna `Marca`, com filtro nos dois sentidos. É a estrutura usada na segurança em nível de linha dinâmica.
2. **Tabela de acessos (`Base_Acessos.xlsx`)** — lista de gerentes, marcas e e-mails (14 linhas, 10 gerentes e 9 marcas), que define quem pode ver cada marca no relatório.
3. **Dashboard de Compras (`Dashboard_Compras.pbix`)** — relatório de compras com tabela fato `fCompras` e dimensões `dComprador`, `dFornecedor` e `dMateriaPrima`, calendário e 8 medidas: custo original, custo com desconto, saving e saving percentual, atraso médio de entrega, lead time de compra e de despacho e mês selecionado. Tem uma página de dashboard e uma de tooltip.
4. **Material de apoio** — apresentação geral do Power BI Online, tipos de licença e entendendo o gateway.

> Os valores de licença citados no material de apoio são os do período do curso e podem estar desatualizados.

---

## 📚 Aprendizados

Ao final deste módulo foi possível desenvolver conhecimentos em:

- Publicação, compartilhamento e exportação de relatórios no Power BI Online
- Diferenças entre as licenças Free, Pro, Premium, Premium por Usuário e Embedded
- Criação de workspaces e aplicativos
- Atualização de dados com gateway pessoal, gateway Enterprise e sem gateway
- Segurança em nível de linha (RLS), inclusive dinâmica
- Criação de layout para celular

---

## 🚀 Conclusão

Este módulo levou os relatórios do computador para a nuvem: publicados, compartilhados com segurança e atualizados automaticamente, eles passam a servir a equipes inteiras. O próximo passo é o Módulo 08 — Exercícios de Revisão, que consolida o que foi visto na trilha.
