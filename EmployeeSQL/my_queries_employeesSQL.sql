--List the following details of each employee: employee number, last name, first name, sex, and salary.

select a.emp_no, a.last_name, a.first_name, a.sex, b.salary
from employees a
join salaries b on
a.emp_no = b.emp_no

--List first name, last name, and hire date for employees who were hired in 1986.

select first_name as "First_Name", last_name as "Last_Name", hire_date as "Hire_Date"
from employees 
where cast(hire_date as varchar(10)) like '1986%'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select a.dept_no, b.dept_name, a.emp_no, c.last_name, c.first_name
from dept_manager a
join departments b
on a.dept_no=b.dept_no
join employees c
on a.emp_no=c.emp_no

--List the department of each employee with the following information: employee number, last name, first name, and department name.

select a.emp_no as "Employee Number", a.last_name as "Last Name", a.first_name as "First Name", c.dept_name as "Department Name"
from employees a
join dept_emp b
on b.emp_no = a.emp_no
join departments c
on c.dept_no = b.dept_no

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex from employees
where first_name='Hercules'
and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

select a.emp_no, a.last_name, a.first_name, c.dept_name
from employees a
join dept_emp b
on b.emp_no = a.emp_no
join departments c
on c.dept_no = b.dept_no
where c.dept_name = 'Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select a.emp_no, a.last_name, a.first_name, c.dept_name
from employees a
join dept_emp b
on b.emp_no = a.emp_no
join departments c
on c.dept_no = b.dept_no
where c.dept_name = 'Sales'
or c.dept_name = 'Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select a.last_name as "Last Name", count(a.last_name) as "Name Frequency" from employees a 
group by last_name
order by 2 desc,1 desc;

