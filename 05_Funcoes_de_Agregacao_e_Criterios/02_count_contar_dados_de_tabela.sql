-- Count - contar dados de tabela

SELECT
	DepartmentName,
	COUNT(DepartmentName) AS Quantidade
FROM AdventureWorksDW2019.dbo.DimEmployee
GROUP BY 
	DepartmentName;


SELECT
	Title,
	COUNT(Title) AS Quantidade
FROM AdventureWorksDW2019.dbo.DimEmployee
GROUP BY
	Title
ORDER BY 2;


SELECT
	ProductKey,
	COUNT(ProductKey) AS Quantidade_Venda
FROM AdventureWorksDW2019.dbo.FactResellerSales
GROUP BY ProductKey
ORDER BY 2;