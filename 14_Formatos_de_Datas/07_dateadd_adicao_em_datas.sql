-- DATEADD Adicão em datas

USE Ecommerce

SELECT DATEADD(MONTH, 1, GETDATE())
SELECT DATEADD(MONTH, 1, CAST(GETDATE() AS date))

SELECT DATEADD(MONTH, -1, GETDATE())
SELECT DATEADD(MONTH, -1, CAST(GETDATE() AS date))


SELECT
	id,
	created_at						AS DataVenda,
	DATEADD(MONTH, 2, created_at)	AS DataPagamento
FROM dbo.Ordens

SELECT 
	id,
	created_at,
	DATEADD(HOUR, 1, created_at)	AS Hora,
	DATEADD(MINUTE, 10, created_at)	AS Minuto
FROM dbo.Ordens

SELECT
	id,
	CAST(created_at AS date)					AS DataVenda,
	CAST(DATEADD(MONTH, 2, created_at) AS date)	AS DataPagamento
FROM dbo.Ordens

SELECT
	id,
	CONVERT(varchar, created_at, 103)						AS DataVenda,
	CONVERT(varchar, DATEADD(MONTH, 2, created_at), 103)	AS DataPagamento
FROM dbo.Ordens