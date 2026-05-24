-- Inserindo PK Chave Primaria via script

USE Teste

ALTER TABLE Teste.dbo.Vendas
ADD CONSTRAINT PK_venda PRIMARY KEY (id)

ALTER TABLE Teste.dbo.Produto
ADD CONSTRAINT PK_produto PRIMARY KEY (id)

ALTER TABLE Teste.dbo.Categoria
ADD CONSTRAINT PK_categoria PRIMARY KEY (id)

