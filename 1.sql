USE employees;
-- Using concatination function of SQL
SELECT 
    CONCAT(first_name, ' ', last_name) AS NAME, gender
FROM
    employees;
-- extracting out all the details of the table using (*)
SELECT * from departments;
SELECT * FROM employees;

-- Using where clause with select statement along side in/and not in operators
SELECT * FROM employees
WHERE (first_name NOT IN ('John','Mark','Jecob'));
-- Using like operator
SELECT * FROM employees 
WHERE first_name LIKE ('Mark%');

SELECT * FROM employees 
WHERE hire_date LIKE ('2000%')
AND first_name LIKE ('MAR%');

-- Select statement with BETWEEN .... AND..... operator
SELECT * FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1995-01-01')
AND (first_name LIKE('Mar%'));