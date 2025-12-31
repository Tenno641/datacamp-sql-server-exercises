SELECT
	Country,
	CASE WHEN dbo.Incidents.Country = 'us' THEN 'USA' 
		ELSE 'International'
		END AS SourceCountry
FROM
	dbo.Incidents;
/*
	Create a new column, SourceCountry, defined from these cases:
	- When Country is 'us' then it takes the value 'USA'. 
	- Otherwise it takes the value 'International'.
*/