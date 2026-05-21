-- Rank + Sub Query + Tabela Partition BY

SELECT *
FROM 
(
	SELECT
		EmployeeKey,
		ProductKey,
		SUM(SalesAmount)	AS Venda,
		DENSE_RANK() OVER (PARTITION BY ProductKey ORDER BY SUM(SalesAmount) DESC)	AS Ranking
	FROM AdventureWorksDW2019.dbo.FactResellerSales
	GROUP BY EmployeeKey, ProductKey
) SubQuery
WHERE Ranking = 1


SELECT *
FROM 
(
	SELECT
		EmployeeKey,
		ProductKey,
		SUM(SalesAmount)	AS Venda,
		DENSE_RANK() OVER (PARTITION BY ProductKey ORDER BY SUM(SalesAmount))	AS Ranking
	FROM AdventureWorksDW2019.dbo.FactResellerSales
	GROUP BY EmployeeKey, ProductKey
) SubQuery
WHERE Ranking = 1


SELECT
	EmployeeKey,
	ProductKey,
	SUM(SalesAmount)	AS Venda,
	DENSE_RANK() OVER (PARTITION BY ProductKey ORDER BY SUM(SalesAmount) DESC)	AS Ranking
	INTO ##TempoProduto
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY EmployeeKey, ProductKey

SELECT *
FROM ##TempoProduto
WHERE Ranking = 1
