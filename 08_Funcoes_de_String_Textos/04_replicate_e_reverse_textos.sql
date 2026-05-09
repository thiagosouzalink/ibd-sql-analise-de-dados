-- Replicate e Reverse Textos

SELECT
	REPLICATE('sql', 10)	AS ReplicatedWord,
	REVERSE('sql')			AS ReplacetedWord
;


SELECT
	FirstName,
	REPLICATE(FirstName, 3)	AS ReplicatedFirstName,
	LastName,
	REVERSE(LastName)		AS ReversedLastName
FROM AdventureWorksDW2019.dbo.DimEmployee
;