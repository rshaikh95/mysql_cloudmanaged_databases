show databases;
create database `rahil`;
use `rahil`;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    MRN VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE demographics (
    demographic_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    address TEXT,
    phone_number VARCHAR(15),
    email VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE vitals (
    vitals_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT UNIQUE,
    heart_rate INT,
    o2_sat INT,
    bp INT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE followup (
    followup_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT UNIQUE,
    followup_reason VARCHAR(50) NOT NULL,
    followup_doc VARCHAR(50) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);