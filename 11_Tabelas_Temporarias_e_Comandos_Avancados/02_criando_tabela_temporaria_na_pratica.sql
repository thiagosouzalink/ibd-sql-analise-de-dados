-- Criando Tabela Temporária na Pratica 

CREATE TABLE ##tb_temp_manual
(
	id int,
	nome varchar(50)
)


SELECT *
FROM ##tb_temp_manual


INSERT INTO ##tb_temp_manual (id, nome) VALUES (1, 'Sapato')
INSERT INTO ##tb_temp_manual (id, nome) VALUES (2, 'Blusa')


SELECT *
FROM [dbo].[##tb_temp_manual]

