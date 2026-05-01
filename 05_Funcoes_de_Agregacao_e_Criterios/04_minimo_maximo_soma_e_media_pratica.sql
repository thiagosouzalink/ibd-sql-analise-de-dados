-- Mínimo Máximo Soma e Média ( prática )

SELECT
	ProductKey,
	MIN(ExtendedAmount) AS valor_venda_minima
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY 
	ProductKey;


SELECT
	ProductKey,
	MAX(ExtendedAmount) AS valor_venda_maxima
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY 
	ProductKey;


SELECT
	ProductKey,
	MIN(ExtendedAmount) AS valor_venda_minima_produto,
	MAX(ExtendedAmount) AS valor_venda_maxima_produto,
	SUM(ExtendedAmount) AS total_venda_produto,
	AVG(ExtendedAmount) AS valor_medio_venda_produto
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY 
	ProductKey;


SELECT
	EmployeeKey,
	MIN(ExtendedAmount) AS valor_venda_minima_funcionario,
	MAX(ExtendedAmount) AS valor_venda_maxima_funcionario,
	SUM(ExtendedAmount) AS total_venda_funcionario,
	AVG(ExtendedAmount) AS valor_medio_venda_funcionario
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY 
	EmployeeKey
ORDER BY
	total_venda_funcionario DESC;