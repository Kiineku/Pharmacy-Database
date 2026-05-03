-- Query 7: Counts total number of prescriptions written by each doctor
SELECT d.fname, d.lname, COUNT(p.prescription_id) AS total_prescriptions
FROM doctor d
JOIN prescription p ON d.doctor_id = p.doctor_id
GROUP BY d.doctor_id;