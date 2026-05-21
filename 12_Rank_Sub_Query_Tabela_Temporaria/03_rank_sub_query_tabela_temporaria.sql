-- Rank + Sub Query + Tabela Temporária

SELECT *
FROM (
	SELECT 
		EmployeeKey,
		SUM(SalesAmount)	AS TotalVenda,
		DENSE_RANK() OVER (ORDER BY SUM(SalesAmount) DESC)	AS Ranking
	FROM AdventureWorksDW2019.dbo.FactResellerSales
	GROUP BY EmployeeKey
) SubQuery
WHERE Ranking IN (1, 2, 3, 4, 5)

SELECT *
FROM (
	SELECT 
		EmployeeKey,
		SUM(SalesAmount)	AS TotalVenda,
		DENSE_RANK() OVER (ORDER BY SUM(SalesAmount))	AS Ranking
	FROM AdventureWorksDW2019.dbo.FactResellerSales
	GROUP BY EmployeeKey
) SubQuery
WHERE Ranking IN (1, 2, 3, 4, 5)


SELECT 
	EmployeeKey,
	SUM(SalesAmount)	AS TotalVenda,
	DENSE_RANK() OVER (ORDER BY SUM(SalesAmount) DESC)	AS Ranking
	INTO ##TempAula
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY EmployeeKey

SELECT *
FROM ##TempAula
WHERE Ranking BETWEEN 1 AND 5