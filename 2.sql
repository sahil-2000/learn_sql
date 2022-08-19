USE employees;
SELECT * FROM salaries
WHERE salary BETWEEN 60000 AND 70000
AND (emp_no NOT BETWEEN 10004 AND 10012);

SELECT distinct * FROM employees
WHERE gender='F' AND (hire_date>='2000-01-01');


SELECT COUNT(emp_no) FROM employees
GROUP BY first_name;

select * from salaries;

SELECT first_name,COUNT(first_name) FROM employees
GROUP BY first_name;




SELECT * FROM employees
WHERE hire_date>'1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name)<200
ORDER BY first_name;
select emp_no,COUNT(emp_no) as emp from dept_emp
GROUP BY emp_no
HAVING COUNT(emp_no)>=2;


SELECT *,COALESCE(dept_no,dept_name,'N/A') as number FROM departments;