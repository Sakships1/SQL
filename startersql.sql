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


