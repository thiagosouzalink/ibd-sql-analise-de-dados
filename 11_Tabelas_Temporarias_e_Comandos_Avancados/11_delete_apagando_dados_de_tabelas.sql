-- Delete - apagando dados de tabelas 

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
WHERE EmployeeKey = 2

DELETE FROM tb_temp_employee
WHERE EmployeeKey IN (4, 9)

DROP TABLE tb_temp_employee