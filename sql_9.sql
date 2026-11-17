SELECT COUNT(*) AS ZeroCholesterol
FROM demo.heart_failure_prediction
WHERE Cholesterol = 0;


SELECT Sex, AVG(NULLIF(Cholesterol, 0)) AS AvgCholesterol_Corrected
FROM demo.heart_failure_prediction
GROUP BY Sex;