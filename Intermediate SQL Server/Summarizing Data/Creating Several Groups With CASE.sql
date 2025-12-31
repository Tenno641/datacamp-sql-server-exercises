SELECT
	dbo.Incidents.DurationSeconds,
	CASE 
		WHEN dbo.Incidents.DurationSeconds <= 120 THEN 1
		WHEN dbo.Incidents.DurationSeconds > 120 AND dbo.Incidents.DurationSeconds <= 600 THEN 2
		WHEN dbo.Incidents.DurationSeconds > 600 AND dbo.Incidents.DurationSeconds <= 1200 THEN 3
		WHEN dbo.Incidents.DurationSeconds > 1200 AND dbo.Incidents.DurationSeconds <= 5000 THEN 4
		ELSE 5
		END AS SecondGroup
FROM
	dbo.Incidents
ORDER BY
	dbo.Incidents.DurationSeconds;

/*
In this exercise, you will write a CASE statement to group the values in the DurationSeconds into 5 groups based on the following ranges:

+----------------------------+------------+
|     DurationSeconds        | SecondGroup|
+----------------------------+------------+
| <= 120                     |      1     |
| > 120   and <= 600         |      2     |
| > 600   and <= 1200        |      3     |
| > 1200  and <= 5000        |      4     |
| All other values           |      5     |
+----------------------------+------------+
- Create a new column, SecondGroup, that uses the values in the DurationSeconds column based on the ranges mentioned above.
*/