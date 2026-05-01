-- Função Case ( Caso Quando) coluna condicional Com Números 

SELECT
	EmployeeKey,
	SUM(ExtendedAmount) AS valor_venda,
	CASE
		WHEN SUM(ExtendedAmount) > 5000000 THEN 'SIM'
		ELSE 'NÃO'
	END AS cumpriu_meta
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY EmployeeKey;


SELECT
	EmployeeKey,
	SUM(ExtendedAmount) AS valor_venda,
	CASE
		WHEN SUM(ExtendedAmount) < 2000000						THEN 'RUIM'
		WHEN SUM(ExtendedAmount) BETWEEN 2000000 AND 5000000	THEN 'MÉDIO'
		ELSE 'PROMOÇÃO'
	END AS status_venda
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY EmployeeKey
ORDER BY valor_venda;


SELECT
	EmployeeKey,
	SUM(ExtendedAmount) AS valor_venda,
	CASE
		WHEN SUM(ExtendedAmount) < 2000000						THEN 'RUIM'
		WHEN SUM(ExtendedAmount) BETWEEN 2000000 AND 5000000	THEN 'MÉDIO'
		WHEN SUM(ExtendedAmount) > 5000000						THEN 'PROMOÇÃO'
	END AS status_venda
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY EmployeeKey
ORDER BY valor_venda;