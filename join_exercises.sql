USE employees;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM departments d JOIN dept_manager dm on d.dept_no = dm.dept_no
                   JOIN employees e on e.emp_no = dm.emp_no
WHERE to_date LIKE '9%'
ORDER BY dept_name;
