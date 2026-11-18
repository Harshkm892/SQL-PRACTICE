create database dml;
use dml;

create table users(
user_id int primary key,
name varchar(20) default "guest",
password varchar(100)
);


INSERT INTO users VALUES(2, 'alok', 'akh@234');

INSERT INTO users VALUES(3, 'default', 'akh@234');


select * from users;