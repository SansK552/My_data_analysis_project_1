-- Distribution of Heart Disease by Chest Pain Type
SELECT ChestPainType, COUNT(*) AS Count
FROM sanskrutik.heart_failure_prediction
WHERE HeartDisease = 1
GROUP BY ChestPainType;
