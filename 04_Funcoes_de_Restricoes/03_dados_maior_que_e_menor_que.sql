-- Dados Maior que e Menor que (Funções Matematicas)

SELECT
	SalesOrderNumber,
	OrderQuantity,
	UnitPrice,
	SalesAmount
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE OrderQuantity >= 10
ORDER BY 2;


SELECT
	SalesOrderNumber,
	OrderQuantity,
	UnitPrice,
	SalesAmount
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE OrderQuantity < 30
ORDER BY 2;


SELECT
	SalesOrderNumber,
	OrderQuantity,
	UnitPrice,
	SalesAmount
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE SalesAmount >= 10000
ORDER BY 4;


SELECT
	SalesOrderNumber,
	OrderQuantity,
	UnitPrice,
	SalesAmount
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE SalesAmount < 1000
ORDER BY 4;