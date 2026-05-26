-- Conversão de data avançado - Cast e Convert

USE AdventureWorksDW2019

SELECT 
	SalesOrderNumber,
	CustomerKey,
	SalesAmount,
	OrderDate,
	CAST(OrderDate AS date)				AS StandardData,
	CONVERT(varchar, OrderDate, 103)	AS BrazilData
FROM dbo.FactInternetSales

SELECT
	GETDATE()							AS CurrentDateHour,
	CAST(GETDATE() AS date)				AS CurrentDate,
	CONVERT(varchar, GETDATE(), 103)	AS BrazilCurrentDate