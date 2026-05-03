-- Query 8: Finds most frequently prescribed medication and # of times prescribed
SELECT m.name, COUNT(*) AS times_prescribed
FROM prescription p
JOIN medication m ON p.medication_id = m.medication_id
GROUP BY m.name
ORDER BY times_prescribed DESC
LIMIT 1;