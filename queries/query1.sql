-- Query 1: Retrievee first name, last name, medical history of patients who have Diabetes
SELECT fname, lname, medical_history
FROM patient
WHERE medical_history = 'Diabetes';