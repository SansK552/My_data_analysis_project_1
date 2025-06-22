-- Correlation proxy: Age groups and Heart Disease count
SELECT 
  CASE 
    WHEN Age < 40 THEN 'Under 40'
    WHEN Age BETWEEN 40 AND 60 THEN '40–60'
    ELSE 'Over 60'
  END AS AgeGroup,
  COUNT(*) AS Total,
  SUM(HeartDisease) AS WithDisease
FROM sanskrutik.heart_failure_prediction
GROUP BY AgeGroup;
