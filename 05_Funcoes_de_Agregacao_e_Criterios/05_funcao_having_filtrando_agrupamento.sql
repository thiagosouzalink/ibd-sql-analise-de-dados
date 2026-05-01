-- Funçao having Filtrando agrupamento 

SELECT
	EmployeeKey,
	SUM(ExtendedAmount) AS total_venda_funcionario
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY 
	EmployeeKey
HAVING
	SUM(ExtendedAmount) > 4000000;


SELECT
	EmployeeKey,
	SUM(ExtendedAmount) AS total_venda_funcionario
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE
	EmployeeKey IN (281, 284, 287, 288, 290, 290)
GROUP BY
	EmployeeKey
HAVING
	SUM(ExtendedAmount) > 5000000


SELECT
	FirstName,
	COUNT(FirstName) AS quantidade
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE Gender = 'F'
GROUP BY FirstName
HAVING COUNT(FirstName) > 3;