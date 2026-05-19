-- UPDATE - Manipular os dados de suas tabelas básico 

SELECT *
INTO tb_temp
FROM Teste.dbo.Categoria

--UPDATE tb_temp
--SET nome = 'Moda'

UPDATE tb_temp
SET nome = 'Moda'
WHERE id IN (0, 1, 2, 3)

UPDATE tb_temp
SET nome = 'Sport'
WHERE id IN (4, 5, 6)

SELECT *
FROM tb_temp

DROP TABLE tb_temp