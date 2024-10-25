
-- running total of sales for each day in December 2013

Select OrderDate,
       sum(SalesAmount) Over(Order By OrderDate)
	   As running_total
From FactInternetSales
Where OrderDate Between '2013-12-01' AND '2013-12-31'
;
