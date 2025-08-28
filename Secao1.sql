/* Modelagem básica do banco de dados */

/* A modelagem do banco de dados consiste em 3 fases
1º: Modelagem conceitual: Um rascunho do banco
2º Modelagem lógica: Desenho em um programa de modelagem, como por exemplo brmodelo
3º Modelagem física: Transformar as fases anteriores em scripts 

Definições importantes: 
ENTIDADE = TABELA
CAMPOS = ATRIBUTOS */

/* MODELAGEM CONCEITUAL */
CLIENTE

NOME - CARACTER(30)
CPF - NUMERICO(11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDERECO - CARACTER (100)
SEXO - CARACTER(1)
 
/*-------------------------------------------------------------------------------------------------------------------*/

CREATE DATABASE PROJETOS; /* A função "CREATE DATABASE" é usada para criar o banco de dados */
USE PROJETO; /* A função "USE" é usada para se conectar no banco de dados e deve ser usada sempre que inicializar o mysql ou o SGDB em questão */

/* MODELAGEM FÍSICA */
CREATE TABLE CLIENTE( /* A função "CREATE TABLE" é usada para criar a tabela */
	NOME VARCHAR (30),
	SEXO CHAR (1),
	EMAIL VARCHAR (30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)
);

SHOW TABLES; /* A função "SHOW TABLES" mostra as tabelas no banco de dados */
DESC CLIENTE; /* A função "DESC" é usada para ver a estrutura da tabela */ 

/* Definições importantes: 
A classe "CHAR" deve ser utilizada quando se sabe exatamente o número de caracteres a ser preenchido, dessa forma evita requisições desncessárias, melhorando a perfomace do banco de dados
A classe "VARCHAR" deve ser utilizada quando não sabemos ao certo quantos caracteres vão entrar, exemplo: nome. 
*/