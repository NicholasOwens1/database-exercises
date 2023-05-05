USE employees;
# SELECT * from employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
# SELECT * from employees WHERE first_name LIKE 'E%';
# SELECT * from employees WHERE last_name LIKE '%q%';

SELECT * from employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND  gender = 'M';

SELECT * from employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT * from employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT * from employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%qu%';








