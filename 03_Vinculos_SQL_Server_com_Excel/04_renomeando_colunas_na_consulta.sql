-- Renomeando Colunas na consulta
SELECT TOP (10)
	CustomerKey ID_Cliente,
	FirstName AS Nome,
	LastName AS Sobrenome,
	AddressLine1 AS Endereco
FROM AdventureWorksDW2019.dbo.DimCustomer;

SELECT TOP (10)
	CustomerKey AS "ID Cliente",
	FirstName AS "Nome da Pessoa",
	LastName AS "Sobrenome da Pessoa",
	AddressLine1 AS "Endereço da Pessoa"
FROM AdventureWorksDW2019.dbo.DimCustomer;

SELECT        CustomerKey AS ID_Cliente, FirstName AS Nome, LastName AS Sobrenome, EmailAddress, AddressLine1
FROM            DimCustomer;