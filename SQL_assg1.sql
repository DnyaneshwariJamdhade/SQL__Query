use SQL_7PM

--Q1.Create a table named employees

create table employees1 (
    emp_id int PRIMARY KEY,
    emp_name varchar(50),
    department varchar(50),
    salary int,
    experience int,
    city varchar(50),
    project_name varchar(50),
    project_status varchar(20));

insert into employees1
(emp_id, emp_name, department, salary, experience, city, project_name, project_status)
values
(101, 'Amit', 'IT', 60000, 3, 'Nagpur', 'Alpha', 'Completed'),
(102, 'Sneha', 'HR', 45000, 2, 'Pune', 'Beta', 'Ongoing'),
(103, 'Rahul', 'IT', 75000, 5, 'Mumbai', 'Gamma', 'Completed'),
(104, 'Priya', 'Finance', 50000, 4, 'Nagpur', 'Alpha', 'Ongoing'),
(105, 'Karan', 'IT', 80000, 6, 'Bangalore', 'Delta', 'Completed'),
(106, 'Neha', 'HR', 48000, 3, 'Pune', 'Beta', 'Completed'),
(107, 'Arjun', 'Finance', 52000, 4, 'Mumbai', 'Gamma', 'Ongoing'),
(108, 'Pooja', 'IT', 72000, 5, 'Nagpur', 'Alpha', 'Completed'),
(109, 'Riya', 'HR', 46000, 2, 'Delhi', 'Delta', 'Ongoing'),
(110, 'Mohit', 'IT', 67000, 4, 'Pune', 'Beta', 'Completed'),
(111, 'Anjali', 'Finance', 53000, 3, 'Nagpur', 'Gamma', 'Completed'),
(112, 'Vikram', 'IT', 78000, 6, 'Mumbai', 'Delta', 'Ongoing');

select * from employees1;

--Q2.Update salary of Amit to 70000
update employees1
set salary=70000
where emp_name='Amit';

--Q3.Change project status of Beta project to Completed
update employees1
set project_status='completed'
where project_name='Beta';

--Q4.Delete employee whose emp_id is 109
delete from employees1
where emp_id=109;

--Q5.Show employees with salary greater than 70000
select *  from employees1
where salary>70000;

--Q6.Find employees from Nagpur city
select emp_id,emp_name,city from employees1
where city='Nagpur';

--Q7.Count total employees in each department
select department,count(*) as total_employees
from employees1
where department in('it','hr','finance')
group by department;


--Q8.Find total salary of IT department
select sum(salary) as total_salary
from employees1
where department='it';

--Q9.Find average salary city wise
select city,avg(salary) as average_salary
from employees1
group by city;


--Q10.Find the Top 3 Highest Paid Employees
select top(3)* from employees1
order by salary desc;

--Q11.Find Employees Working on Completed Projects and Having Experience More Than 4 Years
select * from employees1
where project_status='completed' and experience>=4;

--Q12.Find Employees Not Belonging to HR Department
select * from employees1
where department not in ('hr');