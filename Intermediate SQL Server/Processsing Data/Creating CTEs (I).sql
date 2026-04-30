WITH BloodGlucoseRandom(MaxGlucose)
AS (
	SELECT MAX(BloodGlucoseRandom) as MaxGlucose
	FROM ChronicKidneyDisease
)

SELECT RecordId, b.MaxGlucose
FROM ChronicKidneyDisease a
JOIN BloodGlucoseRandom b 
ON a.BloodGlucoseRandom = b.MaxGlucose

/*
	- Create a CTE `BloodGlucoseRandom` that returns one column (`MaxGlucose`) which contains the maximum `BloodGlucoseRandom` in the table. 
	- Join the CTE to the main table (`Kidney`) on `BloodGlucoseRandom` and `MaxGlucose`.
*/