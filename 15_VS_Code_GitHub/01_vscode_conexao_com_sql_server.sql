-- VSCode conexão com SQL Server 

SELECT 
    ProductKey
    ,ProductAlternateKey
    ,ProductSubcategoryKey
    ,WeightUnitMeasureCode
    ,SizeUnitMeasureCode
    ,EnglishProductName
    ,SpanishProductName
    ,FrenchProductName
    ,StandardCost
    ,FinishedGoodsFlag
    ,Color
    ,SafetyStockLevel
    ,ReorderPoint
    ,ListPrice
    ,Size
    ,SizeRange
    ,Weight
    ,DaysToManufacture
    ,ProductLine
    ,DealerPrice
    ,Class
    ,Style
    ,ModelName
    ,LargePhoto
    ,EnglishDescription
    ,FrenchDescription
    ,ChineseDescription
    ,ArabicDescription
    ,HebrewDescription
    ,ThaiDescription
    ,GermanDescription
    ,JapaneseDescription
    ,TurkishDescription
    ,StartDate
    ,EndDate
    ,Status
  FROM AdventureWorksDW2019.dbo.DimProduct

SELECT TOP (1000) [EmployeeKey]
      ,[LastName]
      ,[Title]
      ,[Phone]
      ,[EmailAddress]
      ,[DepartmentName]
  FROM [AdventureWorksDW2019].[dbo].[vw_employee_department_production]