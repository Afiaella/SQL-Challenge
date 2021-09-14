-- Question 1

SELECT employees.emp_no,
employees.last_name,
employees.first_name, 
employees.sex,
salaries.salary
FROM employees
LEFT JOIN salaries ON 
(employees.emp_no = salaries.emp_no);

-- Question 2 

SELECT first_name, last_name
FROM employees, 
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986';

-- Question 3
SELECT department.dept_no,
department.dep_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name
FROM department 
INNER JOIN dept_manager ON
(department.dept_no = dept_manager.dept_no)
INNER JOIN employees ON
(dept_manager.emp_no = employees.emp_no);

-- Question 4
SELECT dept_emp.emp_no,
employees.last_name,
employees.first_name,
department.dep_name
FROM dept_emp
INNER JOIN employees ON 
(dept_emp.emp_no = employees.emp_no)
INNER JOIN department ON 
(department.dept_no = dept_emp.dept_no);

-- Question 5
SELECT * FROM employees 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Question 6
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
department.dep_name
FROM employees
INNER JOIN dept_emp ON 
(employees.emp_no = dept_emp.emp_no )
INNER JOIN department ON
(department.dept_no = dept_emp.dept_no)
WHERE department.dep_name = 'Sales';

-- Question 7
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
department.dep_name
FROM employees
INNER JOIN dept_emp ON
(employees.emp_no = dept_emp.emp_no)
INNER JOIN department ON 
(department.dept_no = dept_emp.dept_no)
WHERE department.dep_name IN ('Sales', 'Development');

-- Question 8
SELECT last_name, COUNT (last_name)
FROM employees
GROUP BY last_name

