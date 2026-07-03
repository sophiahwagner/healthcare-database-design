-- Practice 1: Create columns for a new patient table
CREATE TABLE patients(
        patient_id INTEGER PRIMARY KEY,
        first_name TEXT NOT NULL,
        last_name TEXT NOT NULL,
        email TEXT UNIQUE,
        registration_date TEXT DEFAULT CURRENT_DATE
);

CREATE TABLE clinics(
        clinic_id INTEGER PRIMARY KEY,
        clinic_name TEXT NOT NULL,
        clinic_city TEXT
);

-- Practice 2: Insert new clinic locations
INSERT INTO clinics (clinic_name, clinic_city)
VALUES ('Downtown Urgent Care', 'Lynchburg');

INSERT INTO clinics (clinic_name, clinic_city)
VALUES ('Valley View Hospital', 'Minneapolis'), ('Lakeside Community Clinic', 'Dallas');

SELECT * FROM clinics

-- Practice 3: Correct a clinic's name
UPDATE clinics
SET clinic_name = 'Downtown Care Center'
WHERE clinic_id = 1;

UPDATE clinics
SET clinic_city = 'Tampa', clinic_name = 'Tampa View Hospital'
WHERE clinic_id = 2;

-- Practice 4: Remove a specific clinic record
DELETE FROM clinics
WHERE clinic_id = 3;

-- Practice 5: Add a new column to an existing table
ALTER TABLE clinics
ADD COLUMN phone_number TEXT;

UPDATE clinics 
SET phone_number = '443-119-0203'
WHERE clinic_id = 1;

UPDATE clinics 
SET phone_number = '111-222-3333'
WHERE clinic_id = 2;

--Practice 6: Add capacity table and update Tampa's capacity
ALTER TABLE clinics
ADD COLUMN capacity INTEGER;

UPDATE clinics
SET capacity = 50
WHERE clinic_id = 2;

-- Challenge 1: Create clinic inventory table
CREATE TABLE inventory(
        item_id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        category TEXT,
        serial_num TEXT UNIQUE
);

-- Challenge 2: Bulk insert initial inventory stock
INSERT INTO inventory (name, category, serial_num)
VALUES ('Ultrasound Machine', 'Medical', 'US-990'), ('Dell Latitude Laptop', 'IT', 'LAP-411'), ('Breakroom Refrigerator', 'Appliances', 'REF-002');

SELECT * FROM inventory

-- Challenge 3: Add status column and flag laptop for repair
ALTER TABLE inventory
ADD COLUMN status TEXT;

UPDATE inventory
SET status = 'In Repair'
WHERE item_id = 2;

-- Challenge 4: Build a real-time patient check-in log
CREATE TABLE check_ins(
        check_in_id INTEGER PRIMARY KEY,
        patient_id INTEGER,
        room_number INTEGER UNIQUE,
        arrival_time INTEGER DEFAULT CURRENT_TIMESTAMP
);

-- Challenge 5: Update clinic contact details
UPDATE clinics
SET phone_number = '443-555-0199'
WHERE clinic_id = 1;

SELECT * FROM clinics;

-- Challenge 6: Remove appliance records from equipment inventory
DELETE FROM inventory
WHERE category = 'Appliances';

SELECT * FROM inventory;