SELECT
	COALESCE(dbo.Incidents.Country, dbo.Incidents.IncidentState, dbo.Incidents.City) as Location
FROM
	dbo.Incidents
WHERE
	dbo.Incidents.Country IS NULL;
/*
Replace missing values in Country with the first non-missing value from IncidentState or City, in that order. Name the new column Location.
*/