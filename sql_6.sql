-- Compare average age between those with and without heart disease
SELECT HeartDisease, AVG(Age) AS AvgAge
FROM sanskrutik.heart_failure_prediction
GROUP BY HeartDisease;
