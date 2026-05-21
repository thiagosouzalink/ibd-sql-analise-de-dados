-- Rank + Left Join SQL Relatório Avançado

SELECT
	LastName,
	EnglishProductName,
	TotalSalesAmount
FROM (
	SELECT
		frs.EmployeeKey,
		de.LastName,
		dp.EnglishProductName,
		SUM(frs.SalesAmount)	AS TotalSalesAmount,
		DENSE_RANK() OVER(PARTITION BY frs.EmployeeKey ORDER BY SUM(frs.SalesAmount) DESC)	AS Ranking
	FROM AdventureWorksDW2019.dbo.FactResellerSales frs
	LEFT JOIN AdventureWorksDW2019.dbo.DimEmployee  de
		ON frs.EmployeeKey = de.EmployeeKey
	LEFT JOIN AdventureWorksDW2019.dbo.DimProduct dp
		ON frs.ProductKey = dp.ProductKey
	GROUP BY
		frs.EmployeeKey,
		de.LastName,
		dp.EnglishProductName
) SubQuery
WHERE Ranking = 1