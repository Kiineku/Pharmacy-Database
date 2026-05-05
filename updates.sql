-- Update

UPDATE patient
SET insurance = 'UHC'
WHERE fname = 'Noah' AND lname = 'Patel'
RETURNING *;

UPDATE employee
SET role = 'Lead Technician'
WHERE fname = 'Taylor' AND lname = 'Nguyen'
RETURNING *;

UPDATE doctor
SET specialty = 'Internal Medicine'
WHERE fname = 'Wendy' AND lname = 'Pearl'
RETURNING *;

UPDATE medication
SET strength = '75mg'
WHERE medication_id = '11957-9284-03'
RETURNING *;

UPDATE prescription
SET refills = refills + 1
WHERE prescription_id = 7
RETURNING *;

UPDATE inventory
SET quantity = quantity - 15
WHERE medication_id = '83457-1029-05'
RETURNING *;

UPDATE supplier
SET status = 'Inactive'
WHERE medication_id = '28573-1947-03'
RETURNING *;

UPDATE sales_transaction
SET total_amount = total_amount + 7,
    payment_type = 'Cash'
WHERE receipt_number = 105
RETURNING *;

-- Delete

DELETE FROM sales_transaction
WHERE receipt_number = 108
RETURNING *;

DELETE FROM supplier
WHERE medication_id = '76319-2947-01'
RETURNING *;

DELETE FROM inventory
WHERE medication_id = '27362-0830-02'
RETURNING *;