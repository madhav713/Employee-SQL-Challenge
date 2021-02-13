-- List deatils for each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary FROM employees AS 
employees LEFT JOIN salaries AS salaries
ON employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT emp_no, last_name, first_name, hire_date FROM employees
WHERE hire_date BETWEEN '1986/1/1' AND '1986/12/31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM employees 
INNER JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM employees
INNER JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex FROM employees
WHERE last_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM employees
INNER JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM employees
INNER JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS last_name_count FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;

