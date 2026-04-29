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
	tote_id INT,
	company_name VARCHAR(50),
	employee_id INT REFERENCES employee(employee_id),
	contact_name VARCHAR(50),
	contact_phone VARCHAR(20),
	status VARCHAR(50)
);

-- Sales Transaction
CREATE TABLE sales_transaction(
	transaction_id SERIAL PRIMARY KEY,
	ssn VARCHAR(11) REFERENCES patient(ssn),
	medication_id INT REFERENCES medication(medication_id),
	prescription_id INT REFERENCES prescription(prescription_id),
	employee_id INT REFERENCES employee(employee_id),
	transaction_date DATE,
	payment_type VARCHAR(10),
	total_amount DECIMAL(8, 2), -- 8 total digits, 2 of which will be decimals
	receipt_number INT
);

-- SAMPLE DATA ----------------------------------------------

-- Patients
INSERT INTO patient (ssn, fname, lname, dob, phone, address, medical_history, insurance) VALUES
	('123-45-6789', 'John', 'Brown', '1993-02-23', '512-234-2344', '123 Abc Lane, Dallas, TX', 'Asthma', 'BCBS'),
 	('401-56-3099', 'Liam', 'Carter', '1988-01-15', '214-555-4101', '742 Maple St, Dallas, TX', 'Hypertension', 'Aetna'),
    ('523-62-9443', 'Emma', 'Nguyen', '1995-06-22', '469-555-4102', '88 Oak Ave, Plano, TX', 'None', 'Cigna'),
    ('633-75-4196', 'Noah', 'Patel', '1979-03-11', '972-555-4103', '15 Cedar Dr, Irving, TX', 'Asthma', 'BCBS'),
    ('748-89-3063', 'Olivia', 'Garcia', '2001-09-09', '214-555-4104', '203 Pine St, Richardson, TX', 'None', 'UHC'),
    ('854-90-3354', 'Elijah', 'Kim', '1965-12-30', '469-555-4105', '55 Lake Blvd, Garland, TX', 'Diabetes', 'Medicare'),
	('961-01-4106', 'Ava', 'Lopez', '1992-07-18', '972-555-4106', '77 Ridge Rd, Frisco, TX', 'None', 'CHRISTUS'),
	('177-12-7708', 'William', 'Singh', '1980-02-02', '214-555-4107', '102 Elm St, Addison, TX', 'Arthritis', 'Cigna'),
	('289-28-0978', 'Sophia', 'Adams', '1975-11-25', '469-555-4108', '900 Cedar Ln, Dallas, TX', 'Hypertension', 'BCBS'),
	('395-35-7882', 'James', 'Baker', '1998-04-05', '972-555-4109', '33 Birch Rd, Plano, TX', 'None', 'Ambetter'),
	('406-41-1861', 'Isabella', 'Hill', '1983-08-13', '214-555-4110', '12 Spring Valley Rd, Richardson, TX', 'Migraine', 'Aetna'),
	('512-56-6246', 'Benjamin', 'Ward', '1969-05-17', '469-555-4111', '500 Mockingbird Ln, Dallas, TX', 'Heart Disease, Penicillin Allergy, ', 'Medicare'),
	('624-68-4979', 'Mia', 'Torres', '2003-10-21', '972-555-4112', '18 Meadow Rd, Frisco, TX', 'None', 'UHC'),
	('738-71-1550', 'Lucas', 'Reed', '1991-01-08', '214-555-4113', '44 Lakeview Dr, Irving, TX', 'Asthma, Amnesia, Chlamydia', 'Cigna'),
	('844-80-3514', 'Charlotte', 'Cook', '1986-06-29', '469-555-4114', '77 Forest Park Rd, Garland, TX', 'Anxiety', 'BCBS'),
	('957-99-5439', 'Henry', 'Morgan', '1972-09-14', '972-555-4115', '1200 Ross Ave, Dallas, TX', 'Diabetes', 'Medicare'),
	('163-07-9743', 'Amelia', 'Bell', '1999-12-01', '214-555-4116', '55 Main St, Lewisville, TX', 'None', 'CHRISTUS'),
	('274-10-9759', 'Alexander', 'Murphy', '1984-03-03', '469-555-4117', '890 Preston Rd, Plano, TX', 'Malaria', 'Aetna'),
	('385-29-8817', 'Harper', 'Bailey', '1997-07-07', '972-555-4118', '600 Greenville Ave, Dallas, TX', 'None', 'UHC'),
	('492-31-0110', 'Daniel', 'Rivera', '1978-11-11', '214-555-4119', '2500 Belt Line Rd, Addison, TX', 'Arthritis, Rabies', 'Cigna'),
	('502-47-4120', 'Evelyn', 'Cooper', '1960-02-19', '469-555-4120', '3000 Oak Lawn Ave, Dallas, TX', 'COPD', 'Medicare'),
	('615-52-3994','Logan','Flores','1990-01-01','972-555-4121','1010 Legacy Dr, Plano, TX','None','BCBS'),
	('728-67-9106','Ella','Gomez','1991-02-02','214-555-4122','2020 Belt Line Rd, Irving, TX','None','Aetna'),
	('835-71-8784','Jackson','Diaz','1992-03-03','469-555-4123','3030 Main St, Dallas, TX','Anthrax, Salmonella','Cigna'),
	('941-89-5159','Avery','Hayes','1993-04-04','972-555-4124','4040 Shiloh Rd, Garland, TX','None','UHC'),
	('150-90-0722','Sebastian','Myers','1994-05-05','214-555-4125','5050 Knox St, Dallas, TX','Hypertension','BCBS'),
	('268-05-6805','Zoe','Knight','1987-09-09','469-555-4126','6060 Coit Rd, Plano, TX','Anxiety','Ambetter'),
	('376-14-8394','Matthew','Brooks','1985-10-10','972-555-4127','7070 Forest Ln, Dallas, TX','Schizophrenia','Cigna'),
	('480-27-4003','Chloe','Kelly','1977-11-11','214-555-4128','8080 Main St, Richardson, TX','Diabetes, Gonorrhea','BCBS'),
	('599-34-6927','David','Price','1996-12-12','469-555-4129','9090 Abram St, Carrollton, TX','None','UHC'),
	('608-41-5214','Lily','Ross','2000-01-20','972-555-4130','1111 Greenville Ave, Dallas, TX','Varicella','Aetna'),
	('711-56-4180','Mason','Butler','1992-02-14','214-555-4180','8000 Coit Rd, Plano, TX','None','Cigna'),
	('824-63-9399','Noah','Carter','1988-06-18','469-555-4190','9999 Preston Rd, Dallas, TX','Meningococcal disease','BCBS'),
	('935-78-3280', 'Grace', 'Evans', '1993-05-14', '214-555-4131', '2200 Mockingbird Ln, Dallas, TX', 'None', 'Aetna'),
	('104-82-7217', 'Ethan', 'Collins', '1987-09-02', '469-555-4132', '1450 Legacy Dr, Plano, TX', 'Asthma', 'Cigna'),
	('213-93-2356', 'Hannah', 'Ward', '1999-11-23', '972-555-4133', '8800 Preston Rd, Dallas, TX', 'None', 'BCBS'),
	('328-08-1152', 'Logan', 'Mitchell', '1978-03-19', '214-555-4134', '3020 Greenville Ave, Dallas, TX', 'Atherosclerosis', 'Medicare'),
	('434-11-2532', 'Chloe', 'Scott', '1995-07-08', '469-555-4135', '101 Main St, Richardson, TX', 'None', 'UHC'),
	('546-87-4136', 'Daniel', 'Turner', '1984-12-11', '972-555-4136', '4500 Belt Line Rd, Addison, TX', 'Epilepsy', 'Cigna'),
	('657-77-5859', 'Ava', 'Phillips', '2001-02-14', '214-555-4137', '77 Main St, Garland, TX', 'None', 'Aetna'),
	('762-80-7996', 'Matthew', 'Campbell', '1990-06-30', '469-555-4138', '6000 Coit Rd, Plano, TX', 'Asthma', 'BCBS'),
	('871-26-4789', 'Zoe', 'Parker', '1982-10-05', '972-555-4139', '3000 Main St, Dallas, TX', 'Anxiety', 'Ambetter'),
	('980-24-6274', 'Jacob', 'Edwards', '1976-01-27', '214-555-4140', '1200 Spring Valley Rd, Richardson, TX', 'Heart Disease', 'Medicare'),
	('194-39-3456', 'Ella', 'Reed', '1998-08-16', '469-555-4141', '9100 Preston Rd, Frisco, TX', 'None', 'Cigna'),
	('209-17-6125', 'Noah', 'Murphy', '1991-03-09', '972-555-4142', '2400 Belt Line Rd, Carrollton, TX', 'Asthma', 'BCBS'),
	('315-96-0465', 'Mia', 'Rogers', '2000-12-21', '214-555-4143', '88 Oak St, Dallas, TX', 'None', 'UHC'),
	('426-95-4177', 'William', 'Cook', '1985-05-14', '469-555-4144', '5000 Coit Rd, Plano, TX', 'Hypertension', 'Aetna'),
	('538-58-6260', 'Lily', 'Bailey', '1997-09-29', '972-555-4145', '7000 Greenville Ave, Dallas, TX', 'None', 'Cigna'),
	('645-24-4146', 'James', 'Hughes', '1983-11-11', '214-555-4146', '3300 Mockingbird Ln, Dallas, TX', 'Diabetes', 'BCBS'),
	('752-06-1950', 'Amelia', 'Ward', '1994-02-06', '469-555-4147', '4100 Main St, Richardson, TX', 'None', 'UHC'),
	('867-90-2801', 'Benjamin', 'Brooks', '1979-07-18', '972-555-4148', '1500 Legacy Dr, Plano, TX', 'Arthritis', 'Medicare'),
	('971-66-0877', 'Harper', 'Sanders', '1996-04-25', '214-555-4149', '900 Main St, Dallas, TX', 'None', 'Ambetter'),
	('182-38-1793', 'Lucas', 'Price', '1988-08-08', '469-555-4150', '2300 Preston Rd, Frisco, TX', 'Asthma', 'Cigna'),
	('295-19-5184', 'Evelyn', 'Long', '1969-01-17', '972-555-4151', '7800 Coit Rd, Plano, TX', 'COPD', 'Medicare'),
	('300-10-9643', 'Daniel', 'Ross', '1992-06-12', '214-555-4152', '600 Greenville Ave, Dallas, TX', 'None', 'Aetna'),
	('411-62-8941', 'Chloe', 'Powell', '1995-10-10', '469-555-4153', '4400 Belt Line Rd, Addison, TX', 'Anxiety', 'BCBS'),
	('523-55-2502', 'Logan', 'Butler', '1981-03-03', '972-555-4154', '1100 Main St, Dallas, TX', 'Pneumonia', 'Cigna'),
	('637-35-4430', 'Ella', 'Barnes', '2002-07-07', '214-555-4155', '9200 Preston Rd, Plano, TX', 'None', 'UHC'),
	('741-57-6094', 'Jackson', 'Foster', '1990-09-19', '469-555-4156', '3100 Main St, Dallas, TX', 'Kidney Disease', 'BCBS'),
	('856-59-2597', 'Avery', 'Gray', '1993-12-12', '972-555-4157', '7600 Coit Rd, Plano, TX', 'None', 'Aetna'),
	('969-47-0401', 'Sebastian', 'James', '1986-04-04', '214-555-4158', '2000 Greenville Ave, Dallas, TX', 'Listeriosis', 'Cigna'),
	('171-18-2816', 'Zoe', 'Coleman', '1997-11-30', '469-555-4159', '1800 Main St, Richardson, TX', 'None', 'BCBS'),
	('284-50-5545', 'Matthew', 'Jenkins', '1984-02-22', '972-555-4160', '5400 Belt Line Rd, Carrollton, TX', 'Hypertension', 'UHC'),
	('398-19-0837', 'Lily', 'Perry', '1999-05-15', '214-555-4161', '9900 Preston Rd, Frisco, TX', 'None', 'Ambetter'),
	('407-67-0751', 'David', 'Howard', '1975-09-09', '469-555-4162', '100 Main St, Dallas, TX', 'Heart Disease', 'Medicare'),
	('512-61-3362', 'Mia', 'Ward', '2001-01-01', '972-555-4163', '2500 Coit Rd, Plano, TX', 'None', 'Cigna'),
	('636-86-4164', 'Henry', 'Fisher', '1989-06-06', '214-555-4164', '4200 Greenville Ave, Dallas, TX', 'Asthma', 'BCBS'),
	('744-87-5359', 'Amelia', 'Ramirez', '1996-08-08', '469-555-4165', '3500 Belt Line Rd, Addison, TX', 'None', 'Aetna'),
	('851-22-2305', 'Alexander', 'Brooks', '1980-10-10', '972-555-4166', '8800 Coit Rd, Plano, TX', 'Diabetes', 'Cigna'),
	('968-36-3319', 'Harper', 'Watson', '1993-03-03', '214-555-4167', '7700 Main St, Dallas, TX', 'None', 'UHC'),
	('592-17-8043','Caleb','Harris','1989-04-12','214-555-4301','2100 Ross Ave, Dallas, TX','Asthma','Cigna'),
	('847-62-1935','Nora','Simmons','1996-07-23','469-555-4302','4501 Greenville Ave, Dallas, TX','None','UHC'),
	('301-95-7724','Isaac','Cole','1974-11-05','972-555-4303','7800 Coit Rd, Plano, TX','Diabetes','Medicare'),
	('664-28-5109','Leah','Foster','2002-02-17','214-555-4304','1200 Main St, Richardson, TX','None','Aetna'),
	('918-44-2673','Owen','Bryant','1983-09-30','469-555-4305','3200 Belt Line Rd, Addison, TX','Colitis, Anemia','BCBS'),
	('735-09-8816','Scarlett','Griffin','1995-01-11','972-555-4306','6400 Preston Rd, Plano, TX','None','Ambetter'),
	('482-77-1942','Dylan','Hayes','1987-06-06','214-555-4307','1500 Mockingbird Ln, Dallas, TX','Diabetes, Alzheimers','Cigna'),
	('129-63-5507','Aria','West','1999-08-21','469-555-4308','8700 Shiloh Rd, Garland, TX','None','UHC'),
	('906-11-4285','Eli','Jordan','1971-03-14','972-555-4309','5000 Greenville Ave, Dallas, TX','Osteoporosis, Dementia','Medicare'),
	('357-88-6012','Hazel','Woods','2000-12-02','214-555-4310','200 Spring Valley Rd, Richardson, TX','None','Aetna'),
	('743-26-9901','Aaron','Reyes','1986-05-18','469-555-4311','9100 Preston Rd, Dallas, TX','High Cholesterol, Hypertension','BCBS'),
	('268-90-3477','Luna','Mendoza','1993-09-09','972-555-4312','3000 Legacy Dr, Plano, TX','None','Cigna'),
	('815-33-7620','Nathan','Castro','1981-07-25','214-555-4313','1400 Main St, Carrollton, TX','Cirrhosis','UHC'),
	('490-72-1586','Violet','Ortiz','1997-11-19','469-555-4314','6700 Coit Rd, Plano, TX','Parkinsons Disease','Ambetter'),
	('672-14-8395','Connor','Watkins','1990-10-03','972-555-4315','2500 Greenville Ave, Dallas, TX','Asthma','BCBS'),
	('581-97-2048','Ellie','Stephens','1985-02-27','214-555-4316','8900 Preston Rd, Frisco, TX','Depression, COPD','Aetna'),
	('734-51-6629','Hunter','Porter','1978-06-15','469-555-4317','4300 Belt Line Rd, Addison, TX','Arthritis','Medicare'),
	('209-84-7713','Stella','Barnett','2001-01-08','972-555-4318','7700 Main St, Dallas, TX','Asthma, Osteoporosis','UHC'),
	('867-39-1452','Julian','Cruz','1984-04-04','214-555-4319','2200 Coit Rd, Plano, TX','Diabetes, Dementia','Cigna'),
	('456-23-9081','Paisley','Holland','1998-07-07','469-555-4320','3300 Greenville Ave, Dallas, TX','None','BCBS'),
	('721-68-3374','Dominic','Santos','1979-09-29','972-555-4321','1200 Belt Line Rd, Richardson, TX','Hypertension','Aetna'),
	('398-05-6621','Naomi','Lucas','1994-03-12','214-555-4322','4800 Main St, Dallas, TX','None','Ambetter'),
	('954-71-2806','Evan','Bishop','1982-12-20','469-555-4323','7200 Preston Rd, Plano, TX','Arthritis, Anemia, Asthma','Cigna'),
	('617-42-9930','Willow','Snyder','1996-05-05','972-555-4324','2100 Spring Valley Rd, Richardson, TX','None','UHC'),
	('883-19-5704','Jason','Ramsey','1976-08-16','214-555-4325','6000 Greenville Ave, Dallas, TX','Heart Disease, COPD','Medicare'),
	('540-66-8317','Bella','Hicks','2003-02-02','469-555-4326','3500 Coit Rd, Plano, TX','None','Aetna'),
	('276-83-4095','Miles','Fleming','1988-11-11','972-555-4327','9800 Preston Rd, Dallas, TX','Diabetes','BCBS'),
	('691-25-7482','Sadie','Love','1992-06-30','214-555-4328','2700 Belt Line Rd, Carrollton, TX','None','Cigna'),
	('804-37-2196','Brayden','Greer','1987-01-21','469-555-4329','4100 Main St, Garland, TX','Hypertension, High Cholesterol','UHC'),
	('335-92-6841','Claire','Casey','1999-09-18','972-555-4330','5600 Greenville Ave, Dallas, TX','None','Ambetter');

-- Employees
INSERT INTO employee (fname, lname, dob, phone, address, role) VALUES
	('Alex', 'Ramirez', '1990-03-14', '214-555-7821', '2354 Maple St, Dallas, TX', 'Technician'),
	('Jordan', 'Lee', '1987-11-22', '469-555-1934', '4326 Oak Ave, Plano, TX', 'Technician'),
	('Taylor', 'Nguyen', '1995-06-08', '972-555-6672', '15 Pine Rd, Richardson, TX', 'Technician'),
	('Morgan', 'Patel', '1992-09-30', '214-555-4459', '3218 Cedar Blvd, Garland, TX', 'Technician'),
	('Casey', 'Johnson', '1985-01-17', '469-555-8823', '87 Birch Ln, Irving, TX', 'Pharmacist'),
	('Riley', 'Smith', '1991-07-25', '972-555-1290', '9124 Spruce Dr, Carrollton, TX', 'Pharmacist');

-- Doctors
INSERT INTO doctor (fname, lname, specialty, phone, license_num) VALUES

-- Medications
INSERT INTO medication (name, strength, dosage) VALUES

-- Prescriptions
INSERT INTO prescription (doctor_id, ssn, medication_id, employee_id, drug_name, date_issued, expiration_date, quantity, dosage, refills) VALUES

-- Inventory
INSERT INTO inventory (medication_id, employee_id, quantity, reorder_date, expiration_date) VALUES

-- Suppliers
INSERT INTO supplier (medication_id, tote_id, company_name, employee_id, contact_name, contact_phone, status) VALUES

-- Sales Transactions
INSERT INTO sales_transaction (ssn, medication_id, prescription_id, employee_id, transaction_date, payment_type, total_amount, receipt_number) VALUES

-- QUERIES -------------------------------

/* To test tables 
SELECT *
FROM patient;

SELECT *
FROM employee;
*/