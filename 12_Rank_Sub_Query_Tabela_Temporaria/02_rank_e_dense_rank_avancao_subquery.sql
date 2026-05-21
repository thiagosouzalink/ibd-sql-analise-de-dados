-- Rank e Dense Rank avançado (subquery)

SELECT *
FROM (
	SELECT
		EmployeeKey,
		Title			AS Cargo,
		HireDate		AS Contratacao,
		DENSE_RANK() OVER (ORDER BY HireDate, EmployeeKey)	AS Classificacao
	FROM AdventureWorksDW2019.dbo.DimEmployee
) subquery
WHERE Classificacao IN (1, 2, 3)

SELECT
	EmployeeKey,
	Cargo,
	Contratacao,
	Classificacao
FROM (
	SELECT
		EmployeeKey,
		Title			AS Cargo,
		HireDate		AS Contratacao,
		DENSE_RANK() OVER (ORDER BY HireDate, EmployeeKey)	AS Classificacao
	FROM AdventureWorksDW2019.dbo.DimEmployee
) subquery
WHERE Classificacao BETWEEN 1 AND 10


SELECT
	EmployeeKey,
	Title			AS Cargo,
	HireDate		AS Contratacao,
	DENSE_RANK() OVER (ORDER BY HireDate, EmployeeKey)	AS Classificacao
	INTO ##TempClassificacao
FROM AdventureWorksDW2019.dbo.DimEmployee

SELECT * 
FROM ##TempClassificacao
WHERE Classificacao BETWEEN 1 AND 10