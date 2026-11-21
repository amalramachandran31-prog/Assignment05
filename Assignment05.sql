CREATE database employees;
use employees;
CREATE table departments(department_id INT , department_name VARCHAR (100) );
CREATE table location(location_id INT , location_name VARCHAR (100) );
CREATE table employee (employee_id INT , employee_name VARCHAR (100) , age INT , gender CHAR (1), designation VARCHAR (100), hire_date DATE,
                  department_id INT , location_id INT );
                  
                  
2. table alteration

A.add an email column to employee

ALTER table employee
ADD email VARCHAR (100);

B.modify designation column
ALTER table employee
MODIFY designation VARCHAR(100)

C.drop the age column 

D.rename hire_date to date_of_joining
ALTER table employee
RENAME column hire_date to date_of_joining

3. Table renaming
A.
RENAME table departments to department_info

B.
RENAME table location to locations;

4. table truncation

DROP table employee;
DROP database employees;

CONSTRAINS

1.database recreation

CREATE database employees;
use employees;

2.departments table

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

3.location table

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

4,employees table 

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
    REFERENCES Location(location_id)
);

