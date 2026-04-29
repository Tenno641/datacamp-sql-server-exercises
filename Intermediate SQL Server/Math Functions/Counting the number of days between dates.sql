SELECT OrderDate, ShipDate, 
       DATEDIFF(DD, OrderDate, ShipDate) AS Duration
FROM Shipments
ORDER BY Duration DESC;

/*
	Write a query that returns the number of days between `OrderDate` and `ShipDate`.
*/