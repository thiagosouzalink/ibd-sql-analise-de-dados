-- UPDATE - Manipular os dados de suas tabelas parte 2

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

--UPDATE tb_temp_employee
--SET EndDate = GETDATE()

UPDATE tb_temp_employee
SET EndDate = '2022-11-10'
WHERE EmployeeKey IN (1, 2, 3)

DROP TABLE tb_temp_employee