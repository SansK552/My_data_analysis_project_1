-- Max HR by Exercise Angina (Stress Indicator)
SELECT ExerciseAngina, AVG(MaxHR) AS AvgMaxHR
FROM sanskrutik.heart_failure_prediction
GROUP BY ExerciseAngina;
