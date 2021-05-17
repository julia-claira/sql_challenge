-- creates tables for employees databases
CREATE TABLE titles (
    title_id varchar(5) PRIMARY KEY,
    title varchar(25)   NOT NULL
);

CREATE TABLE employees (
    emp_no int PRIMARY KEY,
	emp_title_id varchar(5),
    birth_date date   NOT NULL,
    first_name varchar(20)   NOT NULL,
    last_name varchar(20)   NOT NULL,
    sex varchar(2)   NOT NULL,
    hire_date date   NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE Departments (
    dept_no varchar(4) PRIMARY KEY,
    dept_name varchar(40)   NOT NULL
);

CREATE TABLE dept_emp (
	emp_no int,
	dept_no varchar(4),
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY(dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no varchar(4),
	emp_no int,
	FOREIGN KEY(dept_no) REFERENCES Departments (dept_no),
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no int,
    salary int   NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
