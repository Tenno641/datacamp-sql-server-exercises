SELECT a.RecordID, b.MaxBloodPressure
FROM ChronicKidneyDisease a
JOIN (
	SELECT MAX(BloodPressure) as MaxBloodPressure, Age
	FROM ChronicKidneyDisease
	GROUP BY Age
	) b
ON a.Age = b.Age AND a.BloodPressure = MaxBloodPressure;

/*
	Create a derived table
	- returning Age and MaxBloodPressure; the latter is the maximum of BloodPressure.
	- is taken from the kidney table.
	- is grouped by Age. 
	- blood pressure equal to max blood pressure. 
	- age.
*/