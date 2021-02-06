-- Join two tables and list employee number, last name, first name, sex and salary for each employee
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no = salaries.emp_no

-- List first name, last name, and hire date for everyone hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT e.first_name, e.last_name, d.dept_no, d.dept_name, dm.emp_no
FROM departments AS d
JOIN dept_manager AS dm ON
d.dept_no = dm.dept_no
JOIN employees 
AS e ON dm.emp_no = e.emp_no

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no

-- List first name, last name, and sex for employees whose first name is "Hercules" 
-- and last names begin with "B."
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.
SELECT e.first_name, e.last_name, d.dept_no, d.dept_name, dm.emp_no
FROM departments AS d
JOIN dept_manager AS dm ON
d.dept_no = dm.dept_no
JOIN employees 
AS e ON dm.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT e.first_name, e.last_name, d.dept_no, d.dept_name, dm.emp_no
FROM departments AS d
JOIN dept_manager AS dm ON
d.dept_no = dm.dept_no
JOIN employees 
AS e ON dm.emp_no = e.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., 
-- how many employees share each last name.
SELECT last_name, COUNT(emp_no) AS "Total for Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Total for Last Name" desc;
