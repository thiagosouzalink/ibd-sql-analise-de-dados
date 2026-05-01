-- importando tabelas do sql server para o Power BI 

SELECT
	ProductKey,
	SalesOrderNumber,
	OrderQuantity,
	UnitPrice,
	ExtendedAmount
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE ExtendedAmount > 5000;