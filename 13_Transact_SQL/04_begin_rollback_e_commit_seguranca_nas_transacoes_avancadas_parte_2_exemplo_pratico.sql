-- beguin, roulback e commit - Segurança nas Transaçoes Avançadas Parte 2 Exemplo Prático

-------------------------------
------ DELETES
-------------------------------
USE Teste

SELECT *
FROM dbo.Produto 
WHERE id = 2

DELETE FROM dbo.Produto
WHERE id = 2

SELECT * FROM dbo.Produto

----------- Com Segurança na transação----------------------
SELECT * FROM dbo.Produto WHERE id IN (1, 3, 4, 5, 6, 10)

BEGIN TRAN    -- inicia Transação (Executar antes de iniciar transação)
DELETE FROM dbo.Produto
WHERE id IN (1, 3, 4, 5, 6, 10)

SELECT * FROM dbo.Produto

ROLLBACK TRAN --| Cancelar Transação  
COMMIT TRAN   --| Salvar Transação

----- Grande Cagada na base ------
BEGIN TRAN    -- inicia Transação (Executar antes de iniciar transação)
SELECT * FROM dbo.Produto WHERE id IN (15, 16, 17, 20)

DELETE [dbo].[Produto]
  
SELECT * FROM [dbo].[Produto]

ROLLBACK TRAN --| Cancelar Transação  
COMMIT TRAN   --| Salvar Transação