CREATE TABLE Clientes
(
codcli int,
Nome varchar(40),
Endere�o varchar(40),
Cidade varchar(30),
Fone char(9),
idade int,
CONSTRAINT PK_cli PRIMARY KEY(codcli),
);

INSERT INTO Clientes (codcli, Nome, Endere�o, Cidade, Fone, idade)
VALUES
(1,'Claudio','S�o Jorge','SP','999966699',19),
(2,'Claudia','S�o Bento','RJ','922299999',21),
(3,'Claudete','S�o Flavio','Santo Andr�','999944999',23),
(4,'Fernanda','S�o Mateus','SBC','999999999',30),
(5,'Xavasca','S�o Carlos','MAU�','999988899',55);



CREATE TABLE Transportadora
(
Codigo int,
Nome varchar(20),
CONSTRAINT PK_trans PRIMARY KEY(Codigo),
);

INSERT INTO Transportadora(Codigo,nome)
VALUES
(1,'MT'),
(2,'JT'),
(3,'ABC'),
(4,'DT'),
(5,'RT');



CREATE TABLE Pedidos
(
NumPed int,
Cliente int,
Data_Entrega datetime,
Transport int,
CONSTRAINT PK_ped PRIMARY KEY(NumPed),
CONSTRAINT FK_Pclientes FOREIGN KEY(Cliente)
	REFERENCES Clientes(codcli),
CONSTRAINT FK_Ptrans FOREIGN KEY(Transport)
	REFERENCES Transportadora(Codigo)
);

INSERT INTO pedidos (NumPed, Cliente, Data_Entrega, Transport)
VALUES
(1,2,'20230910',4),
(2,3,'20230911',3),
(3,4,'20230912',1),
(4,1,'20230913',5),
(5,1,'20230914',2);


select * from pedidos where Transport=3;

select count (*) from pedidos where Cliente=2;

select max (Data_Entrega) as 'Mais recente' from pedidos;

select count (*) from pedidos where Transport=3;

select count (*) from clientes where cidade='MAU�';

select pedidos.NumPed, pedidos.Data_Entrega, Clientes.Nome
from pedidos inner join clientes
on pedidos.cliente = clientes.codcli;

select pedidos.NumPed, Clientes.nome, Transportadora.nome
from pedidos inner join clientes
on pedidos.cliente = clientes.codcli
inner join transportadora
on Pedidos.Transport = Transportadora.codigo;

select * from clientes where cidade='MAU�' or cidade='MAU�' or cidade='MAU�';

SELECT DISTINCT cidade FROM clientes;

select avg (idade) from clientes;

select * from Clientes where idade < (select avg (idade) from clientes);select count(idade) from Clientes where idade > (select avg (idade) from clientes);