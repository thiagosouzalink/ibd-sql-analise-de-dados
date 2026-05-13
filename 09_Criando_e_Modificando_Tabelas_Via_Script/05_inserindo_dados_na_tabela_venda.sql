-- Inserindo dados na tabela venda 

USE Teste;

TRUNCATE TABLE Teste.dbo.Vendas

insert into Teste.dbo.Vendas (id,product_id,cliente,data_compra,valor_total)values(0,28,'Luana','2022-07-11',186)
insert into Teste.dbo.Vendas (id,product_id,cliente,data_compra,valor_total)values(1,29,'Marta','2022-05-06',110)
insert into Teste.dbo.Vendas (id,product_id,cliente,data_compra,valor_total)values(2,38,'Luana','2022-08-07',385)
insert into Teste.dbo.Vendas (id,product_id,cliente,data_compra,valor_total)values(3,37,'Frida','2022-04-04',493)
insert into Teste.dbo.Vendas (id,product_id,cliente,data_compra,valor_total)values(4,28,'Daniela','2022-09-30',186)
insert into Teste.dbo.Vendas (id,product_id,cliente,data_compra,valor_total)values(5,18,'Romário','2022-07-20',20)
insert into Teste.dbo.Vendas (id,product_id,cliente,data_compra,valor_total)values(6,24,'Marcelo','2022-05-26',2663)
insert into Teste.dbo.Vendas (id,product_id,cliente,data_compra,valor_total)values(7,44,'Cristiano','2022-07-01',164)
insert into Teste.dbo.Vendas (id,product_id,cliente,data_compra,valor_total)values(8,23,'Everton','2022-09-12',2795)
insert into Teste.dbo.Vendas (id,product_id,cliente,data_compra,valor_total)values(9,6,'Gabriela','2022-07-27',15)
insert into Teste.dbo.Vendas (id,product_id,cliente,data_compra,valor_total)values(10,44,'Luan','2022-02-28',82)

SELECT *
FROM Teste.dbo.Vendas
