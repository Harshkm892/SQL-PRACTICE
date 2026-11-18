create database user_account_db;
use user_account_db;

create table users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(40) NOT NULL UNIQUE,
email VARCHAR(100) NOT NULL UNIQUE,
password_hash VARCHAR(50) NOT NULL,
PHONE_NUMBER VARCHAR(15) UNIQUE,
age INT NOT NULL CHECK(age >=18 AND age<=100),
account_type VARCHAR(20) NOT NULL DEFAULT "Student"
CHECK (account_type IN("STUDENT","TTRAINER","ADMIN")),
is_active BOOLEAN DEFAULT True,
login_attempt INT NOT NULL DEFAULT 0 CHECK (login_attempt >=0),
created_at TIMESTAMP  DEFAULT CURRENT_TIMESTAMP,
profile_note TEXT


);
INSERT INTO users (
    username,
    email,
    password_hash,
    phone_number,
    age
)
VALUES (
    'asha_01',
    'asha@gmail.com',
    'hashed_password_1',
    '9876543210',
    22
);
select * from users
