CREATE TABLE employees
emp_no INT 
emp_title VARCHAR
birth_date VARCHAR
first_name VARCHAR 
last_name VARCHAR
sex VARCHAR
hire_date VARCHAR
PRIMARY KEY (emp_no);

SELECT * FROM employees

CREATE TABLE department
dept_no VARCHAR 
dep_name VARCHAR
PRIMARY KEY (dept_no);

SELECT * FROM department

CREATE TABLE dept_emp(
emp_no INT,
dept_no VARCHAR,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES department (dept_no),
PRIMARY KEy (emp_no,dept_no));

SELECT * FROM dept_emp

CREATE TABLE dept_manager (
dept_no VARCHAR,
emp_no INT,
FOREIGN KEY (dept_no) REFERENCES department (dept_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
PRIMARY KEY (emp_no,dept_no)
);

SELECT * FROM dept_manager

CREATE TABLE salaries (
emp_no INT,
salary INT,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM salaries

CREATE TABLE title (
title_id VARCHAR, 
title VARCHAR);

SELECT * FROM title

