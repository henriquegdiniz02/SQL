/* Seção 2 */

/* Inserir observações no tabela - INSERT INTO TABELA... */

/* FORMA 01 - OMITINDO AS COLUNAS */

INSERT INTO CLIENTE VALUES('JOAO','M','JOAO@GMAIL.COM',988638273,'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('CELIA','F','CELIA@GMAIL.COM',541521456,'25078869','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('JORGE','M',NULL,885755896,'58748895','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

/* FORMA 02 - COLOCANDO AS COLUNAS */

INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('LILIAN','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','947785696',887774856);

/* FORMA 03 - INSERT COMPACTO - SOMENTE MYSQL */

INSERT INTO CLIENTE VALUES('ANA','F','ANA@GLOBO.COM',85548962,'548556985','PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
                          ('CARLA','F','CARLA@TERATI.COM.BR',7745828,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');
						  

/* Definições importantes: 
Existem range máximo de int, assim variáveis como CPF, CNPJ é bom usar CHAR 

O uso da linguagem SQL se aplica em três dimensões: Seleção, Projeção e Junção */

/* Projeção: comando SELECT: usado para buscar dados em uma tabela, bem como criar dados */

SELECT now() as DATA_ATUAL; 

SELECT NOME, SEXO, EMAIL FROM CLIENTE;

/* 'ALIAS': Comando AS, funciona como um "como", útil pra renomear momentaneamente colunas */
SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;

/* O uso de '*' pra buscar todas as colunas de dados afeta a performace do banco, não sendo aconselhavel o usa */

/* Seleção: comando WHERE */
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'F';

/* Filtro de 'contém': Comando 'like' que é usado no lugar da igualdade - Afeta da performace
O comando like é usado em conjunto com o '%' que significa qualquer coisa */
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO like '%RJ'; /* Qualquer coisa terminada em RJ */

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO like '%centro%'; /* Qualquer coisa com 'centro' ao meio */











