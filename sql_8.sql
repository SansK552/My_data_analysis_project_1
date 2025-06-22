-- Count of patients grouped by ST_Slope and Heart Disease status
SELECT ST_Slope, HeartDisease, COUNT(*) AS PatientCount
FROM sanskrutik.heart_failure_prediction
GROUP BY ST_Slope, HeartDisease;
