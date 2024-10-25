Select c.EnglishProductCategoryName,
		sum(SalesAmount) total_sales
From DimProductCategory c
Join DimProductSubcategory sc
	ON c.ProductCategoryKey = sc.ProductCategoryKey
Join DimProduct p
	ON p.ProductSubcategoryKey = sc.ProductSubcategoryKey
Join FactInternetSales s
	ON s.ProductKey = p.ProductKey
Group By c.EnglishProductCategoryName
Order By total_sales DESC

;