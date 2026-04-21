-- Where is Null - Is Not Null ( Excluindo linhas em Branco)

SELECT
	FirstName AS Nome,
	MiddleName AS Nome_do_Meio,
	LastName AS Sobrenome,
	AddressLine1 AS Endereco,
	AddressLine2 AS Endereco_Alternativo
FROM AdventureWorksDW2019.dbo.DimCustomer
WHERE AddressLine2 IS NOT NULL
	  AND MiddleName IS NOT NULL;