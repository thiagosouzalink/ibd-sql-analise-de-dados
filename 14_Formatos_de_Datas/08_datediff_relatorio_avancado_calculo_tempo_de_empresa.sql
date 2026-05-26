-- DATEDIFF Relatório Avançado - Calculo Tempo de Empresa

USE AdventureWorksDW2019

SELECT 
	EmployeeKey,
	FirstName,
	HireDate,
	EndDate
FROM dbo.DimEmployee
WHERE EndDate IS NOT NULL

SELECT 
	EmployeeKey,
	FirstName,
	HireDate,
	EndDate,
	DATEDIFF(YEAR, HireDate, EndDate) AS CompanyTime
FROM dbo.DimEmployee
WHERE EndDate IS NOT NULL
ORDER BY 5

SELECT 
	EmployeeKey,
	FirstName,
	HireDate,
	DATEDIFF(YEAR, HireDate, GETDATE())		AS CompanyTimeYear,
	DATEDIFF(MONTH, HireDate, GETDATE())	AS CompanyTimeMonth,
	DATEDIFF(DAY, HireDate, GETDATE())		AS CompanyTimeDay
FROM dbo.DimEmployee
WHERE EndDate IS NULL
ORDER BY 4