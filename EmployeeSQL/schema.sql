-- Create tables
CREATE TABLE departments (
  dept_no VARCHAR(255) PRIMARY KEY NOT NULL,
  dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no VARCHAR(255) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  from_date DATE,
  to_date DATE
);

CREATE TABLE employees (
  emp_no INTEGER PRIMARY KEY NOT NULL,
  birth_date DATE,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  gender VARCHAR(255),
  hire_date DATE
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(255) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  from_date DATE,
  to_date DATE
);

CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  salary INTEGER,
  from_date DATE,
  to_date DATE
);

CREATE TABLE titles (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  title VARCHAR(255),
  from_date DATE,
  to_date DATE
);