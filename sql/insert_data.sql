USE payroll_system;

-- Department Data
INSERT INTO Department VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Operations');

-- Employee Data
INSERT INTO Employee VALUES
(1, 'Amit Sharma', 101, 'HR Manager', 'amit@gmail.com'),
(2, 'Neha Patil', 102, 'Software Dev', 'neha@gmail.com'),
(3, 'Rahul Mehta', 103, 'Accountant', 'rahul@gmail.com'),
(4, 'Priya Singh', 104, 'Marketing Executive', 'priya@gmail.com'),
(5, 'Vikas Rao', 105, 'Operations Head', 'vikas@gmail.com');

-- Salary Data
INSERT INTO Salary VALUES
(201, 1, 50000, 5000, 2000),
(202, 2, 60000, 6000, 2500),
(203, 3, 45000, 4000, 1500),
(204, 4, 40000, 3500, 1200),
(205, 5, 70000, 8000, 3000);

-- Payroll Data
INSERT INTO Payroll VALUES
(301, 1, 'January', 2026, 53000),
(302, 2, 'January', 2026, 63500),
(303, 3, 'January', 2026, 47500),
(304, 4, 'January', 2026, 42300),
(305, 5, 'January', 2026, 75000);
