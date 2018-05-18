CL SCR

CREATE TABLE CIDADE (
  ID_CIDADE NUMBER(10),
  ID_ESTADO NUMBER(10),
  NOME VARCHAR(50)
);

CREATE TABLE ESTADO (
  ID_ESTADO NUMBER(10),
  NOME VARCHAR2(50)
);

ALTER TABLE CIDADE ADD PRIMARY KEY (ID_CIDADE);
ALTER TABLE ESTADO ADD PRIMARY KEY (ID_ESTADO);
ALTER TABLE CIDADE ADD FOREIGN KEY (ID_ESTADO) REFERENCES ESTADO(ID_ESTADO);

DROP TABLE CIDADE;
DROP TABLE ESTADO;

INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (1, 'ACRE');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (2, 'ALAGOAS');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (3, 'AMAPA');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (4, 'AMAZONAS');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (5, 'BAHIA');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (6, 'CEARA');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (7, 'DISTRITO FEDEREAL');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (8, 'ESPIRITO SANTO');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (9, 'GOIAS');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (10, 'MARANHAO');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (11, 'MATO GROSSO');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (12, 'MATO GROSSO DO SUL');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (13, 'MINAS GERAIS');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (14, 'PARA');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (15, 'PARAIBA');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (16, 'PARANA');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (17, 'PERNAMBUCO');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (18, 'PIAUI');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (19, 'RIO DE JANEIRO');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (20, 'RIO GRANDE DO NORTE');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (21, 'RIO GRANDE DO SUL');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (22, 'RONDONIA');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (23, 'RORAIMA');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (24, 'SANTA CATARINA');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (25, 'SAO PAULO');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (26, 'SERGIPE');
INSERT INTO ESTADO (ID_ESTADO, NOME) VALUES (27, 'TOCANTINS');

INSERT INTO CIDADE (ID_CIDADE, ID_ESTADO, NOME) VALUES (1, 1, 'RIO BRANCO');
INSERT INTO CIDADE (ID_CIDADE, ID_ESTADO, NOME) VALUES (2, 16, 'CURITIBA');
INSERT INTO CIDADE (ID_CIDADE, ID_ESTADO, NOME) VALUES (3, 16, 'PATO BRANCO');
INSERT INTO CIDADE (ID_CIDADE, ID_ESTADO, NOME) VALUES (4, 24, 'FLORIANOPOLIS');

----------- BUSCANDO CIDADE POR ESTADO -----------

SELECT C.NOME
FROM CIDADE C INNER JOIN ESTADO E
ON E.ID_ESTADO = C.ID_ESTADO
WHERE E.NOME = 'SANTA CATARINA';