-- Rank e Dense Rank

SELECT
	EmployeeKey,
	Title,
	HireDate,
	RANK()			OVER (ORDER BY HireDate)	AS Ranking,
	DENSE_RANK()	OVER (ORDER BY HireDate)	AS DenseRank,
	ROW_NUMBER()	OVER (ORDER BY HireDate)	AS RowNumber
FROM AdventureWorksDW2019.dbo.DimEmployee

SELECT
	EmployeeKey,
	Title,
	HireDate,
	DENSE_RANK()	OVER (PARTITION BY Title ORDER BY HireDate)	AS DenseRank
FROM AdventureWorksDW2019.dbo.DimEmployee