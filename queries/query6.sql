-- Query 6: Display doctor, associated patients and prescribed medications for each prescription
SELECT 'Dr. ' || d.lname AS doctor, p.patient_id, pt.fname || ' ' || pt.lname AS patient, m.name AS medication
FROM doctor d
JOIN prescription p ON d.doctor_id = p.doctor_id
JOIN patient pt ON p.patient_id = pt.patient_id
JOIN medication m ON p.medication_id = m.medication_id;