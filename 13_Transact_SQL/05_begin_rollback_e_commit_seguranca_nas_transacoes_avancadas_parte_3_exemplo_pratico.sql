-- beguin, roulback e commit - Segurança nas Transaçoes Avançadas Parte 3 Exemplo Prático

-------------------------------
------ INSERTS
-------------------------------
USE Teste

SELECT * FROM dbo.Produto

INSERT INTO dbo.Produto (id, nome, id_categoria)
VALUES (50, 'Camisa Apertadinha', 10)

DELETE FROM dbo.Produto WHERE id = 50

----------- Com Segurança na transação----------------------
BEGIN TRAN
INSERT INTO dbo.Produto (id, nome, id_categoria)
VALUES (50, 'Camisa Apertadinha', 10)

COMMIT TRAN