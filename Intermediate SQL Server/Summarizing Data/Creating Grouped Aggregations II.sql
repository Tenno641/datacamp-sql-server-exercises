SELECT
	dbo.Incidents.Shape,
	MIN(dbo.Incidents.DurationSeconds),
	MAX(dbo.Incidents.DurationSeconds),
	AVG(dbo.Incidents.DurationSeconds)
FROM
	dbo.Incidents
GROUP BY	
	dbo.Incidents.Shape
HAVING
	MIN(dbo.Incidents.DurationSeconds) > 1;