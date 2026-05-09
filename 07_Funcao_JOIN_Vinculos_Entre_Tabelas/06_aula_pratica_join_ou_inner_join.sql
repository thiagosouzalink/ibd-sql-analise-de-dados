-- (Aula Prática) JOIN ou INNER JOIN

SELECT DISTINCT
	a.user_id,
	c.user_id,
	a.user_name
FROM Vendas.dbo.Acessos a
INNER JOIN Vendas.dbo.Compras c
	ON a.user_id = c.user_id;