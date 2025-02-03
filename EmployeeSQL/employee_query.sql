
--1.List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no,employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no=salaries.emp_no;

SELECT * FROM employees;


--2.List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
where TO_CHAR(hire_date, 'YYYY') = '1986';

--3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
 SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
 from dept_manager
 JOIN departments on dept_manager.dept_no=departments.dept_no
 JOIN employees on dept_manager.emp_no=employees.emp_no;


--4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join departments on dept_emp.dept_no=departments.dept_no
join employees on dept_emp.emp_no=employees.emp_no;


--5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex
from employees
where first_name ='Hercules' and last_name like 'B%';


--6.List each employee in the Sales department, including their employee number, last name, and first name.
select employees.emp_no, first_name, last_name, departments.dept_name
from employees
join dept_emp on employees.emp_no=dept_emp.emp_no
join departments on dept_emp.dept_no=departments.dept_no
where departments.dept_name='Sales';

--7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no, first_name, last_name, departments.dept_name
from employees
join dept_emp on employees.emp_no=dept_emp.emp_no
join departments on dept_emp.dept_no=departments.dept_no
where departments.dept_name='Sales' or departments.dept_name='Development';

--8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) As "Frequency counts"
from employees
group by last_name
order by "Frequency counts" DESC;


