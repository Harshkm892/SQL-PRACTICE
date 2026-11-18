create database student_registration_db;
use student_registration_db;

create table students(
student_id INT PRIMARY KEY AUTO_INCREMENT,
registration_number VARCHAR(10) NOT NULL UNIQUE,
student_name VARCHAR(60) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
phone_number VARCHAR(10)  UNIQUE,
cgpa DECIMAL(4,2) NOT NULL CHECK(cgpa >= 0.00 AND cgpa <= 10.00),
PLACEMENT_STATUS VARCHAR(30) NOT NULL DEFAULT "Not placed" 
CHECK (placement_status IN("Not placed","Placed","Not Eligible"
)),
is_active BOOLEAN NOT NULL DEFAULT TRUE,
registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);
DESC students;