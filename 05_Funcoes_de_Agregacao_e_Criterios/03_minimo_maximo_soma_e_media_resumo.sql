-- Mínimo Máximo soma e média ( Resumo)

SELECT TOP 10 *
FROM AdventureWorksDW2019.dbo.FactResellerSales;


SELECT
	MIN(ExtendedAmount) AS valor_minimo
FROM AdventureWorksDW2019.dbo.FactResellerSales;


SELECT
	MAX(ExtendedAmount) AS valor_maximo
FROM AdventureWorksDW2019.dbo.FactResellerSales;


SELECT
	SUM(ExtendedAmount) AS total_faturamento
FROM AdventureWorksDW2019.dbo.FactResellerSales;


SELECT
	AVG(ExtendedAmount) AS media_faturamento
FROM AdventureWorksDW2019.dbo.FactResellerSales;