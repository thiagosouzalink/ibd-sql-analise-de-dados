-- Função de Restrição WHERE entre valores

SELECT
	SalesOrderNumber,
	OrderQuantity,
	UnitPrice,
	SalesAmount
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE OrderQuantity BETWEEN 5 AND 10
ORDER BY OrderQuantity;


SELECT
	SalesOrderNumber,
	OrderQuantity,
	UnitPrice,
	SalesAmount
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE SalesAmount BETWEEN 5000 AND 10000
	  AND OrderQuantity BETWEEN 5 AND 15
ORDER BY SalesAmount;


SELECT
	SalesOrderNumber,
	OrderQuantity,
	UnitPrice,
	SalesAmount
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE SalesAmount BETWEEN 5000 AND 10000
	  AND OrderQuantity > 10
ORDER BY SalesAmount;