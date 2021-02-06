CREATE TABLE titles (
title_id VARCHAR,
title VARCHAR);

SELECT * 
FROM titles;

CREATE TABLE departments (
dept_no VARCHAR,
dept_name VARCHAR);

SELECT *
FROM departments;

CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR);

SELECT *
FROM dept_emp

CREATE TABLE dept_manager (
dept_no VARCHAR,
emp_no INT);

SELECT *
FROM dept_manager

CREATE TABLE employees (
emp_no INT,
emp_title_id VARCHAR,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR(1),
hire_date DATE);

SELECT * FROM employees

CREATE TABLE salaries (
emp_no INT,
salary INT);

SELECT * FROM salaries;

-- Added Primary and Foreign Keys
ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);