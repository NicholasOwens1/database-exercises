USE employees;



# Select the two columns to be listed on the new table. dept_name with 'Department Name' alias. Concat first_name and
# last_name as 'Department Manger'
SELECT dept_name 'Department Name', CONCAT(first_name, ' ', last_name) 'Department Manager'
# USE the departments table as a base, give it an alias 'd'. JOIN the dept_emp with alias 'de' to the 'd' table using
# the dept_no column as the relationship.
FROM departments d JOIN dept_manager dm on d.dept_no = dm.dept_no
#JOIN Columns where an employee has a number on both the employee and dept_manager tables and has a 9 at the beginning of
# their to_date. The 9 means they're currently working. Order by dept_name
JOIN employees e on e.emp_no = dm.emp_no WHERE to_date LIKE '9%' ORDER BY dept_name;


SELECT dept_name 'Department Name', CONCAT(first_name, ' ', last_name) 'Department Manager'
# USE the departments table as a base, give it an alias 'd'. JOIN the dept_emp with alias 'de' to the 'd' table using
# the dept_no column as the relationship.
FROM departments d JOIN dept_manager dm on d.dept_no = dm.dept_no
#JOIN Columns where an employee has a number on both the employee and dept_manager tables and has a gender of 'F' and
# has a 9 at the beginning of their to_date. The 9 means they're currently working. Order by column name.
JOIN employees e on e.emp_no = dm.emp_no WHERE to_date LIKE '9%' AND gender = 'F' ORDER BY dept_name;


SELECT title, COUNT(title) as Total FROM titles t
JOIN dept_emp de on t.emp_no = de.emp_no
JOIN departments d on d.dept_no = de.dept_no
WHERE dept_name = 'Customer Service'
AND t.to_date LIKE '9%'
AND de.to_date LIKE '9%'
GROUP BY title;


SELECT dept_name AS 'Department Name' ,  CONCAT(first_name, ' ', last_name) AS 'Department Manager', salary AS Salary FROM
departments d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e on e.emp_no = dm.emp_no
JOIN salaries s on e.emp_no = s.emp_no
WHERE s.to_date LIKE '9%' AND dm.to_date LIKE '9%'
ORDER BY dept_name;



# SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
# FROM departments d JOIN dept_manager dm on d.dept_no = dm.dept_no
#                    JOIN employees e on e.emp_no = dm.emp_no
# WHERE to_date LIKE '9%'
# ORDER BY dept_name;