USE employees;



# Select the two columns to be listed on the new table. dept_name with 'Department Name' alias. Concat first_name and
# last_name as 'Department Manger'
SELECT dept_name 'Department Name', CONCAT(first_name, ' ', last_name) 'Department Manager'
# USE the departments table as a base, give it an alias 'd'. JOIN the dept_emp with alias 'de' to the 'd' table using
# the dept_no column as the relationship.
FROM departments d JOIN dept_manager dm on d.dept_no = dm.dept_no
#JOIN Columns where an employee has a number on both the employee and dept_manager tables. Onl
JOIN employees e on e.emp_no = dm.emp_no WHERE to_date LIKE '9%' AND gender = 'F' ORDER BY dept_name










# SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
# FROM departments d JOIN dept_manager dm on d.dept_no = dm.dept_no
#                    JOIN employees e on e.emp_no = dm.emp_no
# WHERE to_date LIKE '9%'
# ORDER BY dept_name;