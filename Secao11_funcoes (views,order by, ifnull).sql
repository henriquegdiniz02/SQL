/* Seção 11 - FUNÇÕES */

/* IFNULL() -  */

SELECT C.NOME, 
	IFNULL(C.EMAIL, "EMAIL NÃO PREENCHIDO"), 
	E.ESTADO, 
	T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
	ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_CLIENTE
	
/* View 

Funciona como um ponteiro, ou seja, é um meio de salvar queries, no fim salva como uma tabela

Para localizar as views salvas: Fica salva como uma tabela em SHOW TABLES;
*/

CREATE VIEW V_RELATORIO AS /* COLOCAR O V_ PRA INDICAR QUE É UMA VIEW */
SELECT  C.NOME, 
		C.SEXO, 
		C.EMAIL, 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;

SELECT * FROM RELATORIO;

/* ORDER BY 

É a única forma de ordenar um banco de dados 

É possível ordenar por mais de uma coluna 

ASC - MENOR PRO MAIOR E PADRÃO
DESC - MAIOR PRO MENOR */
