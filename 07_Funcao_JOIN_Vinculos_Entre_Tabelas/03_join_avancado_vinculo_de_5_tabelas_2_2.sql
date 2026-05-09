-- join avançado- vinculo de 5 tabelas 2/2

SELECT
	v.id			AS venda_id,
	v.quantity,
	v.total_price,
	o.created_at,
	o.status,
	p.name			AS product_name,
	ca.name			AS category_name,
	cl.first_name,
	cl.cell_phone,
	cl.state
FROM Ecommerce.dbo.Vendas v
LEFT JOIN Ecommerce.dbo.Ordens o
	ON v.order_id    = o.id
LEFT JOIN Ecommerce.dbo.Produto p
	ON v.product_id	 = p.id
LEFT JOIN Ecommerce.dbo.Categorias ca
	ON p.category_id = ca.id
LEFT JOIN Ecommerce.dbo.Clientes cl
	ON o.customer_id = cl.id
;
