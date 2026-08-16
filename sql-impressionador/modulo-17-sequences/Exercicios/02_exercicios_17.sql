/*0. Crie o Banco de Dados AlugaFacil, onde serão criadas as sequences e tabelas dos exercícios.*/ 



/*1. Vamos criar Sequences que serão utilizadas nas tabelas: Carro, Cliente e Locacoes. 
Essas sequences serão chamadas de: cliente_seq, carro_seq e locaçoes_seq. 
Todas essas sequences devem começar pelo número 1, incrementar de 1 em 1 e não terem 
valor máximo.*/



/*2. Utilize as sequences nas 3 tabelas: Carro, Cliente e Locacoes. Você deve excluir as tabelas 
existentes e recriá-las. Lembre-se que não é necessário utilizar a constraint IDENTITY nas 
colunas de chave primária uma vez que nelas serão usadas as Sequences. 

Tabela 1: Cliente - id_cliente - nome_cliente - cnh - cartao
A tabela Cliente possui 4 colunas.  
A coluna id_cliente deve ser a chave primária da tabela. 
As colunas nome_cliente, cnh e cartao não podem aceitar valores nulos, ou seja, para todo 
cliente estes campos devem necessariamente ser preenchidos. 
Por fim, a coluna cnh não pode aceitar valores duplicados.*/



/*Tabela 2: Carro - id_carro - placa - modelo - tipo 
A tabela Carro possui 3 colunas. 
A coluna id_carro deve ser a chave primária da tabela. 
As colunas modelo, tipo e placa não podem aceitar valores nulos. 
Os tipos de carros cadastrados devem ser: Hatch, Sedan, SUV. 
Por fim, a coluna placa não pode aceitar valores duplicados.*/



/*Tabela 3: Locacoes - id_locacao - data_locacao - data_devolucao - id_carro - id_cliente 
A tabela Locacoes possui 5 colunas. 
A coluna id_locacao deve ser a chave primária da tabela. 
Nenhuma das demais colunas devem aceitar valores nulos. 
As colunas id_carro e id_cliente são chaves estrangeiras que permitirão a relação da tabela 
Locacoes com as tabelas Carro e Cliente.*/ 





/*3. Exclua as sequences criadas.*/

