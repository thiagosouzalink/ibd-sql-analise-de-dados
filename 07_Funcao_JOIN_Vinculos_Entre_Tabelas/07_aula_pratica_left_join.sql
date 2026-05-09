-- (Aula Prática) left JOIN

SELECT DISTINCT 
	a.user_id	AS user_id_acessos,
	c.user_id	AS user_id_compras,
	a.user_name,
	c.price
FROM Vendas.dbo.Acessos a
LEFT JOIN Vendas.dbo.Compras c
	ON a.user_id = c.user_id
WHERE c.user_id IS NULL;