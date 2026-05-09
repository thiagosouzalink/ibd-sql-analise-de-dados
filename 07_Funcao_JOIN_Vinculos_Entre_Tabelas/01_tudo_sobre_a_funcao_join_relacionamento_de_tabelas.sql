-- Tudo Sobre a Função Join (Relacionamento de tabelas)

SELECT *
FROM Ecommerce.dbo.Vendas;

SELECT *
FROM Ecommerce.dbo.Ordens;


SELECT *
FROM Ecommerce.dbo.Vendas v
JOIN Ecommerce.dbo.Ordens o
	ON v.order_id = o.id;


SELECT
	v.order_id,
	v.total_price,
	o.status
FROM Ecommerce.dbo.Vendas v
JOIN Ecommerce.dbo.Ordens o
	ON v.order_id = o.id;


SELECT *
FROM Ecommerce.dbo.Vendas v
LEFT JOIN Ecommerce.dbo.Ordens o
	ON v.order_id = o.id;


SELECT *
FROM Ecommerce.dbo.Vendas v
RIGHT JOIN Ecommerce.dbo.Ordens o
	ON v.order_id = o.id;



SELECT *
FROM Ecommerce.dbo.Vendas v
FULL JOIN Ecommerce.dbo.Ordens o
	ON v.order_id = o.id;


SELECT
	v.id,
	v.quantity,
	o.customer_id,
	o.status
FROM Ecommerce.dbo.Vendas v
LEFT JOIN Ecommerce.dbo.Ordens o
	ON v.order_id = o.id;
