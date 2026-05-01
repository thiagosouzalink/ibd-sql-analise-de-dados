-- GROUP BY - Agrupando dados da consulta

SELECT
	SalesOrderNumber
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY
	SalesOrderNumber;

SELECT
	Title AS funcao
FROM AdventureWorksDW2019.dbo.DimEmployee
GROUP BY
	Title;