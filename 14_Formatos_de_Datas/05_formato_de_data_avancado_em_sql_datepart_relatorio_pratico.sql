-- Formato de Data Avançado em SQL (DATEPART) - Relatório Prático

USE Ecommerce

SELECT
	DATEPART(DAY, created_at)	AS dia,
	COUNT(id)					AS quantidade_venda
FROM dbo.Ordens
WHERE YEAR(created_at) = 2019
	  AND MONTH(created_at) = 1
GROUP BY DATEPART(DAY, created_at)