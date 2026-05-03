-- Query 2: Lists all prescriptions issued before June 1, 2026
SELECT *
FROM prescription
WHERE date_issued < '2026-06-01';