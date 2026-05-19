-- Inserindo nova coluna via design avançado

SELECT *
FROM Teste.dbo.Categoria

EXEC sp_columns Categoria

