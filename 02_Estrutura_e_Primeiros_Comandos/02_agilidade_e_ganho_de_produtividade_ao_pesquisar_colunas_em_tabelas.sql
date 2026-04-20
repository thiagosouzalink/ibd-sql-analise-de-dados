-- Agilidade e ganho de produtividade ao pesquisar colunas em tabela
SELECT TOP 10 *
FROM AdventureWorksDW2019.dbo.FactResellerSales;

SELECT
	ProductKey,
	SalesOrderNumber,
	SalesTerritoryKey,
	OrderDateKey
FROM AdventureWorksDW2019.dbo.FactResellerSales;

--Selecionar nome da tabela ou objeto e depois Alt + f1
--utilizado para exibir rapidamente informações detalhadas sobre um 
--objeto de banco de dados (tabela, view, procedure), 
--executando o procedimento armazenado


EXEC sp_columns FactResellerSales;
--O comando EXEC sp_columns 'nome_da_tabela' no SQL Server Management Studio (SSMS) 
--retorna metadados detalhados sobre colunas (tipo, tamanho, nulo, etc.) 
--de tabelas ou views. Ele funciona como uma alternativa à instrução DESC 
--de outros bancos.


--A opção de "Projetar consultas no editor", no SQL Server Management Studio (SSMS) 
--é conhecida como Designer de Consultas (Query Designer). Ela permite criar 
--consultas SQL (SELECT, INSERT, UPDATE, DELETE) de forma gráfica, 
--sem precisar digitar todo o código manualmente
--Atalho: Pressione Ctrl + Shift + Q no editor de consultas.
