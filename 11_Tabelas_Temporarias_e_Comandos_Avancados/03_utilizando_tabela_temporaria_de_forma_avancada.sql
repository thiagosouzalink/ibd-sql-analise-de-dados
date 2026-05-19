-- Ultilizando tabela temporária de forma avançada 

SELECT *
FROM Ecommerce.dbo.Vendas

USE Teste
SELECT *
INTO ##temp_produto
FROM dbo.Produto


SELECT *
FROM ##temp_produto


SELECT
	v.id			AS id_venda,
	v.product_id,
	tp.id,
	tp.nome
FROM Ecommerce.dbo.Vendas v
LEFT JOIN ##temp_produto tp
	ON v.product_id = tp.id

