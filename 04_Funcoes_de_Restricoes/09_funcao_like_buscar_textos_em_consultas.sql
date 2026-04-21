-- Função Like - buscar textos em consultas 

SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE FirstName LIKE 'and%';


SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE FirstName LIKE '%na';


SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE FirstName NOT LIKE '%na';


SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE FirstName LIKE '%ja%';


SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE FirstName LIKE '%ja_';


SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE FirstName LIKE '%ja__';
