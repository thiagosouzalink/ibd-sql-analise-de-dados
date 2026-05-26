-- DATEDIFF Relatório Avançado de datas + CAse + Subselect

USE AdventureWorksDW2019

SELECT
	COUNT(EmployeeKey)	AS Quantity,
	CASE
		WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN  0 AND  20 
			THEN '0 a 20 anos'
		WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN 21 AND  10 
			THEN '21 a 40 anos'
		WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN 41 AND  60 
			THEN '41 a 60 anos'
		ELSE '+ 60 anos'
	END AS AgeRange
FROM dbo.DimEmployee
GROUP BY
	CASE
		WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN  0 AND  20 
			THEN '0 a 20 anos'
		WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN 21 AND  10 
			THEN '21 a 40 anos'
		WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN 41 AND  60 
			THEN '41 a 60 anos'
		ELSE '+ 60 anos'
	END

SELECT 
	COUNT(EmployeeKey)	AS Quantity,
	AgeRange
FROM (
	SELECT
		EmployeeKey,
		CASE
			WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN  0 AND  20 
				THEN '0 a 20 anos'
			WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN 21 AND  10 
				THEN '21 a 40 anos'
			WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN 41 AND  60 
				THEN '41 a 60 anos'
			ELSE '+ 60 anos'
		END AS AgeRange
	FROM dbo.DimEmployee
) SubQuery
GROUP BY AgeRange
ORDER BY AgeRange DESC