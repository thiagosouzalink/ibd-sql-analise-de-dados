-- Função IN restrigindo consulta

SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE EmployeeKey IN (2, 5, 7);

SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE FirstName IN ('Guy', 'Roberto', 'Thierry', 'Jossef');


SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE FirstName NOT IN ('Guy', 'Roberto', 'Thierry', 'Jossef');


SELECT *
FROM AdventureWorksDW2019.dbo.DimEmployee
WHERE FirstName NOT IN ('Guy', 'Roberto', 'Thierry', 'Jossef')
	  AND DepartmentName IN ('Marketing', 'Production');