-- Delete - Práticando crítérios

USE AdventureWorksDW2019

SELECT *
INTO tb_temp_employee
FROM DimEmployee

SELECT
	EmployeeKey,
	FirstName,
	LastName,
	MiddleName,
	StartDate,
	EndDate,
	CASE
		WHEN EndDate IS NULL THEN 'Ativo'
		ELSE 'Demitido'
	END	AS 'Status'
FROM tb_temp_employee

DELETE FROM tb_temp_employee
WHERE EndDate IS NOT NULL

DELETE FROM tb_temp_employee
WHERE MiddleName IS NULL

DELETE FROM tb_temp_employee
WHERE EmployeeKey BETWEEN 1 AND 20

DELETE FROM tb_temp_employee
WHERE StartDate BETWEEN '2007-10-27' AND '2011-12-29'

DROP TABLE tb_temp_employee