-- Create a Database
Create database startersql;

USE startersql;

--Create a User Table

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Delete the Database

--Drop database startersql

SELECT * FROM users;

select name, email from users;

rename table users to customers;
rename table customers to users;

alter table users add column is_active boolean default true;
alter table users drop column is_active;

alter table users modify column name varchar(150);

alter table users modify column email varchar(100) first;

alter table users modify column gender enum('male', 'female', 'other') after name;

-- Insert Data into Users Table
INSERT INTO users (name, email, gender, date_of_birth) VALUES
('David', 'david@example.com', 'Male', '2000-08-09'),
('Eva', 'eva@example.com', 'Female', '1993-12-30');

-- select * from users;

--select name, email from users;

select * from users where gender = 'Male';
select * from users where gender != 'Male';
select * from users where gender<> 'Female';

select * from users where date_of_birth < '2000-01-01';
select * from users where id <3;


-- select * from users;

select * from users where gender in ('Male', 'Other');
select * from users where name like 'D%';
SELECT * FROM users WHERE gender = 'Female' AND date_of_birth > '1990-01-01';
SELECT * FROM users WHERE gender = 'Male' OR gender = 'Other';
select * from users order by date_of_birth desc;
select * from users limit 3 ;


-- alter table users
-- add constraint chk_dob check(date_of_birth > '2000-01-01');

select count(*) from users;






















-- // Creating a new DATABASE

create database CompanyDB;
use companyDB;

create table Employees(
    id INT AUTO_INCREMENT Primary key,
    name varchar(100) not null,
    email varchar(100) unique not null,
    positioin varchar(100) not null,
    salary int not null
)

select* from Employees;

insert into Employees(name, email, positioin,salary) VALUES
('Sakshi', 'ksak@gmail.com', 'Data Engineer', 1500000);

-- select * from employees;
INSERT INTO employees (name, email, positioin, salary) VALUES
('Zharlie', 'charlie@example.com', 'Other', 1500),
('Yavid', 'david@example.com', 'Male', 2000),
('Xva', 'eva@example.com', 'Female', 3000);

-- Select * from employees;

alter table employees add column created_at timestamp default current_timestamp;

-- select * from employees;
select * from employees where salary > 1000 order by created_at asc limit 3;

use companyDB;
select * from employees;

-- Update Data in Employees Table
update employees
set salary = 1800000
where name = 'Sakshi';

select * from employees;

update employees
set name = 'Sakshi Kashyap'
where id = 1;

update employees
set email = 'ksakshi489@gmail.com'
where id =1;

delete from employees
where id =1;

drop table employees

select * from employees;

delete from employees
where positioin = 'other';

delete from employees;

-- use companyDB;
select min(salary) from employees;
select max(salary) from employees;
select sum(salary) as total_payroll from employees;
select avg(salary) as avg_salary from employees;

select name, avg(salary) as avg_salary
from employees
group by name;

SELECT name, LENGTH(name) AS name_length FROM employees;
SELECT name, LOWER(name) AS lowercase_name FROM employees;
SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM employees;
SELECT NOW();
-- SELECT name, YEAR(date_of_birth) AS birth_year FROM employees;

SELECT salary,
    ROUND(salary) AS rounded,
    FLOOR(salary) AS floored,
    CEIL(salary) AS ceiled
FROM employees;


SELECT id, MOD(id, 2) AS remainder FROM employees;

-- SELECT name, gender,
--        IF(gender = 'Female', 'Yes', 'No') AS is_female
-- FROM employees;


SET autocommit = 0;


// CREATING A FOREIGN KEY;








