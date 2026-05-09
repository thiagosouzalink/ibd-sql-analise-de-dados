-- (Aula Prática) right JOIN

SELECT DISTINCT
	c.user_name,
	c.user_id	AS user_id_compras,
	a.user_id	AS user_id_acessos,
	a.type
FROM Vendas.dbo.Acessos a
RIGHT JOIN Vendas.dbo.Compras c
	ON a.user_id = c.user_id
WHERE a.user_id IS NULL
;

-- Semelhante, usando LEFT JOIN
SELECT DISTINCT
	c.user_name,
	c.user_id	AS user_id_compras,
	a.user_id	AS user_id_acessos,
	a.type
FROM Vendas.dbo.Compras C
LEFT JOIN Vendas.dbo.Acessos a
	ON a.user_id = c.user_id
WHERE a.user_id IS NULL
;