-- DATEDIFF Relatório Avançado de datas - Calculo Faixa Etaria

USE AdventureWorksDW2019

SELECT
	EmployeeKey,
	FirstName,
	BirthDate,
	DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age,
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
