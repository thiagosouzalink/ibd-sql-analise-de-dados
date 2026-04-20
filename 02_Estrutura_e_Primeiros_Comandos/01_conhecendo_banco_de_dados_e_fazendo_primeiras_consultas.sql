-- Conhecendo Banco de Dados e Fazendo Primeira consulta ( Select )

SELECT *
FROM dbo.DimEmployee;

SELECT TOP(10) *
FROM dbo.DimEmployee;


SELECT TOP(10)
	EmployeeKey,
	FirstName,
	LastName
FROM dbo.DimEmployee;
