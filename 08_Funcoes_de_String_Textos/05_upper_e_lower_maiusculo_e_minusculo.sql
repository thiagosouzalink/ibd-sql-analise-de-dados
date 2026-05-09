-- Upper e Lower (maiusculo e minusculo)

SELECT
	FirstName,
	UPPER(FirstName)	AS Maiusculo,
	LOWER(FirstName)	AS Minusculo
FROM AdventureWorksDW2019.dbo.DimEmployee
;