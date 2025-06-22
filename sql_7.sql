-- Find top 5 highest cholesterol values with associated patient info
SELECT Age, Sex, Cholesterol, HeartDisease
FROM sanskrutik.heart_failure_prediction
ORDER BY Cholesterol DESC
LIMIT 5;
