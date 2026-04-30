SELECT a.Age, a.RecordID, b.MaxGlucose
FROM ChronicKidneyDisease a
JOIN (
	SELECT MAX(BloodGlucoseRandom) as MaxGlucose, Age 
	FROM ChronicKidneyDisease 
	GROUP BY Age
	) b
ON a.Age = b.Age
ORDER BY Age;

/*
	- Return `MaxGlucose` from the derived table.

	- Join the derived table to the main query on `Age`.
*/