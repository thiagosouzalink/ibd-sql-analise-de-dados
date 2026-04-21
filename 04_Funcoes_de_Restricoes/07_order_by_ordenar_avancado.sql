-- Order By - ordenar avançado

SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
ORDER BY FirstName;


SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
ORDER BY FirstName DESC;


SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
ORDER BY FirstName, LastName;


SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
ORDER BY EmployeeKey;

SELECT
	EmployeeKey,
	FirstName,
	LastName,
	MiddleName
FROM AdventureWorksDW2019.dbo.DimEmployee
ORDER BY 2, 4 DESC;