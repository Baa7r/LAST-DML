

CREATE DATABASE myCompanyDB;

USE myCompanyDB;

CREATE SCHEMA Sales;

CREATE SEQUENCE i
	AS INT
    START WITH 1
    INCREMENT BY 1;

CREATE TABLE Sales.employees (
    id INT primary key DEFAULT (NEXT VALUE FOR i),
    first_name VARCHAR(50),
	last_name VARCHAR(50),
    salary DECIMAL(15, 2)
);

ALTER TABLE Sales.employees
ADD hire_date DATE;


--•	Select all columns from the "employees" table
select*
from Sales.employees;

--•Retrieve only the "first_name" and "last_name" columns from the "employees" table.
select first_name, last_name
from Sales.employees;

--•Retrieve “full name” as a one column from "first_name" and "last_name" columns from the "employees" table.
select first_name+' '+ last_name 'full name'
from Sales.employees;

--•Show the average salary of all employees
select AVG(salary)
from sales.employees

--•Select employees whose salary is greater than 50000.
select first_name
from Sales.employees
where salary > 50000

--•Retrieve employees hired in the year 2020.
SELECT first_name
from sales.employees 
where year(hire_date)= 2020 
--•List employees whose last names start with 'S.'
select *
from sales.employees
where last_name like 's%'

--•Display the top 10 highest-paid employees.
select top(10) first_name,salary
from Sales.employees
order by salary desc

--•Find employees with salaries between 40000 and 60000.
select first_name
from Sales.employees
where  salary between 40000 and 60000
 
 --•Show employees with names containing the substring 'man.'
 SELECT * 
 FROM Sales.employees 
 WHERE first_name LIKE '%man%' OR last_name LIKE '%man%';
