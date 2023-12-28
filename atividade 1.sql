CREATE TABLE Produtos
(codprod int,
 descri��o VARCHAR(20),
 preco numeric(9,2),
 Qtde int,
 cor VARCHAR(20),
 CONSTRAINT PK_PROD PRIMARY KEY(Codprod)
 );




   -- Inserir 10 registros

  INSERT INTO Produtos VALUES
  (1,'banana',1.50,50,'amarela'),
  (2,'abacaxi',5.00,25,'amarela'),
  (3,'morango',7.50,150,'vermelha'),
  (4,'uva',5.50,50,'roxa'),
  (5,'ameixa',4.50,70,'roxa'),
  (6,'acerola',1.50,500,'vermelha'),
  (7,'jabuticaba',1.75,650,'roxa'),
  (8,'goiaba',6.50,250,'amarela'),
  (9,'ma�a',5.00,350,'vermelha'),
  (10,'manga',10.5,80,'vermelha');
  



  -- Selecionar todos os registros

  SELECT * FROM Produtos




  -- Quantos produtos temos no cadastro?

  SELECT COUNT(Qtde) AS 'n� de produtos' FROM Produtos





  -- Selecionar os produtos com pre�o entre 10 e 50 reais

   SELECT preco FROM Produtos WHERE preco >= 10 AND preco <=50;





   -- Qual o valor do produto mais caro? 

   SELECT MAX(preco) AS 'Mais Caro' FROM Produtos




   -- Qual o valor do produto mais barato?

   SELECT MIN(preco) AS 'Mais barato' FROM Produtos





   -- Qual a m�dia de pre�os?

   SELECT AVG(preco) AS 'M�dia dos pre�os' FROM Produtos





   -- Quantos produtos vermelhos temos no cadastro?

   SELECT cor FROM Produtos WHERE cor='vermelha'





   -- Atualizar o pre�o dos produtos com pre�o abaixo de 10.00 acrescentando 15%

    UPDATE Produtos
	SET preco = preco * 1.15
	WHERE preco < 10





   -- Atualizar o pre�o dos produtos com pre�o acima de 500.00 com um desconto de 5%

    UPDATE Produtos
	SET preco = preco * 0.95
	WHERE preco > 500


   -- Excluir todos os produtos com qtde abaixo de 5

	DELETE FROM Produtos
	WHERE Qtde <= 5


   -- Listar  as cores sem duplicidade

   SELECT DISTINCT cor FROM Produtos
   ORDER BY cor


   -- Selecionar todos os produtos de cor Azul, vermelho, branco e preto

	SELECT cor FROM Produtos WHERE cor IN('Azul', 'vermelha', 'branca', 'preta')




   -- Qual o somat�rio das quantidades?

   SELECT SUM(Qtde) AS 'Quantidade' FROM Produtos



   -- Listar todos os produtos que tem descri��o iniciado em �A�
  
  SELECT descri��o FROM Produtos WHERE descri��o LIKE 'a%'