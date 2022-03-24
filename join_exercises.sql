SELECT dept_name, CONCAT(first_name, ' ', last_name) as full_name
FROM employees
JOIN dept_manager using (emp_no)
JOIN departments using (dept_no)
WHERE to_date LIKE '9999%';

SELECT dept_name, CONCAT(first_name, ' ', last_name) as full_name
FROM employees
         JOIN dept_manager using (emp_no)
         JOIN departments using (dept_no)
WHERE to_date LIKE '9999%' AND gender LIKE 'F';

SELECT title as Title, count(title) as Total
FROM titles
JOIN current_dept_emp using (emp_no)
JOIN departments using (dept_no)
WHERE dept_no LIKE 'd009'
GROUP BY title;

SELECT dept_name, CONCAT(first_name, ' ', last_name) as full_name, salary
FROM salaries
JOIN employees using (emp_no)
JOIN dept_manager using (emp_no)
JOIN departments using (dept_no)
GROUP BY dept_no;
