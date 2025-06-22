-- Average cholesterol by gender
SELECT Sex, AVG(Cholesterol) AS AvgCholesterol
FROM sanskrutik.heart_failure_prediction
GROUP BY Sex;
