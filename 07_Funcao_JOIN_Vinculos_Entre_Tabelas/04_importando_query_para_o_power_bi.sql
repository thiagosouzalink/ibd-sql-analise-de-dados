-- Importando query para o Power BI

SELECT
	v.id			AS venda_id,
	v.total_price	AS valor,
	o.created_at	AS data_pedido,
	o.status,
	p.name			AS produto,
	ca.name			AS categoria_produto,
	cl.first_name	AS nome_clinte,
	cl.cell_phone	AS contato,
	cl.state		AS estado
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