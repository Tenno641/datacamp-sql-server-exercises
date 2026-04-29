SELECT MixDesc, SUM(Quantity) as total
FROM MixData
GROUP BY MixDesc;

/*
	Write a T-SQL query which will return the sum of the `Quantity` column as `Total` for each type of `MixDesc`.
*/