USE payroll_system;

-- Display All Departments
SELECT * FROM Department;

-- Display All Employees
SELECT * FROM Employee;

-- Employee + Department Join
SELECT e.name, d.dept_name
FROM Employee e
JOIN Department d ON e.department_id = d.department_id;

-- Salary Details
SELECT e.name, s.basic_pay, s.allowances, s.deductions
FROM Employee e
JOIN Salary s ON e.emp_id = s.emp_id;

-- Full Payroll Report
SELECT 
    e.name,
    d.dept_name,
    s.basic_pay,
    s.allowances,
    s.deductions,
    p.net_salary,
    p.month,
    p.year
FROM Employee e
JOIN Department d ON e.department_id = d.department_id
JOIN Salary s ON e.emp_id = s.emp_id
JOIN Payroll p ON e.emp_id = p.emp_id;

-- GROUP BY Query
SELECT d.dept_name, SUM(p.net_salary) AS total_salary
FROM Payroll p
JOIN Employee e ON p.emp_id = e.emp_id
JOIN Department d ON e.department_id = d.department_id
GROUP BY d.dept_name;

-- HAVING Query
SELECT d.dept_name, SUM(p.net_salary) AS total_salary
FROM Payroll p
JOIN Employee e ON p.emp_id = e.emp_id
JOIN Department d ON e.department_id = d.department_id
GROUP BY d.dept_name
HAVING total_salary > 50000;

-- Subquery
SELECT name
FROM Employee
WHERE emp_id IN (
    SELECT emp_id FROM Salary WHERE basic_pay > 50000
);

-- View Creation
CREATE VIEW Payroll_Report AS
SELECT 
    e.name,
    d.dept_name,
    p.net_salary,
    p.month,
    p.year
FROM Employee e
JOIN Department d ON e.department_id = d.department_id
JOIN Payroll p ON e.emp_id = p.emp_id;

-- View Usage
SELECT * FROM Payroll_Report;
