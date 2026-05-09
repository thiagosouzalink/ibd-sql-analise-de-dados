-- RTRIM - LTRIM eliminando espaços escessivos


SELECT 
	tb_nome.normal,
	LTRIM(tb_nome.com_espacos_esquerda)					AS normal_espacos_esquerda,
	RTRIM(tb_nome.com_espacos_direita)					AS normal_espacos_direita,
	LTRIM(RTRIM(tb_nome.com_espacos_esquerda_direita))	AS normal_espacos_esquerda_direita
FROM (
	SELECT 
		'Thiago' AS normal,
		'    Thiago'	AS com_espacos_esquerda,
		'Thiago   '		AS com_espacos_direita,
		'   Thiago   '	AS com_espacos_esquerda_direita
) tb_nome
;

SELECT
	RTRIM(LTRIM(FirstName))
FROM AdventureWorksDW2019.dbo.DimEmployee
;