SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '1990-10-22';

SELECT CONCAT(first_name, last_name) as employee
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);

SELECT *
FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'F'
    AND to_date LIKE '9999%'
);