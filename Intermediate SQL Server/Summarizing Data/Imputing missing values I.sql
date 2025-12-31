SELECT
	dbo.Incidents.IncidentState,
	ISNULL(dbo.Incidents.incidentState, dbo.Incidents.City) as Location
FROM
	dbo.Incidents
WHERE
	dbo.Incidents.IncidentState IS NULL;

/*
- Write a T-SQL query which only returns rows where `IncidentState` **is missing**. 
- Replace all the missing values in the `IncidentState` column with the values in the `City` column 
- and name this new column `Location`.
*/