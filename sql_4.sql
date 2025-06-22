-- Patients with high RestingBP and Cholesterol
SELECT *
FROM sanskrutik.heart_failure_prediction
WHERE RestingBP > 140 AND Cholesterol > 250;
