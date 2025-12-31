SELECT
	dbo.Incidents.IncidentDateTime,
	dbo.Incidents.IncidentState
FROM
	dbo.Incidents
WHERE
	dbo.Incidents.IncidentState IS NOT NULL;