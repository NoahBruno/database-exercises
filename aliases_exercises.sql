USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;

SELECT CONCAT(first_name, ' ', last_name), birth_date AS full_name
FROM employees;

SELECT CONCAT(emp_no, ' ', first_name, ' ', last_name), birth_date AS full_name
FROM employees;