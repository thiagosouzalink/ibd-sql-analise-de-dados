-- Função de Restrição WHERE
SELECT *
FROM AdventureWorksDW2019.dbo.DimCustomer
WHERE EnglishEducation = 'High School'
	  AND EnglishOccupation = 'Manual';


SELECT *
FROM AdventureWorksDW2019.dbo.DimCustomer
WHERE EnglishEducation IN ('Bachelors', 'High School')
ORDER BY EnglishEducation;


SELECT *
FROM AdventureWorksDW2019.dbo.DimCustomer
WHERE EnglishEducation IN ('Bachelors', 'High School')
	  AND SpanishOccupation IN ('Administrativo', 'Profesional');


SELECT *
FROM AdventureWorksDW2019.dbo.DimCustomer
WHERE FirstName IN ('Jon', 'Lauren', 'Jimmy');
