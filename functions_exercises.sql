USE employees;

SELECT CONCAT(first_name,last_name) FROM employees WHERE last_name LIKE 'e%' ORDER BY emp_no;
SELECT first_name, last_name FROM employees WHERE year(birth_date) BETWEEN 1950 AND 2000
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT * FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 2000;

SELECT * FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 2000
ORDER BY birth_date, hire_date DESC
    LIMIT 10;

SELECT CONCAT('Days at the company: ' , DATEDIFF(NOW(), hire_date))
    AS 'DAYS AT COMPANY'
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 2000
    LIMIT 10;