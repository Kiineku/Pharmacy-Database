/*
-- Drop
DROP TABLE IF EXISTS sales_transaction;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS prescription;
DROP TABLE IF EXISTS supplier;
DROP TABLE IF EXISTS medication;
DROP TABLE IF EXISTS doctor;
DROP TABLE IF EXISTS employee;
*/
DROP TABLE IF EXISTS patient CASCADE;

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
VALUES ('401-56-3099', 'Liam', 'Carter', '1988-01-15', '214-555-4101', '742 Maple St, Dallas, TX', 'Hypertension', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('523-62-9443', 'Emma', 'Nguyen', '1995-06-22', '469-555-4102', '88 Oak Ave, Plano, TX', 'None', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('633-75-4196', 'Noah', 'Patel', '1979-03-11', '972-555-4103', '15 Cedar Dr, Irving, TX', 'Asthma', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('748-89-3063', 'Olivia', 'Garcia', '2001-09-09', '214-555-4104', '203 Pine St, Richardson, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('854-90-3354', 'Elijah', 'Kim', '1965-12-30', '469-555-4105', '55 Lake Blvd, Garland, TX', 'Diabetes', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('961-01-4106', 'Ava', 'Lopez', '1992-07-18', '972-555-4106', '77 Ridge Rd, Frisco, TX', 'None', 'CHRISTUS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('177-12-7708', 'William', 'Singh', '1980-02-02', '214-555-4107', '102 Elm St, Addison, TX', 'Arthritis', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('289-28-0978', 'Sophia', 'Adams', '1975-11-25', '469-555-4108', '900 Cedar Ln, Dallas, TX', 'Hypertension', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('395-35-7882', 'James', 'Baker', '1998-04-05', '972-555-4109', '33 Birch Rd, Plano, TX', 'None', 'Ambetter');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('406-41-1861', 'Isabella', 'Hill', '1983-08-13', '214-555-4110', '12 Spring Valley Rd, Richardson, TX', 'Migraine', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('512-56-6246', 'Benjamin', 'Ward', '1969-05-17', '469-555-4111', '500 Mockingbird Ln, Dallas, TX', 'Heart Disease', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('624-68-4979', 'Mia', 'Torres', '2003-10-21', '972-555-4112', '18 Meadow Rd, Frisco, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('738-71-1550', 'Lucas', 'Reed', '1991-01-08', '214-555-4113', '44 Lakeview Dr, Irving, TX', 'Asthma', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('844-80-3514', 'Charlotte', 'Cook', '1986-06-29', '469-555-4114', '77 Forest Park Rd, Garland, TX', 'Anxiety', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('957-99-5439', 'Henry', 'Morgan', '1972-09-14', '972-555-4115', '1200 Ross Ave, Dallas, TX', 'Diabetes', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('163-07-9743', 'Amelia', 'Bell', '1999-12-01', '214-555-4116', '55 Main St, Lewisville, TX', 'None', 'CHRISTUS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('274-10-9759', 'Alexander', 'Murphy', '1984-03-03', '469-555-4117', '890 Preston Rd, Plano, TX', 'Hypertension', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('385-29-8817', 'Harper', 'Bailey', '1997-07-07', '972-555-4118', '600 Greenville Ave, Dallas, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('492-31-0110', 'Daniel', 'Rivera', '1978-11-11', '214-555-4119', '2500 Belt Line Rd, Addison, TX', 'Arthritis', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('502-47-4120', 'Evelyn', 'Cooper', '1960-02-19', '469-555-4120', '3000 Oak Lawn Ave, Dallas, TX', 'COPD', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('615-52-3994','Logan','Flores','1990-01-01','972-555-4121','1010 Legacy Dr, Plano, TX','None','BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('728-67-9106','Ella','Gomez','1991-02-02','214-555-4122','2020 Belt Line Rd, Irving, TX','Asthma','Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('835-71-8784','Jackson','Diaz','1992-03-03','469-555-4123','3030 Main St, Dallas, TX','Diabetes','Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('941-89-5159','Avery','Hayes','1993-04-04','972-555-4124','4040 Shiloh Rd, Garland, TX','None','UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('150-90-0722','Sebastian','Myers','1994-05-05','214-555-4125','5050 Knox St, Dallas, TX','Hypertension','BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('268-05-6805','Zoe','Knight','1987-09-09','469-555-4126','6060 Coit Rd, Plano, TX','Anxiety','Ambetter');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('376-14-8394','Matthew','Brooks','1985-10-10','972-555-4127','7070 Forest Ln, Dallas, TX','Asthma','Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('480-27-4003','Chloe','Kelly','1977-11-11','214-555-4128','8080 Main St, Richardson, TX','Diabetes','BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('599-34-6927','David','Price','1996-12-12','469-555-4129','9090 Abram St, Carrollton, TX','None','UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('608-41-5214','Lily','Ross','2000-01-20','972-555-4130','1111 Greenville Ave, Dallas, TX','Migraine','Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('711-56-4180','Mason','Butler','1992-02-14','214-555-4180','8000 Coit Rd, Plano, TX','None','Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('824-63-9399','Noah','Carter','1988-06-18','469-555-4190','9999 Preston Rd, Dallas, TX','Anxiety','BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('935-78-3280', 'Grace', 'Evans', '1993-05-14', '214-555-4131', '2200 Mockingbird Ln, Dallas, TX', 'None', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('104-82-7217', 'Ethan', 'Collins', '1987-09-02', '469-555-4132', '1450 Legacy Dr, Plano, TX', 'Asthma', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('213-93-2356', 'Hannah', 'Ward', '1999-11-23', '972-555-4133', '8800 Preston Rd, Dallas, TX', 'None', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('328-08-1152', 'Logan', 'Mitchell', '1978-03-19', '214-555-4134', '3020 Greenville Ave, Dallas, TX', 'Hypertension', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('434-11-2532', 'Chloe', 'Scott', '1995-07-08', '469-555-4135', '101 Main St, Richardson, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('546-87-4136', 'Daniel', 'Turner', '1984-12-11', '972-555-4136', '4500 Belt Line Rd, Addison, TX', 'Diabetes', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('657-77-5859', 'Ava', 'Phillips', '2001-02-14', '214-555-4137', '77 Main St, Garland, TX', 'None', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('762-80-7996', 'Matthew', 'Campbell', '1990-06-30', '469-555-4138', '6000 Coit Rd, Plano, TX', 'Asthma', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('871-26-4789', 'Zoe', 'Parker', '1982-10-05', '972-555-4139', '3000 Main St, Dallas, TX', 'Anxiety', 'Ambetter');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('980-24-6274', 'Jacob', 'Edwards', '1976-01-27', '214-555-4140', '1200 Spring Valley Rd, Richardson, TX', 'Heart Disease', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('194-39-3456', 'Ella', 'Reed', '1998-08-16', '469-555-4141', '9100 Preston Rd, Frisco, TX', 'None', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('209-17-6125', 'Noah', 'Murphy', '1991-03-09', '972-555-4142', '2400 Belt Line Rd, Carrollton, TX', 'Asthma', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('315-96-0465', 'Mia', 'Rogers', '2000-12-21', '214-555-4143', '88 Oak St, Dallas, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('426-95-4177', 'William', 'Cook', '1985-05-14', '469-555-4144', '5000 Coit Rd, Plano, TX', 'Hypertension', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('538-58-6260', 'Lily', 'Bailey', '1997-09-29', '972-555-4145', '7000 Greenville Ave, Dallas, TX', 'None', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('645-24-4146', 'James', 'Hughes', '1983-11-11', '214-555-4146', '3300 Mockingbird Ln, Dallas, TX', 'Diabetes', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('752-06-1950', 'Amelia', 'Ward', '1994-02-06', '469-555-4147', '4100 Main St, Richardson, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('867-90-2801', 'Benjamin', 'Brooks', '1979-07-18', '972-555-4148', '1500 Legacy Dr, Plano, TX', 'Arthritis', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('971-66-0877', 'Harper', 'Sanders', '1996-04-25', '214-555-4149', '900 Main St, Dallas, TX', 'None', 'Ambetter');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('182-38-1793', 'Lucas', 'Price', '1988-08-08', '469-555-4150', '2300 Preston Rd, Frisco, TX', 'Asthma', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('295-19-5184', 'Evelyn', 'Long', '1969-01-17', '972-555-4151', '7800 Coit Rd, Plano, TX', 'COPD', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('300-10-9643', 'Daniel', 'Ross', '1992-06-12', '214-555-4152', '600 Greenville Ave, Dallas, TX', 'None', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('411-62-8941', 'Chloe', 'Powell', '1995-10-10', '469-555-4153', '4400 Belt Line Rd, Addison, TX', 'Anxiety', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('523-55-2502', 'Logan', 'Butler', '1981-03-03', '972-555-4154', '1100 Main St, Dallas, TX', 'Hypertension', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('637-35-4430', 'Ella', 'Barnes', '2002-07-07', '214-555-4155', '9200 Preston Rd, Plano, TX', 'None', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('741-57-6094', 'Jackson', 'Foster', '1990-09-19', '469-555-4156', '3100 Main St, Dallas, TX', 'Diabetes', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('856-59-2597', 'Avery', 'Gray', '1993-12-12', '972-555-4157', '7600 Coit Rd, Plano, TX', 'None', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('969-47-0401', 'Sebastian', 'James', '1986-04-04', '214-555-4158', '2000 Greenville Ave, Dallas, TX', 'Asthma', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('171-18-2816', 'Zoe', 'Coleman', '1997-11-30', '469-555-4159', '1800 Main St, Richardson, TX', 'None', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('284-50-5545', 'Matthew', 'Jenkins', '1984-02-22', '972-555-4160', '5400 Belt Line Rd, Carrollton, TX', 'Hypertension', 'UHC');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('398-19-0837', 'Lily', 'Perry', '1999-05-15', '214-555-4161', '9900 Preston Rd, Frisco, TX', 'None', 'Ambetter');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('407-67-0751', 'David', 'Howard', '1975-09-09', '469-555-4162', '100 Main St, Dallas, TX', 'Heart Disease', 'Medicare');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('512-61-3362', 'Mia', 'Ward', '2001-01-01', '972-555-4163', '2500 Coit Rd, Plano, TX', 'None', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('636-86-4164', 'Henry', 'Fisher', '1989-06-06', '214-555-4164', '4200 Greenville Ave, Dallas, TX', 'Asthma', 'BCBS');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('744-87-5359', 'Amelia', 'Ramirez', '1996-08-08', '469-555-4165', '3500 Belt Line Rd, Addison, TX', 'None', 'Aetna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('851-22-2305', 'Alexander', 'Brooks', '1980-10-10', '972-555-4166', '8800 Coit Rd, Plano, TX', 'Diabetes', 'Cigna');

INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance)
VALUES ('968-36-3319', 'Harper', 'Watson', '1993-03-03', '214-555-4167', '7700 Main St, Dallas, TX', 'None', 'UHC');

SELECT *
FROM patient;

/*
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
*/