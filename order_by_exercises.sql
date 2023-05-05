USE employees;
SELECT first_name, last_name from employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name DESC;
SELECT * from employees WHERE first_name LIKE 'E%';
SELECT * from employees WHERE last_name LIKE '%q%';

SELECT * from employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND  gender = 'M';

SELECT * from employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT last_name, emp_no from employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no DESC;

SELECT * from employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%qu%';








