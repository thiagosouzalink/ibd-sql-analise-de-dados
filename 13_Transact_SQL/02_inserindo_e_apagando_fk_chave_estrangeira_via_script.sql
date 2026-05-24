-- Inserindo e apagando FK Chave Estrangeira via script

USE Teste

ALTER TABLE Teste.dbo.Vendas
ADD CONSTRAINT FK_produto 
FOREIGN KEY (product_id) REFERENCES Produto (id)

ALTER TABLE Teste.dbo.Produto
ADD CONSTRAINT FK_categoria 
FOREIGN KEY (id_categoria) REFERENCES Categoria (id) 


ALTER TABLE Teste.dbo.Vendas
DROP CONSTRAINT PK_venda

ALTER TABLE Teste.dbo.Vendas
DROP CONSTRAINT FK_produto

ALTER TABLE Teste.dbo.Produto
DROP CONSTRAINT PK_produto, FK_categoria 

ALTER TABLE Teste.dbo.Categoria
DROP CONSTRAINT PK_categoria