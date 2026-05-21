-- Rank + Left Join SQL Avançado

SELECT
	EmployeeKey,
	ProductKey,
	SUM(SalesAmount)	AS Venda,
	DENSE_RANK() OVER (PARTITION BY ProductKey ORDER BY SUM(SalesAmount) DESC)	AS Ranking
	INTO ##TempoProduto
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY EmployeeKey, ProductKey

SELECT
	frs.EmployeeKey,
	de.LastName,
	dp.EnglishProductName
FROM AdventureWorksDW2019.dbo.FactResellerSales frs
LEFT JOIN AdventureWorksDW2019.dbo.DimEmployee  de
	ON frs.EmployeeKey = de.EmployeeKey
LEFT JOIN AdventureWorksDW2019.dbo.DimProduct dp
	ON frs.ProductKey = dp.ProductKey