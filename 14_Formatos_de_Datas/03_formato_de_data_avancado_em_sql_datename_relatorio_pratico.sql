-- Formato de Data Avançado em SQL (DATENAME) - Relatório Prático

USE Ecommerce

-- Relatório prático formato de texto
SELECT
	id,
	created_at,
	customer_id, 
	status,
	DATENAME(YEAR, created_at)	AS ano_texto,
	DATENAME(MONTH, created_at) AS mes_texto,
	DATENAME(DAY, created_at)	AS dia_texto
FROM dbo.Ordens

SELECT
	DATENAME(YEAR, created_at)	AS ano_texto,
	DATENAME(MONTH, created_at) AS mes_texto,
	COUNT(id)	AS quantidade
FROM dbo.Ordens
GROUP BY 
	DATENAME(YEAR, created_at),
	DATENAME(MONTH, created_at)
ORDER BY 1,3 DESC