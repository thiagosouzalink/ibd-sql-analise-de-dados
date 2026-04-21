-- Função between -Entre- ( Dados entre 2 valores )

SELECT *
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE SalesAmount BETWEEN 1000 AND 5000
ORDER BY SalesAmount;


SELECT *
FROM AdventureWorksDW2019.dbo.FactResellerSales
WHERE SalesAmount NOT BETWEEN 1000 AND 5000
ORDER BY SalesAmount;


SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE HireDate BETWEEN '2008-01-01' AND '2010-12-31'
ORDER BY HireDate;


-- Também aceita com separador / na data
SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE HireDate BETWEEN '2008/01/01' AND '2010/12/31'
ORDER BY HireDate;