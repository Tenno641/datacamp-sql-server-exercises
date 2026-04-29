SELECT OrderDate, DATEADD(DD, 5, ShipDate) as approximate_delivery_date
FROM shipments;

/*
	Write a query that returns the approximate delivery date as five days after the `ShipDate`.
*/