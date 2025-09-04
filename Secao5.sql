/* Operadores lógicos
OR = Basta uma condição ser vedadeira
AND = As duas precisam */

USE PROJETO;

/* Sexo masculino ou mora (OR) no RJ */
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'M' OR ENDERECO LIKE '%RJ';

/* Sexo masculino e (AND) mora no RJ */
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'M' AND ENDERECO LIKE '%RJ';

/* Funções de agregação */

/* COUNT() = Conta registros */
SELECT COUNT(*) AS 'NÚMERO DE CLIENTES' FROM CLIENTE;

/* GROUP BY = Agrupa */
SELECT SEXO, COUNT(*) FROM CLIENTE 
GROUP BY SEXO;


/* Perfomace em operadores lógicos

Quando usamos a condição OR, a variável que concentra a maior parte das observações deve vir primeiro. 
Por exemplo, se em um banco de dados 70% são do sexo feminino e 30% moram no RJ, a condição de sexo deve ser avaliada antes. 
Assim, ao retornar verdadeiro, evita-se checar a segunda condição desnecessariamente. 

Já no caso do AND, a lógica se inverte: como todas as condições precisam ser avaliadas, é mais eficiente colocar primeiro a variável que possui menos registros válidos, 
pois isso restringe o conjunto de dados mais rapidamente. */
