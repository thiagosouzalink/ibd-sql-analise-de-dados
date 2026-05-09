-- (Aula Prática) full JOIN

SELECT DISTINCT
	u.user_name	AS nome_cadastro,
	u.id		AS user_id,
	c.user_id	AS user_id_compra,
	a.user_id	AS user_id_acesso
FROM Vendas.dbo.Usuarios u
FULL JOIN Vendas.dbo.Compras c
	ON u.id = c.user_id
FULL JOIN Vendas.dbo.Acessos a
	ON u.id = a.user_id
;


SELECT DISTINCT
	u.user_name	AS nome_cadastro,
	u.id		AS user_id,
	c.user_id	AS user_id_compra,
	a.user_id	AS user_id_acesso
FROM Vendas.dbo.Usuarios u
FULL JOIN Vendas.dbo.Compras c
	ON u.id = c.user_id
FULL JOIN Vendas.dbo.Acessos a
	ON u.id = a.user_id
WHERE c.user_id IS NULL AND a.user_id IS NULL
;


SELECT DISTINCT
	u.user_name	AS nome_cadastro,
	u.id		AS user_id,
	c.user_id	AS user_id_compra,
	a.user_id	AS user_id_acesso
FROM Vendas.dbo.Usuarios u
FULL JOIN Vendas.dbo.Compras c
	ON u.id = c.user_id
FULL JOIN Vendas.dbo.Acessos a
	ON u.id = a.user_id
WHERE c.user_id IS NOT NULL AND a.user_id IS NULL
;


SELECT DISTINCT
	u.user_name	AS nome_cadastro,
	u.id		AS user_id,
	c.user_id	AS user_id_compra,
	a.user_id	AS user_id_acesso
FROM Vendas.dbo.Usuarios u
FULL JOIN Vendas.dbo.Compras c
	ON u.id = c.user_id
FULL JOIN Vendas.dbo.Acessos a
	ON u.id = a.user_id
WHERE a.user_id IS NOT NULL AND c.user_id IS NULL
;