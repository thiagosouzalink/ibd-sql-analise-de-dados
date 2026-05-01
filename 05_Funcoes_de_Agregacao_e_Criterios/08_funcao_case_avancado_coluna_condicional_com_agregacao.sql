-- Função Case Avançado coluna condicional Com Agregação

SELECT
	SalesOrderNumber	AS ordem_venda,
	ExtendedAmount		AS valor_venda,
	CASE
		WHEN ExtendedAmount < 3000	THEN 'Venda Baixa'
		WHEN ExtendedAmount >= 3000 THEN 'Venda Alta'
	END AS classificacao_venda
FROM AdventureWorksDW2019.dbo.FactResellerSales;


SELECT
	SalesOrderNumber									AS ordem_venda,
	COUNT(CASE WHEN ExtendedAmount < 3000	THEN 1 END)	AS venda_baixa,
	COUNT(CASE WHEN ExtendedAmount >= 3000	THEN 1 END)	AS venda_alta
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY SalesOrderNumber;


