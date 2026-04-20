-- Conectando banco de dados no Excel ( tabelas personalizadas , vinculos e Automação )

--Query abaixo foi carregada no excel
SELECT
	ProductKey,
	SalesOrderNumber,
	OrderQuantity,
	UnitPrice,
	ExtendedAmount
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE ExtendedAmount > 5000;

