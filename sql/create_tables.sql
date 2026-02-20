-- OSDBMS Project
-- Payroll Management System

CREATE DATABASE payroll_system;
USE payroll_system;

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    designation VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE Salary (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    basic_pay DECIMAL(10,2) NOT NULL,
    allowances DECIMAL(10,2),
    deductions DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

CREATE TABLE Payroll (
    payroll_id INT PRIMARY KEY,
    emp_id INT,
    month VARCHAR(20) NOT NULL,
    year INT NOT NULL,
    net_salary DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);
