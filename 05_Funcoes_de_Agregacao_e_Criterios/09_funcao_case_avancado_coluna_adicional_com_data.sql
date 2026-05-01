-- Função Case Avançado coluna condicional Com data

SELECT
	SalesOrderNumber,
	OrderDate,
	YEAR(OrderDate) AS Ano,
	MONTH(OrderDate) AS Mes,
	DAY(OrderDate) AS Dia
FROM AdventureWorksDW2019.dbo.FactResellerSales;



SELECT 
	YEAR(OrderDate) AS ano,
	COUNT(CASE WHEN ExtendedAmount < 3000 THEN 1 END) AS qtd_venda_baixa,
	COUNT(CASE WHEN ExtendedAmount >= 3000 THEN 1 END) AS qtd_venda_alta
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY YEAR(OrderDate);


SELECT 
	YEAR(OrderDate) AS ano,
	MONTH(OrderDate) AS mes,
	COUNT(CASE WHEN ExtendedAmount < 3000 THEN 1 END) AS qtd_venda_baixa,
	COUNT(CASE WHEN ExtendedAmount >= 3000 THEN 1 END) AS qtd_venda_alta
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY 
	YEAR(OrderDate),
	MONTH(OrderDate)
ORDER BY
	YEAR(OrderDate),
	MONTH(OrderDate);


SELECT 
	YEAR(OrderDate) AS ano,
	MONTH(OrderDate) AS mes,
	DAY(OrderDate) AS dia,
	COUNT(CASE WHEN ExtendedAmount < 3000 THEN 1 END) AS qtd_venda_baixa,
	COUNT(CASE WHEN ExtendedAmount >= 3000 THEN 1 END) AS qtd_venda_alta
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY 
	YEAR(OrderDate),
	MONTH(OrderDate),
	DAY(OrderDate)
ORDER BY
	YEAR(OrderDate),
	MONTH(OrderDate),
	DAY(OrderDate);


SELECT 
	YEAR(OrderDate) AS ano,
	COUNT(CASE WHEN ExtendedAmount < 3000 THEN 1 END) AS qtd_venda_baixa,
	COUNT(CASE WHEN ExtendedAmount >= 3000 THEN 1 END) AS qtd_venda_alta
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE YEAR(OrderDate) = 2011
GROUP BY YEAR(OrderDate);


SELECT 
	MONTH(OrderDate) AS ano,
	COUNT(CASE WHEN ExtendedAmount < 3000 THEN 1 END) AS qtd_venda_baixa,
	COUNT(CASE WHEN ExtendedAmount >= 3000 THEN 1 END) AS qtd_venda_alta
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE YEAR(OrderDate) = 2011
GROUP BY MONTH(OrderDate);