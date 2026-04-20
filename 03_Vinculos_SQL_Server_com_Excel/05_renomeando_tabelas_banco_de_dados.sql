-- Renomeando Tabelas Do Banco De Dados 

-- DimEmployee
EXEC sp_rename 'dbo.DimEmployee', 'Colaboradores';

SELECT *
FROM dbo.Colaboradores;

EXEC sp_rename 'dbo.Colaboradores', 'DimEmployee';

SELECT *
FROM dbo.DimEmployee;