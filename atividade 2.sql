-- Criar a tabela EMPREGADOS:

CREATE TABLE Empregados
(
  MATR CHAR(6),
  NOME VARCHAR(12),
  SOBRENOME VARCHAR(15),
  DEPT CHAR(12),
  FONE VARCHAR(14),
  DATA_ADM DATETIME,
  CARGO CHAR(20),
  SEXO CHAR(1),
  IDADE INT,
  SALARIO NUMERIC(10,2),
  COMISSAO NUMERIC(10,2),
  CONSTRAINT PK_EMP PRIMARY KEY(MATR)
);

-- Inserir dados na tabela Empregados:

INSERT INTO Empregados (MATR, NOME, SOBRENOME, DEPT, FONE, DATA_ADM, CARGO, SEXO, IDADE, SALARIO, COMISSAO)
VALUES
(1, 'Gabriel', 'Xavier','TI', '11940028922', '20220714', 'PROGRAMADOR','M', 22, 9200, 30),
(2, 'Mateus', 'Freitas', 'TI', '119486498922', '20210813', 'MANUTENÇÃO','M', 28, 9200, 30),
(3, 'Ruan', 'Silva', 'Limpeza', '11957327722', '20230409', 'DIP', 'M', 32, 1200, 10),
(4, 'Larissa', 'Albuquerque', 'VENDAS', '11940028922', '20220714', 'VENDEDORA', 'F', 21, 3200, 10),
(5, 'Julia','Santos','MARKETING','11917022023','20231012','AGENTEdeMARKETING','F', 22, 6700, 10),
(6, 'Uribe', 'Santana', 'VENDAS', '11947778511', '20100710', 'Vendedor', 'M', 43, 5200, 13),
(7, 'Kaua', 'Silva', 'Limpeza', '11930077773', '20230312', 'DIP', 'M', 33, 2100, 9),
(8, 'Patrick', 'Hugo', 'TI', '11991962985', '20210611', 'PROGRAMADOR', 'M', 27, 5200, 10),
(9, 'Juliano', 'Rocha', 'COZINHA', '11987232922', '20221111', 'Cozinheiro', 'M', 30, 4200, 14),
(10, 'Bianca', 'Lopes', 'Técnico', '11976439922', '20190511', 'SEGURANÇA', 'F', 29, 2300, 12);

-- Selecionar o sobrenome, primeiro nome, departamento, data de admissão e salário de todos os empregados que ganham mais que R$ 5000:

SELECT NOME, SOBRENOME, DEPT, DATA_ADM, SALARIO FROM Empregados WHERE SALARIO > 5000;

-- Qual a média de salários dos funcionários?

SELECT AVG(SALARIO) AS 'Média dos salários' FROM Empregados;

-- Quantos funcionários pertencem ao departamento de TI?

SELECT COUNT(DEPT) AS 'Funcionários de TI' FROM Empregados WHERE DEPT = 'TI';

-- Quantos funcionários têm o cargo igual a PROGRAMADOR?

SELECT COUNT(CARGO) AS 'Programadores' FROM Empregados WHERE CARGO = 'PROGRAMADOR';

-- Qual o somatório dos salários?

SELECT SUM(SALARIO) AS 'Total de salários' FROM Empregados;

-- Qual o valor do maior salário?

SELECT MAX(SALARIO) AS 'Maior salário' FROM Empregados;

-- Qual o valor do menor salário?

SELECT MIN(SALARIO) AS 'Menor salário' FROM Empregados;

-- Atribuir um aumento de 5% aos funcionários do departamento de TI:

UPDATE Empregados
SET SALARIO = SALARIO * 1.05
WHERE DEPT = 'TI';

-- Selecionar os cargos distintos:

SELECT DISTINCT CARGO FROM Empregados;

-- Selecionar os funcionários com idade entre 30 e 40 anos (inclusive):

SELECT * FROM Empregados WHERE IDADE BETWEEN 30 AND 40;

-- Qual a média de idades?

SELECT AVG(IDADE) AS 'Média de idade' FROM Empregados;

-- Selecionar todos os funcionários com idade entre 20 e 30 anos (inclusive) do departamento de TI:

SELECT * FROM Empregados WHERE IDADE BETWEEN 20 AND 30 AND DEPT = 'TI';

-- Selecionar todos os funcionários cujo nome começa com a letra 'J':

SELECT * FROM Empregados WHERE NOME LIKE 'J%';

-- Selecionar todos os funcionários dos departamentos de TI, Vendas e Marketing:

SELECT * FROM Empregados WHERE DEPT IN ('TI', 'VENDAS', 'MARKETING');

-- Excluir todos os registros da tabela (use com cuidado):

DELETE FROM Empregados;

drop table empregados;
