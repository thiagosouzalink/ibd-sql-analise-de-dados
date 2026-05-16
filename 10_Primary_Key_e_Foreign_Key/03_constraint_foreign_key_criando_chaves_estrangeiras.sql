-- CONSTRAINT , FOREIGN KEY CRIANDO CHAVES ESTRANGEIRAS 

SELECT *
FROM Teste.dbo.Produto

SELECT *
FROM Teste.dbo.Categoria


ALTER TABLE Teste.dbo.Produto
ADD CONSTRAINT fk_produto_categoria
FOREIGN KEY (id_categoria) REFERENCES Teste.dbo.Categoria (id)

--ALTER TABLE Teste.dbo.Produto
--DROP CONSTRAINT fk_produto_categoria

