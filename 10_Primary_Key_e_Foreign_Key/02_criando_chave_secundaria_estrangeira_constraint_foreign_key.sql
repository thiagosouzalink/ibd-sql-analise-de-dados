-- Criando chave secundária(Estrangeira) CONSTRAINT , FOREIGN KEY

SELECT *
FROM Teste.dbo.Vendas

SELECT *
FROM Teste.dbo.Produto


ALTER TABLE Teste.dbo.Vendas
ADD CONSTRAINT fk_vendas_produto
FOREIGN KEY (product_id) REFERENCES Teste.dbo.Produto (id)


--ALTER TABLE Teste.dbo.Vendas
--DROP CONSTRAINT fk_vendas_produto

