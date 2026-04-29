SELECT
	WeightValue,
	SQUARE(WeightValue) as weight_square,
	SQRT(WeightValue) as weight_square_root
FROM shipments;

/*
	Write a query that calculates the square and square root of the `WeightValue` column.
*/