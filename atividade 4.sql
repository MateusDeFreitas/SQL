-- Criar a tabela clientes:

CREATE TABLE gravadora
(
codgrav int,
Nome_grav varchar(40),
CONSTRAINT PK_cds PRIMARY KEY(codgrav),
);

INSERT INTO gravadora(codgrav, nome_grav)
VALUES
(1,'megacds'),
(2,'supercds'),
(3,'ultracds'),
(4,'hypercds'),
(5,'mastercds');

CREATE TABLE cds
(
Codigo int,
Nome varchar(40),
Gravadora int,
Data_Compra datetime,
Valor_pago Numeric(10,2),
Local_Compra varchar(20),
Album int,
CONSTRAINT PK_ccds PRIMARY KEY(Codigo),
CONSTRAINT FK_gravadora FOREIGN KEY(gravadora)
	REFERENCES gravadora(codgrav)
);

INSERT INTO cds(Codigo,Nome,Gravadora,Data_Compra,Valor_pago,Local_Compra,Album)
VALUES
(1,'vingadores',1,'20230910',200,'sto amaro',1),
(2,'os incriveis',1,'20230210',300,'saraiva',0),
(3,'sobrenatural',2,'20230310',250,'saraiva',1),
(4,'anabelle',3,'20230110',400,'apura',0),
(5,'invocação do mal',2,'20230110',500,'americanas',1),
(6,'cru',3,'20230310',450,'santos',0),
(7,'todo mundo em panico',3,'20230510',100,'sto amaro',0),
(8,'jerusalém',4,'20230910',150,'submarino',0),
(9,'moisés',5,'20230710',175,'santos',1),
(10,'one piece',4,'20230810',50,'americanas',0);




select * from cds;

select nome, Data_Compra from cds;

select sum (Valor_pago) as 'total pago' from cds;

select count (Codigo) from cds;

select * from cds where Local_Compra = 'submarino';

select * from cds where Album = 1;

select max (valor_pago) as 'maior' from cds;

SELECT * FROM cds WHERE NOME LIKE 'R%';

select avg (valor_pago) as 'média de preço' from cds;

select count (codigo) from cds where Local_Compra = 'americanas';

UPDATE cds
SET valor_pago = valor_pago * 1.1

select count (codigo) from cds where Local_Compra = 'americanas' or Local_Compra = 'saraiva' or Local_Compra = 'submarino';

select * from cds where codigo > 20 and codigo <= 30;

select * from cds where valor_pago > 25;

select min (valor_pago) as 'menor' from cds;

SELECT DISTINCT Local_Compra FROM cds;

select COUNT (valor_pago) from cds where Valor_pago > (select avg(valor_pago) from cds);

select * from cds where Data_Compra = (select max(Data_Compra) from cds);

select COUNT (valor_pago) from cds where Valor_pago < (select avg(valor_pago) from cds);