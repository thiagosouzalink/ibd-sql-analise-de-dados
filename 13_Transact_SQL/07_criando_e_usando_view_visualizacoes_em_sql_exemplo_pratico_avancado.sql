-- Criando e usando View Visualizações em SQL - Exemplo prático avançado

USE AdventureWorksDW2019

CREATE OR ALTER VIEW vw_employee_department_production AS
SELECT
	EmployeeKey,
	LastName,
	Title,
	Phone,
	EmailAddress,
	DepartmentName
FROM dbo.DimEmployee
WHERE DepartmentName = 'Marketing'

SELECT * FROM vw_employee_department_production


USE Ecommerce

CREATE OR ALTER VIEW vw_pedido_pendente AS
SELECT
	v.id			AS venda_id,
	v.total_price,
	v.quantity,
	o.created_at,
	p.name			AS product_name,
	ca.name			AS category_name,
	cl.first_name,
	cl.cell_phone,
	cl.state
FROM Ecommerce.dbo.Vendas			v
LEFT JOIN Ecommerce.dbo.Ordens		o
	ON v.order_id		= o.id
LEFT JOIN Ecommerce.dbo.Produto		p
	ON v.product_id		= p.id
LEFT JOIN Ecommerce.dbo.Categorias	ca
	ON p.category_id	= ca.id
LEFT JOIN Ecommerce.dbo.Clientes	cl
	ON o.customer_id	= cl.id
WHERE o.status = 'entrega_pendente'

SELECT * 
FROM vw_pedido_pendente

DROP VIEW vw_pedido_pendente
