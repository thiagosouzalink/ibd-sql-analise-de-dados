-- Inserindo nova tabela espelho (Exemplo prático 2)

USE AdventureWorksDW2019


SELECT
	EmployeeKey,
	ProductKey,
	ExtendedAmount
INTO ##temp_aula
FROM FactResellerSales
WHERE EmployeeKey = 285

SELECT *
FROM ##temp_aula


USE Teste

SELECT *
INTO dbo.dados_employee_285
FROM ##temp_aula

DROP TABLE ##temp_aula

DROP TABLE dbo.dados_employee_285
