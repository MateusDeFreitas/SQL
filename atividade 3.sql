-- Criar a tabela clientes:
CREATE TABLE clientes
(
Codcli int,
Nome varchar(40),
Ender varchar(40),
Bairro varchar(40),
Cidade varchar(40),
Idade int,
CONSTRAINT PK_CLI PRIMARY KEY(Codcli)
);

INSERT INTO clientes(Codcli, Nome, Ender, Bairro, Cidade,Idade)
VALUES
(1,'Mateus','Rua dos Sonhadores','Bairro dos romanticos','Cidade de Deus',18),
(2,'Gabriel','Rua dos Esquecidos','Bairro dos psicos','Cidade de Deus',19),
(3,'Victor','Rua dos Amantes','Bairro dos loucos','Cidade de Deus',20),
(4,'Amanda','Rua dos Desesperados','Bairro dos nerds','Cidade de Deus',21),
(5,'Cecilia','Rua dos Cancelados','Bairro dos mortos','Cidade de Deus',22);

-- ------------------------------------------------------------------------------------
-- Criar a tabela produtos:
CREATE TABLE produtos
(
Codprod int,
Descrição varchar(20),
Preco numeric(9,2),
CONSTRAINT PK_PRD PRIMARY KEY(Codprod)
);

INSERT INTO produtos(Codprod,Descrição,Preco)
VALUES
(1,'bananada',20),
(2,'goiabada',30),
(3,'laranjada',25),
(4,'mangada',35),
(5,'limonada',50);

-- ------------------------------------------------------------------------------------
-- Criar a tabela pedidos:
CREATE TABLE pedidos
(
Codped int,
Codcli int,
Data datetime,
CONSTRAINT PK_PED PRIMARY KEY(Codped),
CONSTRAINT FK_PED FOREIGN KEY(Codcli)
	REFERENCES clientes(Codcli)
);

INSERT INTO pedidos(Codped,Codcli,Data)
VALUES
(1,1,'20220714'),
(2,1,'20220714'),
(3,2,'20230617'),
(4,4,'20230615'),
(5,3,'20230918');

-- ------------------------------------------------------------------------------------
-- Criar a tabela itens_pedidos:
CREATE TABLE itens_pedidos
(
Codped int,
Codprod int,
Qtde int,
CONSTRAINT PK_ITN PRIMARY KEY(Codped,Codprod)
);

INSERT INTO itens_pedidos(Codped,Codprod,Qtde)
VALUES
(1,1,60),
(2,3,50),
(3,1,39),
(4,4,27),
(5,2,68);
-- ------------------------------------------------------------------------------------

--b)Inserir 5registros

--c)Selecionar todos os produtos com preço entre 10 e 70.

SELECT * FROM produtos WHERE Preco BETWEEN 10 AND 70;


--d)Qual a média de idade dos clientes

SELECT AVG(idade) AS 'média de idades' FROM clientes;


--e)Qual a média de preços dos produtos

SELECT AVG (preco) AS 'média de preco' FROM produtos;


--f)Quantos pedidos temos no cadastro?

SELECT COUNT(Codped) AS 'Quantos pedidos temos' FROM pedidos;



--g)Selecionar todos os clientes que moram em Santo André, SBC, SCS ou Mauá.

SELECT * FROM clientes WHERE cidade = 'Santo André' or cidade = 'SBC' or cidade = 'SCS' or cidade = 'Mauá'
