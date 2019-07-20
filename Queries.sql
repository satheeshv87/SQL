-- Query 1:
SELECT e.emp_no, last_name, first_name, gender, salary
FROM employees e
	INNER JOIN salaries s
	ON e.emp_no = s.emp_no
ORDER BY e.emp_no

-- Query 2:
SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE date_part('year', hire_date) = 1986
ORDER BY emp_no

-- Query 3:
SELECT
	dm.dept_no,
	dept_name,
	dm.emp_no,
	last_name,
	first_name,
	from_date,
	to_date
FROM department_managers dm
	INNER JOIN departments d
		ON dm.dept_no = d.dept_no
	INNER JOIN employees e
		ON dm.emp_no = e.emp_no
ORDER BY dm.dept_no, dept_name, dm.emp_no

-- Query 4:
SELECT
	de.emp_no,
	last_name,
	first_name,
	dept_name
FROM department_employees de
	INNER JOIN departments d
		ON de.dept_no = d.dept_no
	INNER JOIN employees e
		ON de.emp_no = e.emp_no
ORDER BY de.emp_no

-- Query 5:
SELECT emp_no, last_name, first_name
FROM employees
WHERe first_name = 'Hercules' AND LEFT(last_name, 1) = 'B'
ORDER BY emp_no

-- Query 6:
SELECT
	de.emp_no,
	last_name,
	first_name,
	dept_name
FROM department_employees de
	INNER JOIN departments d
		ON de.dept_no = d.dept_no
	INNER JOIN employees e
		ON de.emp_no = e.emp_no
WHERE dept_name = 'Sales'		
ORDER BY de.emp_no

-- Query 7:
SELECT
	de.emp_no,
	last_name,
	first_name,
	dept_name
FROM department_employees de
	INNER JOIN departments d
		ON de.dept_no = d.dept_no
	INNER JOIN employees e
		ON de.emp_no = e.emp_no
WHERE dept_name IN ('Sales', 'Development')
ORDER BY de.emp_no

-- Query 8:
SELECT last_name, COUNT(*) as EmpCnt
FROM employees
GROUP BY last_name
ORDER BY EmpCnt DESC