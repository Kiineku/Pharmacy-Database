-- Query 7: Counts total number of prescriptions per patient
SELECT p.patient_id, p.fname || ' ' || p.lname as patient_name, COUNT(pr.prescription_id) AS total_prescriptions
FROM patient p
LEFT JOIN prescription pr ON p.patient_id = pr.patient_id
GROUP BY p.patient_id, p.fname, p.lname
ORDER BY total_prescriptions DESC;