-- Drop
DROP TABLE IF EXISTS sales_transaction CASCADE;
DROP TABLE IF EXISTS inventory CASCADE;
DROP TABLE IF EXISTS prescription CASCADE;
DROP TABLE IF EXISTS supplier CASCADE;
DROP TABLE IF EXISTS medication CASCADE;
DROP TABLE IF EXISTS doctor	CASCADE;
DROP TABLE IF EXISTS employee CASCADE;
DROP TABLE IF EXISTS patient CASCADE;

-- TABLES -------------------------------

-- Patient
CREATE TABLE patient(
	patient_id SERIAL PRIMARY KEY,
	ssn VARCHAR(11),
	fname VARCHAR(20),
	lname VARCHAR(20),
	dob DATE,
	phone VARCHAR(20),
	address TEXT,
	medical_history TEXT,
	insurance VARCHAR(50)
);

-- Employee
CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	fname VARCHAR(20),
	lname VARCHAR(20),
	dob DATE,
	phone VARCHAR(20),
	address TEXT,
	role VARCHAR(20)
);

-- Doctor
CREATE TABLE doctor(
	doctor_id SERIAL PRIMARY KEY,
	fname VARCHAR(20),
	lname VARCHAR(20),
	specialty VARCHAR(20),
	phone VARCHAR(20),
	license_num VARCHAR(20)
);

-- Medication
CREATE TABLE medication(
	medication_id VARCHAR(13) PRIMARY KEY,
	name VARCHAR(50),
	strength VARCHAR(50),
	dosage_form VARCHAR(50)
);

-- Prescription
CREATE TABLE prescription(
	prescription_id SERIAL PRIMARY KEY,
	doctor_id INT REFERENCES doctor(doctor_id),
	patient_id INT REFERENCES patient(patient_id),
	medication_id VARCHAR(13) REFERENCES medication(medication_id),
	employee_id INT REFERENCES employee(employee_id),
	date_issued DATE,
	quantity INT,
	refills INT,
	directions VARCHAR(100),
	days_supply INT
);
		
-- Inventory
CREATE TABLE inventory(
	inventory_id SERIAL PRIMARY KEY,
	medication_id VARCHAR(13) REFERENCES medication(medication_id),
	employee_id INT REFERENCES employee(employee_id),
	quantity INT,
	reorder_date DATE,
	expiration_date DATE
);

-- Supplier
CREATE TABLE supplier(
	supplier_id SERIAL PRIMARY KEY,
	medication_id VARCHAR(13) REFERENCES medication(medication_id),
	tote_id VARCHAR(8),
	company_name VARCHAR(50),
	employee_id INT REFERENCES employee(employee_id),
	contact_name VARCHAR(50),
	contact_phone VARCHAR(20),
	status VARCHAR(50)
);

-- Sales Transaction
CREATE TABLE sales_transaction(
	transaction_id SERIAL PRIMARY KEY,
	prescription_id INT REFERENCES prescription(prescription_id),
	employee_id INT REFERENCES employee(employee_id),
	transaction_date DATE,
	payment_type VARCHAR(10),
	total_amount DECIMAL(8, 2), -- 8 total digits, 2 of which will be decimals
	receipt_number INT
);