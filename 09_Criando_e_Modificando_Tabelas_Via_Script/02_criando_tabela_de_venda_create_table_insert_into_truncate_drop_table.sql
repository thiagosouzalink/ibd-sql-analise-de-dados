-- Criando Tabela de venda ( create table , insert into , truncatetable e drop table )

USE Teste;

-- CREATE
CREATE TABLE Vendas (
	id int PRIMARY KEY NOT NULL,
	product_id int NOT NULL,
	cliente varchar(50) NULL,
	data_compra date NOT NULL,
	valor_total money
);

SELECT *
FROM Teste.dbo.Vendas;

-- DROP TABLE Teste.dbo.Vendas;


-- INSERT
INSERT INTO Teste.dbo.Vendas (
	id, 
	product_id, 
	cliente, 
	data_compra, 
	valor_total
) 
VALUES (
	1,
	1,
	'Thiago',
	'11/05/2026',
	300
)

SELECT *
FROM Teste.dbo.Vendas

INSERT INTO Teste.dbo.Vendas (id, product_id, cliente, data_compra, valor_total) 
VALUES (2, 5, 'Marcos', '10/05/2026', 300);
INSERT INTO Teste.dbo.Vendas (id, product_id, cliente, data_compra, valor_total) 
VALUES (3, 3, 'Juliano', '01/04/2026', 700);

SELECT *
FROM Teste.dbo.Vendas

TRUNCATE TABLE Teste.dbo.Vendas

SELECT *
FROM Teste.dbo.Vendas