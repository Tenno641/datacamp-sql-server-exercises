WITH BloodPressure(MaxBloodPressure)
AS (
	SELECT MAX(BloodPressure) AS MaxBloodPressure
	FROM ChronicKidneyDisease
)

SELECT a.RecordID, b.MaxBloodPressure, a.Age
FROM ChronicKidneyDisease a
JOIN BloodPressure b
ON a.BloodPressure = b.MaxBloodPressure

/*
	- Create a CTE `BloodPressure` that returns one column (`MaxBloodPressure`) which contains the maximum `BloodPressure` in the table. 
	- Join this CTE (using an alias `b`) to the main table (`Kidney`) to return information about patients with the maximum `BloodPressure`.
*/