-- Concat , Concatenar - Juntar Textos 

SELECT CONCAT('Você é um bom aluno!', ' ', 'Nota 10');


SELECT top 10
	FirstName,
	LastName,
	Gender,
	CONCAT(FirstName, ' ', LastName)							AS FullName,
	CONCAT('O email de ', FirstName, ' é: ', EmailAddress)		AS EmailDescription,
	CONCAT('O endereço de ', FirstName, ' é: ', AddressLine1)	AS AddressDescription,
	EmailAddress,
	AddressLine1,
	TotalChildren
FROM AdventureWorksDW2019.dbo.DimCustomer
;