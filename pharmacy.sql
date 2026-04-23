-- Drop
DROP TABLE IF EXISTS sales_transaction;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS prescription;
DROP TABLE IF EXISTS supplier;
DROP TABLE IF EXISTS medication;
DROP TABLE IF EXISTS doctor;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS patient;

-- Patient
CREATE TABLE patient(
	ssn VARCHAR(11) PRIMARY KEY,
	patient_id SERIAL,
	fname VARCHAR(20),
	lname VARCHAR(20),
	dob DATE,
	phone VARCHAR(20),
	address TEXT,
	medical_history TEXT,
	insurance VARCHAR(50),
);

-- Employee
CREATE TABLE employee();

-- Doctor
CREATE TABLE doctor();

-- Medication
CREATE TABLE medication();

-- Prescription
CREATE TABLE prescription();

-- Inventory
CREATE TABLE inventory();

-- Supplier
CREATE TABLE supplier();

-- Sales Transaction
CREATE TABLE sales_transaction();