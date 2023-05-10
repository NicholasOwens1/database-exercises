#Find the employees hirre date with the number 101010
SELECT hire_date FROM employees WHERE emp_no = 101010;
#Find all employees that have a hire date that matches the one you're looking for.
SELECT * FROM employees WHERE hire_date IN (SELECT hire_date FROM employees WHERE emp_no = 101010);
