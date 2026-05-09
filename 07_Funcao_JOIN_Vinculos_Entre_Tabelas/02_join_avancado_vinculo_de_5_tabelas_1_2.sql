-- join avançado- vinculo de 5 tabelas 1/2

SELECT
	v.id AS venda_id,
	v.quantity,
	v.total_price,
	o.created_at,
	o.customer_id,
	o.status,
	p.category_id,
	p.name
FROM Ecommerce.dbo.Vendas v
LEFT JOIN Ecommerce.dbo.Ordens o
	ON v.order_id = o.id
LEFT JOIN Ecommerce.dbo.Produto p
	ON v.product_id = p.id
;
