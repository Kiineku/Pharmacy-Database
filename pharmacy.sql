
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
	insurance VARCHAR(50)
);

-- Patient Data
INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('123-45-6789', 'John', 'Brown', '1993-02-23', '512-234-2344', '123 Abc Lane, Dallas, TX', 'Asthma', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('401-10-4101', 'Liam', 'Carter', '1988-01-15', '214-555-4101', '742 Maple St, Dallas, TX', 'Hypertension', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('523-10-4102', 'Emma', 'Nguyen', '1995-06-22', '469-555-4102', '88 Oak Ave, Plano, TX', 'None', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('633-10-4103', 'Noah', 'Patel', '1979-03-11', '972-555-4103', '15 Cedar Dr, Irving, TX', 'Asthma', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('748-10-4104', 'Olivia', 'Garcia', '2001-09-09', '214-555-4104', '203 Pine St, Richardson, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('854-10-4105', 'Elijah', 'Kim', '1965-12-30', '469-555-4105', '55 Lake Blvd, Garland, TX', 'Diabetes', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('961-10-4106', 'Ava', 'Lopez', '1992-07-18', '972-555-4106', '77 Ridge Rd, Frisco, TX', 'None', 'CHRISTUS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('177-10-4107', 'William', 'Singh', '1980-02-02', '214-555-4107', '102 Elm St, Addison, TX', 'Arthritis', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('289-10-4108', 'Sophia', 'Adams', '1975-11-25', '469-555-4108', '900 Cedar Ln, Dallas, TX', 'Hypertension', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('395-10-4109', 'James', 'Baker', '1998-04-05', '972-555-4109', '33 Birch Rd, Plano, TX', 'None', 'Ambetter');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('406-10-4110', 'Isabella', 'Hill', '1983-08-13', '214-555-4110', '12 Spring Valley Rd, Richardson, TX', 'Migraine', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('512-10-4111', 'Benjamin', 'Ward', '1969-05-17', '469-555-4111', '500 Mockingbird Ln, Dallas, TX', 'Heart Disease', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('624-10-4112', 'Mia', 'Torres', '2003-10-21', '972-555-4112', '18 Meadow Rd, Frisco, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('738-10-4113', 'Lucas', 'Reed', '1991-01-08', '214-555-4113', '44 Lakeview Dr, Irving, TX', 'Asthma', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('844-10-4114', 'Charlotte', 'Cook', '1986-06-29', '469-555-4114', '77 Forest Park Rd, Garland, TX', 'Anxiety', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('957-10-4115', 'Henry', 'Morgan', '1972-09-14', '972-555-4115', '1200 Ross Ave, Dallas, TX', 'Diabetes', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('163-10-4116', 'Amelia', 'Bell', '1999-12-01', '214-555-4116', '55 Main St, Lewisville, TX', 'None', 'CHRISTUS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('274-10-4117', 'Alexander', 'Murphy', '1984-03-03', '469-555-4117', '890 Preston Rd, Plano, TX', 'Hypertension', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('385-10-4118', 'Harper', 'Bailey', '1997-07-07', '972-555-4118', '600 Greenville Ave, Dallas, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('492-10-4119', 'Daniel', 'Rivera', '1978-11-11', '214-555-4119', '2500 Belt Line Rd, Addison, TX', 'Arthritis', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('502-10-4120', 'Evelyn', 'Cooper', '1960-02-19', '469-555-4120', '3000 Oak Lawn Ave, Dallas, TX', 'COPD', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('615-10-4121','Logan','Flores','1990-01-01','972-555-4121','1010 Legacy Dr, Plano, TX','None','BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('728-10-4122','Ella','Gomez','1991-02-02','214-555-4122','2020 Belt Line Rd, Irving, TX','Asthma','Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('835-10-4123','Jackson','Diaz','1992-03-03','469-555-4123','3030 Main St, Dallas, TX','Diabetes','Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('941-10-4124','Avery','Hayes','1993-04-04','972-555-4124','4040 Shiloh Rd, Garland, TX','None','UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('150-10-4125','Sebastian','Myers','1994-05-05','214-555-4125','5050 Knox St, Dallas, TX','Hypertension','BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('268-10-4126','Zoe','Knight','1987-09-09','469-555-4126','6060 Coit Rd, Plano, TX','Anxiety','Ambetter');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('376-10-4127','Matthew','Brooks','1985-10-10','972-555-4127','7070 Forest Ln, Dallas, TX','Asthma','Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('480-10-4128','Chloe','Kelly','1977-11-11','214-555-4128','8080 Main St, Richardson, TX','Diabetes','BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('599-10-4129','David','Price','1996-12-12','469-555-4129','9090 Abram St, Carrollton, TX','None','UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('608-10-4130','Lily','Ross','2000-01-20','972-555-4130','1111 Greenville Ave, Dallas, TX','Migraine','Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('711-10-4180','Mason','Butler','1992-02-14','214-555-4180','8000 Coit Rd, Plano, TX','None','Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('824-10-4190','Noah','Carter','1988-06-18','469-555-4190','9999 Preston Rd, Dallas, TX','Anxiety','BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('935-10-4131', 'Grace', 'Evans', '1993-05-14', '214-555-4131', '2200 Mockingbird Ln, Dallas, TX', 'None', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('104-10-4132', 'Ethan', 'Collins', '1987-09-02', '469-555-4132', '1450 Legacy Dr, Plano, TX', 'Asthma', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('213-10-4133', 'Hannah', 'Ward', '1999-11-23', '972-555-4133', '8800 Preston Rd, Dallas, TX', 'None', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('328-10-4134', 'Logan', 'Mitchell', '1978-03-19', '214-555-4134', '3020 Greenville Ave, Dallas, TX', 'Hypertension', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('434-10-4135', 'Chloe', 'Scott', '1995-07-08', '469-555-4135', '101 Main St, Richardson, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('546-10-4136', 'Daniel', 'Turner', '1984-12-11', '972-555-4136', '4500 Belt Line Rd, Addison, TX', 'Diabetes', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('657-10-4137', 'Ava', 'Phillips', '2001-02-14', '214-555-4137', '77 Main St, Garland, TX', 'None', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('762-10-4138', 'Matthew', 'Campbell', '1990-06-30', '469-555-4138', '6000 Coit Rd, Plano, TX', 'Asthma', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('871-10-4139', 'Zoe', 'Parker', '1982-10-05', '972-555-4139', '3000 Main St, Dallas, TX', 'Anxiety', 'Ambetter');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('980-10-4140', 'Jacob', 'Edwards', '1976-01-27', '214-555-4140', '1200 Spring Valley Rd, Richardson, TX', 'Heart Disease', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('194-10-4141', 'Ella', 'Reed', '1998-08-16', '469-555-4141', '9100 Preston Rd, Frisco, TX', 'None', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('209-10-4142', 'Noah', 'Murphy', '1991-03-09', '972-555-4142', '2400 Belt Line Rd, Carrollton, TX', 'Asthma', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('315-10-4143', 'Mia', 'Rogers', '2000-12-21', '214-555-4143', '88 Oak St, Dallas, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('426-10-4144', 'William', 'Cook', '1985-05-14', '469-555-4144', '5000 Coit Rd, Plano, TX', 'Hypertension', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('538-10-4145', 'Lily', 'Bailey', '1997-09-29', '972-555-4145', '7000 Greenville Ave, Dallas, TX', 'None', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('645-10-4146', 'James', 'Hughes', '1983-11-11', '214-555-4146', '3300 Mockingbird Ln, Dallas, TX', 'Diabetes', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('752-10-4147', 'Amelia', 'Ward', '1994-02-06', '469-555-4147', '4100 Main St, Richardson, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('867-10-4148', 'Benjamin', 'Brooks', '1979-07-18', '972-555-4148', '1500 Legacy Dr, Plano, TX', 'Arthritis', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('971-10-4149', 'Harper', 'Sanders', '1996-04-25', '214-555-4149', '900 Main St, Dallas, TX', 'None', 'Ambetter');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('182-10-4150', 'Lucas', 'Price', '1988-08-08', '469-555-4150', '2300 Preston Rd, Frisco, TX', 'Asthma', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('295-10-4151', 'Evelyn', 'Long', '1969-01-17', '972-555-4151', '7800 Coit Rd, Plano, TX', 'COPD', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('300-10-4152', 'Daniel', 'Ross', '1992-06-12', '214-555-4152', '600 Greenville Ave, Dallas, TX', 'None', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('411-10-4153', 'Chloe', 'Powell', '1995-10-10', '469-555-4153', '4400 Belt Line Rd, Addison, TX', 'Anxiety', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('523-10-4154', 'Logan', 'Butler', '1981-03-03', '972-555-4154', '1100 Main St, Dallas, TX', 'Hypertension', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('637-10-4155', 'Ella', 'Barnes', '2002-07-07', '214-555-4155', '9200 Preston Rd, Plano, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('741-10-4156', 'Jackson', 'Foster', '1990-09-19', '469-555-4156', '3100 Main St, Dallas, TX', 'Diabetes', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('856-10-4157', 'Avery', 'Gray', '1993-12-12', '972-555-4157', '7600 Coit Rd, Plano, TX', 'None', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('969-10-4158', 'Sebastian', 'James', '1986-04-04', '214-555-4158', '2000 Greenville Ave, Dallas, TX', 'Asthma', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('171-10-4159', 'Zoe', 'Coleman', '1997-11-30', '469-555-4159', '1800 Main St, Richardson, TX', 'None', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('284-10-4160', 'Matthew', 'Jenkins', '1984-02-22', '972-555-4160', '5400 Belt Line Rd, Carrollton, TX', 'Hypertension', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('398-10-4161', 'Lily', 'Perry', '1999-05-15', '214-555-4161', '9900 Preston Rd, Frisco, TX', 'None', 'Ambetter');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('407-10-4162', 'David', 'Howard', '1975-09-09', '469-555-4162', '100 Main St, Dallas, TX', 'Heart Disease', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('512-10-4163', 'Mia', 'Ward', '2001-01-01', '972-555-4163', '2500 Coit Rd, Plano, TX', 'None', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('636-10-4164', 'Henry', 'Fisher', '1989-06-06', '214-555-4164', '4200 Greenville Ave, Dallas, TX', 'Asthma', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('744-10-4165', 'Amelia', 'Ramirez', '1996-08-08', '469-555-4165', '3500 Belt Line Rd, Addison, TX', 'None', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('851-10-4166', 'Alexander', 'Brooks', '1980-10-10', '972-555-4166', '8800 Coit Rd, Plano, TX', 'Diabetes', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('968-10-4167', 'Harper', 'Watson', '1993-03-03', '214-555-4167', '7700 Main St, Dallas, TX', 'None', 'UHC');

/* To test table
SELECT *
FROM patient;
*/

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
	medication_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	strength VARCHAR(50),
	dosage VARCHAR(50)
);

-- Prescription
CREATE TABLE prescription(
	prescription_id SERIAL PRIMARY KEY,
	doctor_id INT REFERENCES doctor(doctor_id),
	ssn VARCHAR(11) REFERENCES patient(ssn),
	medication_id INT REFERENCES medication(medication_id),
	employee_id INT REFERENCES employee(employee_id),
	drug_name VARCHAR(50),
	date_issued DATE,
	expiration_date DATE,
	quantity INT,
	dosage VARCHAR(20),
	refills INT
);
		
-- Inventory
CREATE TABLE inventory(
	inventory_id SERIAL PRIMARY KEY,
	medication_id INT REFERENCES medication(medication_id),
	employee_id INT REFERENCES employee(employee_id),
	quantity INT,
	reorder_date DATE,
	expiration_date DATE
);

-- Supplier
CREATE TABLE supplier(
	supplier_id SERIAL PRIMARY KEY,
	medication_id INT REFERENCES medication(medication_id),
	employee_id INT REFERENCES employee(employee_id)
);

-- Sales Transaction
CREATE TABLE sales_transaction();
