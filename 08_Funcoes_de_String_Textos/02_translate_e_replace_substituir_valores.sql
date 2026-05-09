-- Translate e Replace Substituir Valores 

SELECT TOP 10
	FirstName,
	TRANSLATE(FirstName, 'j', 'T')	AS NameWithReplacedLetter,
	LastName,
	Gender
FROM AdventureWorksDW2019.dbo.DimCustomer
;


SELECT TOP 10
	FirstName,
	TRANSLATE(FirstName, 'j''e''C', 't''u''x')		AS TransletedName,
	REPLACE(FirstName, 'j', 'w')					AS ReplacedName,
	REPLACE(REPLACE(FirstName, 'j', 'w'), 'e', 'a') AS DoubleReplacedName,
	LastName,
	Gender
FROM AdventureWorksDW2019.dbo.DimCustomer
;