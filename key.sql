create database constraints;
use constraints;
create table students(
student_id int primary key,
name varchar(100),
email varchar(100)
);

create table users(
user_id int primary key auto_increment,
user_name varchar(100) default "Guest",
email varchar(60) unique not null,
password varchar(100) not null
);
insert into users(user_name,email,password)
values("alok","ak12@gmail.com","akl@123");

insert into users(email,password)
values("satyam@gmail.com","satya@123");


