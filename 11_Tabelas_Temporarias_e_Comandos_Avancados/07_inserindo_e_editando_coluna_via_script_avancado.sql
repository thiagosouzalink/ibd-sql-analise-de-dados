-- Inserindo e editando coluna via Script Avançado 

USE Teste

SELECT *
FROM Teste.dbo.Categoria

ALTER TABLE Teste.dbo.Categoria
ADD subcategoria varchar(50)

ALTER TABLE Teste.dbo.Categoria
DROP COLUMN subcategoria

ALTER TABLE Teste.dbo.Categoria
ADD subcategoria int

ALTER TABLE Teste.dbo.Categoria
ALTER COLUMN subcategoria varchar(50)

EXEC sp_columns Categoria

ALTER TABLE Teste.dbo.Categoria
DROP COLUMN subcategoria