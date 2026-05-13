-- Criando tabela de categoria ( create table , insert into , truncatetable e drop table )

USE Teste;

CREATE TABLE Categoria (
	id int PRIMARY KEY,
	nome varchar(50)
)

SELECT *
FROM Teste.dbo.Categoria


insert into  [dbo].[Categoria] (Id,nome) values(0,'Moda e Acessórios')
insert into  [dbo].[Categoria] (Id,nome) values(1,'Cosméticos e Perfumaria')
insert into  [dbo].[Categoria] (Id,nome) values(2,'Eletrodomésticos')
insert into  [dbo].[Categoria] (Id,nome) values(3,'Livros')
insert into  [dbo].[Categoria] (Id,nome) values(4,'Celulares')
insert into  [dbo].[Categoria] (Id,nome) values(5,'Informática')
insert into  [dbo].[Categoria] (Id,nome) values(6,'Casa e Decoração')
insert into  [dbo].[Categoria] (Id,nome) values(7,'Eletrônicos')
insert into  [dbo].[Categoria] (Id,nome) values(8,'Esporte e Lazer')
insert into  [dbo].[Categoria] (Id,nome) values(9,'Brinquedos e Games')

SELECT * FROM Teste.dbo.Categoria

