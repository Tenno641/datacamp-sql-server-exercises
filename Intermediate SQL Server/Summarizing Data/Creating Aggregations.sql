SELECT
	AVG(dbo.Incidents.DurationSeconds) as Average,
	MIN(dbo.Incidents.DurationSeconds) as Minimum,
	MAX(dbo.Incidents.DurationSeconds) as Maximum
FROM
	dbo.Incidents;