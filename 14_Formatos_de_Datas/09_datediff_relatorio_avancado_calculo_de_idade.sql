-- DATEDIFF Relatório Avançado - Calculo De Idade

USE AdventureWorksDW2019

SELECT 
	EmployeeKey,
	FirstName,
	BirthDate,
	DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age
FROM dbo.DimEmployee
ORDER BY 4

SELECT 