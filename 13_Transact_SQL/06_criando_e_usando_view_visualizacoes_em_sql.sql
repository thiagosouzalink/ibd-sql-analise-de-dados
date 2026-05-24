-- Criando e usando View Visualizações em SQL

USE AdventureWorksDW2019

CREATE VIEW vw_employee_department_production AS
SELECT
	EmployeeKey,
	LastName,
	Title,
	Phone,
	EmailAddress
FROM dbo.DimEmployee
WHERE DepartmentName = 'Production'

SELECT * FROM vw_employee_department_production
