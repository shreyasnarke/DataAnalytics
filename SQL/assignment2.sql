CREATE DATABASE CompanyDB;
use CompanyDB;

create table employees(employee_id int auto_increment primary key,f_name varchar(50) not null,
l_name varchar(50) not null,dept_id varchar(50) not null,salary decimal(10,2),hire_date date);

insert into employees values(1,'shreyas','narke',1,50000.00,'2020-01-18'),
(2,'Alice', 'Smith', 1, 50000.00, '2020-01-15'),
(3,'Bob', 'Johnson', 2, 75000.00, '2018-06-23'),
(4,'Charlie', 'Brown', 2, 70000.00, '2019-03-11'),
(5,'Diana', 'Prince', 3, 60000.00, '2021-07-19'),
(6,'Eve', 'Taylor', 1, 55000.00, '2022-10-01');

select * from employees; 

create table departments(department_id int auto_increment primary key,department_name varchar(20) not null);

insert into departments (department_name) values
('Human Resources'),
('Engineering'),
('Finance');

select * from departments; 

create table projects(project_id int auto_increment primary key,project_name varchar(20) not null);

insert into projects (project_name) values
('Project Alpha'),
('Project Beta'),
('Project Gamma'),
('Project Delta');

select * from projects; 

create table employee_projects(employee_id int not null,project_id int not null,primary key(employee_id, project_id),
foreign key(employee_id) references employees(employee_id),foreign key(project_id) references projects(project_id));

insert into employee_projects (employee_id, project_id) values
(1, 1),
(1, 2),
(2, 1),
(3, 3),
(3, 4),
(4, 2),
(5, 4);

alter table employees
add foreign key(department_id) references departments(department_id);

select * from employee_projects; 

update employees set salary=salary*1.10;
select * from employees;

alter table departments
add column location varchar(20); 

delete from employee_projects
where employee_id=1;
 
delete from employees
where employee_id=1;

#3. Data Retrieval 
#a. Select the first names, last names, and department names of all employees. 
select employees.f_name,employees.l_name,departments.department_name
from employees
inner join departments
on employees.dept_id=departments.department_id;

#b. Use ORDER BY: Retrieve a list of employees, sorted by salary in descending order. 
select * from employees 
order by salary desc;

#c. Use LIKE: Find all employees whose last name starts with the letter 'S'. 
select *
from employees
where l_name like "S%";

#d. Use LIMIT: Retrieve only the top 3 highest-paid employees. 
select *
from employees
order by salary desc
limit 3;

#4. Group By and Aggregation 
#a. Group By department: Write a query to find the total number of employees in each department. 
select departments.department_name,count(employees.employee_id) as emp_count
from employees
join departments on employees.dept_id=departments.department_id
group by dept_id
order by emp_count desc;

#b. Use HAVING: Show only those departments with more than 2 employees. 
select departments.department_name,count(employees.employee_id) as emp_count
from employees
join departments on employees.dept_id=departments.department_id
group by dept_id
having count(employee_id)>=2
order by emp_count desc; 

#Union
#a. Write a query to retrieve all the project names from the projects table and the department names 
#from the departments table in one result set. 
select * from projects;
select * from departments;

select project_name from projects
union
select department_name from departments;

drop table employee_projects;