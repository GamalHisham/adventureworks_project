
-- customers who made purchases greater than 5000$ in 2013

Select c.FirstName,
	   c.LastName,
	   sum(s.SalesAmount) total_spent
From FactInternetSales s
join DimCustomer c
	ON s.CustomerKey = c.CustomerKey
Where s.OrderDate Between '2013-01-01' AND '2013-12-31'
Group By c.CustomerKey,
         c.FirstName,
	     c.LastName
Having sum(s.SalesAmount) > 5000
Order By total_spent DESC
;