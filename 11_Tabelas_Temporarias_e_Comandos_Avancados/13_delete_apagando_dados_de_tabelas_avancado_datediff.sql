-- Delete - apagando dados de tabelas avançado ( DateDIFF)

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
	END										AS "Status",
	DATEDIFF(YEAR, StartDate, GETDATE())	AS CompanyTimeYear,
	DATEDIFF(MONTH, StartDate, GETDATE())	AS CompanyTimeMonth,
	DATEDIFF(DAY, StartDate, GETDATE())		AS CompanyTimeDay,
	DATEDIFF(HOUR, StartDate, GETDATE())	AS CompanyTimeHour,
	DATEDIFF(MINUTE, StartDate, GETDATE())	AS CompanyTimeMinute,
	DATEDIFF(SECOND, StartDate, GETDATE())	AS CompanyTimeSecond
FROM tb_temp_employee

DELETE FROM tb_temp_employee
WHERE DATEDIFF(YEAR, StartDate, GETDATE()) = 20
	  AND EndDate IS NULL

DELETE FROM tb_temp_employee
WHERE EndDate IS NOT NULL

DELETE FROM tb_temp_employee
WHERE DATEDIFF(YEAR, StartDate, GETDATE()) = 18

DROP TABLE tb_temp_employee
