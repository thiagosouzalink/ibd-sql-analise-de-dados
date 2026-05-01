-- Função Case ( Caso Quando) Criando nova coluna condiciona

SELECT 
	EnglishProductSubcategoryName AS sub_categoria,
	CASE
		WHEN EnglishProductSubcategoryName IN (
				'Mountain Bikes', 
				'Road Bikes', 
				'Touring Bikes'
			) THEN 'Bikes'
        WHEN EnglishProductSubcategoryName IN (
				'Mountain Frames', 
				'Road Frames', 
				'Touring Frames'
			) THEN 'Frames'
        WHEN EnglishProductSubcategoryName IN (
				'Brakes', 
				'Chains', 
				'Cranksets', 
				'Derailleurs', 
				'Bottom Brackets', 
				'Forks', 'Headsets', 
				'Handlebars', 
				'Wheels', 
				'Pedals', 
				'Saddles', 
				'Tires and Tubes'
			) THEN 'Componentes'
        WHEN EnglishProductSubcategoryName IN (
				'Helmets', 
				'Gloves', 
				'Caps', 
				'Socks', 
				'Tights', 
				'Shorts', 
				'Jerseys', 
				'Vests'
			) THEN 'Vestuário'
        WHEN EnglishProductSubcategoryName IN (
				'Bottles and Cages', 
				'Hydration Packs'
			) THEN 'Hidratação'
        WHEN EnglishProductSubcategoryName IN (
				'Bike Racks', 
				'Bike Stands', 
				'Fenders', 
				'Panniers', 
				'Lights', 
				'Locks', 
				'Pumps', 
				'Cleaners'
			) THEN 'Acessórios'
        ELSE 'Outros'
	END AS categoria
FROM AdventureWorksDW2019.dbo.DimProductSubcategory;