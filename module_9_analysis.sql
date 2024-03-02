SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees JOIN salaries ON employees.emp_no = salaries.emp_no
ORDER BY employees.emp_no ASC;

SELECT first_name,
	last_name,
	hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT employees.first_name,
	employees.last_name,
	employees.emp_no,
	departments.dept_name,
	dept_manager.dept_no
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

SELECT employees.first_name,
	employees.last_name,
	employees.emp_no,
	departments.dept_name,
	departments.dept_no
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

SELECT first_name,
	last_name,
	sex
FROM employees
WHERE first_name = 'Hercules' AND SUBSTRING(last_name, 1, 1) = 'B';

SELECT employees.first_name,
	employees.last_name,
	employees.emp_no,
	departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales';

SELECT employees.first_name,
	employees.last_name,
	employees.emp_no,
	departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = dept_emp.dept_no
WHERE departments.dept_name IN ('Sales', 'Development')

SELECT last_name,
	COUNT(emp_no)
FROM employees
GROUP BY last_name
ORDER BY COUNT(emp_no) DESC; 












	
	