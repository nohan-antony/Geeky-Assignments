-- Healthcare System Schema

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100),
    DateOfBirth DATE,
    Gender VARCHAR(10)
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(100),
    Specialty VARCHAR(100)
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Medications (
    MedicationID INT PRIMARY KEY,
    MedicationName VARCHAR(200),
    DosageForm VARCHAR(50)
);

CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY,
    PatientID INT,
    MedicationID INT,
    PrescriptionDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID)
);

-- Questions

-- 1. List all patients and their appointments, including patients who have never had an appointment.
SELECT PATIENTS.PATIENTNAME, APPOINTMENTS.APPOINTMENTID 
FROM PATIENTS LEFT JOIN APPOINTMENTS
ON PATIENTS.PATIENTID=APPOINTMENTS.PATIENTID;

-- 2. Display all doctors and their scheduled appointments, including doctors without any appointments.
SELECT DOCTORS.DOCTORNAME, APPOINTMENTS.APPOINTMENTID FROM DOCTORS
LEFT JOIN  APPOINTMENTS ON APPOINTMENTS.DOCTORID=DOCTORS.DOCTORID;

-- 3. Show all medications and the patients they've been prescribed to, including medications that haven't been prescribed.
SELECT PRESCRIPTIONS.PRESCRIPTIONID, PATIENTS.PATIENTNAME
FROM PRESCRIPTIONS LEFT JOIN PATIENTS ON PRESCRIPTIONS.PATIENTID=PATIENTS.PATIENTID;
-- 4. List all possible patient-doctor combinations, regardless of whether an appointment has occurred.
SELECT DOCTORS.DOCTORNAME, PATIENTS.PATIENTNAME
FROM DOCTORS CROSS JOIN PATIENTS;

-- 5. Display all prescriptions with patient and medication information, including prescriptions where either the patient or medication information is missing.
SELECT 
    P.PrescriptionID,
    Pat.PatientName,
    Med.MedicationName,
    P.PrescriptionDate
FROM 
    Prescriptions P
LEFT JOIN 
    Patients Pat ON P.PatientID = Pat.PatientID
LEFT JOIN 
    Medications Med ON P.MedicationID = Med.MedicationID;
-- 6. Show all patients who have never been prescribed any medication, along with their appointment history.
SELECT PAT.PATIENTID, PAT.PATIENTNAME, DOC.DOCTORID
FROM PATIENTS PAT LEFT JOIN PRESCRIPTIONS PRESC ON PAT.PATIENTID=PRESC.PATIENTID
LEFT JOIN  APPOINTMENTS APP ON PAT.PATIENTID=APP.PATIENTID
LEFT JOIN DOCTORS DOC ON DOC.DOCTORID=APP.DOCTORID

-- 7. List all doctors who have appointments in the next week, along with the patients they're scheduled to see.
SELECT DOC.DOCTORNAME, APP.APPOINTMENTDATE
FROM APPOINTMENTS APP LEFT JOIN DOCTORS DOC ON APP.DOCTORID=DOC.DOCTORID
LEFT JOIN PATIENTS PAT ON PAT.PATIENTID=APP.PATIENTID
WHERE APP.APPOINTMENTDATE BETWEEN GETDATE() AND DATEADD(DAY,7,GETDATE());


-- 8. Display all medications prescribed to patients over 60 years old, including medications not prescribed to this age group.
SELECT Med.MedicationID, Med.MedicationName, Pat.PatientID, Pat.DateOfBirth
FROM Medications Med
LEFT JOIN Prescriptions Presc ON Med.MedicationID = Presc.MedicationID
LEFT JOIN Patients Pat ON Presc.PatientID = Pat.PatientID
WHERE DATEDIFF(YEAR, Pat.DateOfBirth, GETDATE()) >= 60
   OR Pat.PatientID IS NULL;

--" including medications not prescribed to this age group." Didnt understand
-- 9. Show all appointments from last year and any associated prescription information.
SELECT APP.APPOINTMENTID, MED.MEDICATIONNAME, MED.DOSAGEFORM
FROM APPOINTMENTS APP LEFT JOIN PATIENTS PAT ON PAT.PATIENTID=APP.PATIENTID
LEFT JOIN DOCTORS DOC ON DOC.DOCTORID=APP.DOCTORID
LEFT JOIN PRESCRIPTIONS PRE ON PRE.PATIENTID=APP.PATIENTID
LEFT JOIN MEDICATIONS MED ON PRE.MEDICATIONID=MED.MEDICATIONID
WHERE YEAR(PRE.PRESCRIPTIONDATE)=YEAR(GETDATE())-1;


-- 10. List all possible specialty-medication combinations, regardless of whether a doctor of that specialty has prescribed that medication.
SELECT DOC.SPECIALTY, MED.MEDICATIONNAME
FROM DOCTORS DOC 
CROSS JOIN MEDICATIONS MED;
