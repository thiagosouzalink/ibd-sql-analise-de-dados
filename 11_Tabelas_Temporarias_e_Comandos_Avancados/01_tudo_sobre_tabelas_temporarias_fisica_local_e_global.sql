-- Tudo sobre tabelas temporárias (Física , Local e Global )

-- Física
SELECT *
INTO tb_tempteste
FROM Teste.dbo.Categoria


SELECT *
FROM Teste.dbo.tb_tempteste


DROP TABLE Teste.dbo.tb_tempteste

-- Tabela temporária Local
SELECT *
INTO #tb_temp
FROM Teste.dbo.Categoria


-- Tabela temporária Global
SELECT *
INTO ##temp
FROM Teste.dbo.Categoria
