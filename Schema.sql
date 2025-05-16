create table titles (
title_id varchar NOT NULL,
title varchar NOT NULL,
primary key (title_id)
);

create table employees (
emp_no int NOT NULL,
emp_title_id varchar NOT NULL,
birth_date date NOT NULL,
first_name varchar NOT NULL,
last_name varchar NOT NULL,
sex varchar NOT NULL,
hire_date date NOT NULL,
foreign key (emp_title_id) references titles (title_id),
primary key (emp_no)
);

create table departments (
dept_no varchar NOT NULL,
dept_name varchar NOT NULL,
primary key (dept_no)
);

create table dept_emp (
emp_no int NOT NULL,
dept_no varchar NOT NULL,
foreign key (emp_no) references employees (emp_no),
foreign key (dept_no) references departments (dept_no),
primary key (emp_no, dept_no)
);

create table dept_manager (
dept_no varchar NOT NULL,
emp_no int NOT NULL,
foreign key (emp_no) references employees (emp_no),
foreign key (dept_no) references departments (dept_no),
primary key (emp_no, dept_no)
);

create table salaries (
emp_no int NOT NULL,
salary int NOT NULL,
foreign key (emp_no) references employees (emp_no),
primary key (emp_no)
);