-- Inserindo nova tabela espelho (Cópia de tabela)

SELECT *
INTO Teste.dbo.CategoriaAula
FROM Teste.dbo.Categoria

SELECT *
FROM Teste.dbo.CategoriaAula

DROP TABLE Teste.dbo.CategoriaAula


SELECT *
INTO Teste.dbo.Categoria_id
FROM Teste.dbo.Categoria
WHERE id IN (0, 1, 2, 3)

SELECT *
FROM Teste.dbo.Categoria_id

DROP TABLE Teste.dbo.Categoria_id