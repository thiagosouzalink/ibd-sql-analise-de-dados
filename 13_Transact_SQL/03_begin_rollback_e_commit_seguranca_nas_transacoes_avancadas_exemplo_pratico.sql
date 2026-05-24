-- beguin, roulback e commit - Segurança nas Transaçoes Avançadas Exemplo Prático

USE TESTE 
SELECT * FROM dbo.Produto WHERE Id = 2

-------------------------------
------ UPDATES
-------------------------------
UPDATE dbo.Produto
SET nome = 'Calça Apertada',
	id_categoria = 1
WHERE id = 2
GO

UPDATE dbo.Produto
SET nome = 'Calça',
	id_categoria = 0
WHERE id = 2
GO

----------- Com Segurança na transação----------------------
SELECT * FROM dbo.Produto

BEGIN TRAN -- inicia Transação (Executar antes de iniciar transação)
UPDATE dbo.Produto
   SET nome = 'Calça Apertadinha ', 
       id_categoria = 1
	WHERE id = 2

ROLLBACK TRAN --| Cancelar Transação  
COMMIT TRAN   --| Salvar Transação


