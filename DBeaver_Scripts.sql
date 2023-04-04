--1) Create a table "employees"
create table employees(
   id serial primary key,
   employee_name varchar(50) not null
);
--1.1) Filled the 'employees' table with 70 employee_names
insert into employees(employee_name) 
values ('Joanna'),
       ('Liam'),
       ('Kimberley'),
       ('Kirsty'),
       ('Angela'),
       ('Jade'),
       ('Victoria'),
       ('Dominic'),
       ('Natalie'),
       ('Mary'),
       ('Shane'),
       ('Deborah'),
       ('Matthew'),
       ('Tony'),
       ('Timothy'),
       ('Sam'),
       ('Charles'),
       ('Ross'),
       ('Keith'),
       ('Robin'),
       ('Dean'),
       ('Adrian'),
       ('Carly'),
       ('Jane'),
       ('George'),
       ('Kevin'),
       ('Iain'),
       ('Joseph'),
       ('Catherine'),
       ('Danny'),
       ('Paul'),
       ('Stephanie'),
       ('Nathan'),
       ('Donna'),
       ('Lisa'),
       ('Alex'),
       ('Stuart'),
       ('Philip'),
       ('Maria'),
       ('Ian'),
       ('Peter'),
       ('Phillip'),
       ('Naomi'),
       ('Kim'),
       ('Caroline'),
       ('Brian'),
       ('Jonathan'),
       ('Leah'),
       ('Mohammed'),
       ('Simon'),
       ('Russell'),
       ('Wayne'),
       ('Lauren'),
       ('Lindsey'),
       ('Lewis'),
       ('Sara'),
       ('Karl'),
       ('Leon'),
       ('Lucy'),
       ('Benjamin'),
       ('Lindsay'),
       ('Karen'),
       ('Melissa'),
       ('Gemma'),
       ('Neil'),
       ('Darren'),
       ('Andrea'),
       ('Ben'),
       ('Hayley'),
       ('Graham');

select * from employees;

-- 2) Create table "salary"
create table salary(
   id serial primary key,
   monthly_salary int not null
);
-- 2.1) Filled the column "monthly_salary" with salary_values
insert into salary(monthly_salary) 
values(1000),
      (1100),
      (1200),
      (1300),
      (1400),
      (1500),
      (1600),
      (1700),
      (1800),
      (1900),
      (2000),
      (2100),
      (2200),
      (2300),
      (2400),
      (2500);
     
--2.2 Add salary_value which is not assigned to any employee
 insert into salary(monthly_salary)
 values (500),
        (850);
     
--2.3)Remove records to correct wrong order of "id"
truncate table salary;

       
select * from salary;

--2.3)Insert write "id" order and values of "monthly_salary"
insert into salary(id, monthly_salary)
values(1,1000),
      (2,1100),
      (3,1200),
      (4,1300),
      (5,1400),
      (6,1500),
      (7,1600),
      (8,1700),
      (9,1800),
      (10,1900),
      (11,2000),
      (12,2100),
      (13,2200),
      (14,2300),
      (15,2400),
      (16,2500);
     
--2.4 Add salary value to the employee who is not added to the DB     
 insert into salary(id, monthly_salary)
 values (71, 1050)

 --2.5 Extract employees names and their salaries
select employee_name, monthly_salary from
employees e full outer join salary s 
on e.id=s.id 

 select * from employees;
 
--2.6 Extract salary value from DB on its ID
select monthly_salary from salary
where id =28;

--2.7 Extract employee's name on ID 
select employee_name, monthly_salary from
employees e inner join salary s
on e.id = s.id
where s.id=29;

select * from salary;

-- 3) Create a table ""
create table employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null
);
-- 3.1) Filled 40 records of the "employee_salary" 
insert into employee_salary(employee_id, salary_id)
values(3,7),
      (1,4),
      (5,9),
      (40,13),
      (23,4),
      (11,2),
      (52,10),
      (15,13),
      (26,4),
      (16,1),
      (33,7),
      (60,16),
      (2,8),
      (14,6),
      (22,11),
      (7,5),
      (19,3),
      (8,15),
      (10,1),
      (13,7),
      (9,4),
      (21,13),
      (12,10),
      (17,14),
      (4,2),
      (25,9),
      (6,12),
      (20,16),
      (18,11),
      (24,6),
      (71,1),
      (78,10),
      (76,12),
      (74,2),
      (72,9),
      (70,13),
      (73,5),
      (75,4),
      (77,3),
      (79,7);

select * from employee_salary;

-- 4) Create a table "roles"
create roles(
   id serial primary key,
   role_name varchar(30) unique not null
);
-- 4.1) Filled the "roles" table with 20 records
insert into roles(role_name)
values('Junior Python developer'),
      ('Middle Python developer'),
      ('Senior Python developer'),
      ('Junior Java developer'),
      ('Middle Java developer'),
      ('Senior Java developer'),
      ('Junior JavaScript developer'),
      ('Middle JavaScript developer'),
      ('Senior JavaScript developer'),
      ('Junior Manual QA engineer'),
      ('Middle Manual QA engineer'),
      ('Senior Manual QA engineer'),
      ('Project Manager'),
      ('Designer'),
      ('HR'),
      ('CEO'),
      ('Sales manager'),
      ('Junior Automation QA engineer'),
      ('Middle Automation QA engineer'),
      ('Senior Automation QA engineer');
--4.2) Remove wrong numerated id
truncate table roles;
--4.3) Insert values into "id" and "role_name"
insert into roles(id,role_name)
values(1, 'Junior Python developer'),
      (2, 'Middle Python developer'),
      (3, 'Senior Python developer'),
      (4, 'Junior Java developer'),
      (5, 'Middle Java developer'),
      (6, 'Senior Java developer'),
      (7, 'Junior JavaScript developer'),
      (8, 'Middle JavaScript developer'),
      (9, 'Senior JavaScript developer'),
      (10, 'Junior Manual QA engineer'),
      (11, 'Middle Manual QA engineer'),
      (12, 'Senior Manual QA engineer'),
      (13, 'Project Manager'),
      (14, 'Designer'),
      (15, 'HR'),
      (16, 'CEO'),
      (17, 'Sales manager'),
      (18, 'Junior Automation QA engineer'),
      (19, 'Middle Automation QA engineer'),
      (20, 'Senior Automation QA engineer');

select * from roles;


--5. Create a table "roles_employee"
create table roles_employee(
   id serial primary key,
   employee_id int unique not null,
   role_id int not null,
foreign key (employee_id)
   references employees(id),
foreign key (role_id)
   references roles(id)
);

--5.1. Fill the table "roles_employee" with values
insert into roles_employee(employee_id,role_id)
values(7,2),
      (20,4),
      (3,9),
      (5,13),
      (23,4),
      (11,2),
      (10,9),
      (22,13),
      (21,3),
      (34,4),
      (6,7),
      (15,1),
      (2,5),
      (19,12),
      (25,8),
      (41,20),
      (32,11),
      (1,6),
      (8,15),
      (36,10),
      (4,19),
      (12,16),
      (9,18),
      (38,17),
      (17,1),
      (27,4),
      (13,6),
      (24,14),
      (31,3),
      (26,8),
      (14,2),
      (28,10),
      (30,7),
      (37,12),
      (16,5),
      (29,19),
      (33,17),
      (40,11),
      (18,15),
      (39,9);

select * from roles_employee; 

-- Tasks on running different queries

--1. Extract all employees and their salary
select e.employee_name, s.monthly_salary from
employees e inner join salary s
on e.id=s.id 
group by employee_name, monthly_salary;

--2. Extract all employees with the salary < 2000
select e.employee_name, s.monthly_salary from
employees e inner join salary s
on e.id=s.id 
where monthly_salary < 2000
group by employee_name, monthly_salary;

--3.Extract salary which is not assigned to any employees

select e.employee_name, s.monthly_salary from
employees e right join salary s 
on e.id=s.id
where employee_name is null;

--4. Extract all monthly_sal <2000,which are not assigned to an employee. 

select e.employee_name, s.monthly_salary from    
employees e right join salary s
on e.id=s.id 
where monthly_salary < 2000 and employee_name is null;

--5.Extract all employees, whose salaries have not been calculated
select e.employee_name, s.monthly_salary from 
employees e full outer join salary s on e.id=s.id
where monthly_salary is null;

--6. Extract all employees with their job_roles 

select employee_name, role_name from
employees e inner join roles r 
on e.id=r.id;

--7. Extract all employees exclusively with a role of a Python developer
select employee_name, role_name from
employees e inner join roles r 
on e.id=r.id where role_name like '%Python%';

--8.Extract all employees exclusively with a role of a Java developer
select employee_name, role_name from
employees e inner join roles r 
on e.id=r.id 
where role_name like '%Java%'and role_name not like '%Script%'; 

--9. Extract all employees exclusively with a role of a QA Engineer
select employee_name, role_name from
employees e inner join roles r 
on e.id=r.id 
where role_name like '%QA%';

--10. Extract all employees exclusively with a role of a QA Manual Engineer
select employee_name, role_name from
employees e inner join roles r 
on e.id=r.id
where role_name like '%Manual%';

--11. Extract all employees exclusively with a role of a QA Automation Engineer
select employee_name, role_name from
employees e inner join roles r 
on e.id=r.id 
where role_name like '%Automation%';

--12. Extract all employees on their names and salary of Junior roles
select employee_name, role_name, monthly_salary 
    from employees e
  full outer join roles r
    on e.id=r.id 
  full outer join salary s 
    on r.id=s.id
  where role_name like '%Junior%'; 


--13.Extract employees names and salary of Middle roles 
select employee_name, role_name, monthly_salary 
    from employees e 
  full outer join roles r
    on e.id=r.id 
  full outer join salary s
    on r.id=s.id
   where role_name like '%Middle%'; 

--14. Extract employees names and salary of Senior roles
select employee_name, role_name, monthly_salary 
   from employees e 
 full outer join roles r
   on e.id=r.id 
 full outer join salary s 
   on r.id=s.id
 where role_name like '%Senior%';

--15. Extract roles of Python developers and their salaries
select role_name, monthly_salary from
roles r inner join salary s 
on r.id=s.id 
where role_name like '%Python%';

--16. Extract roles of Java developers and their salaries
select role_name, monthly_salary from
roles r inner join salary s 
on r.id=s.id 
where role_name like '%Java%'and role_name not like '%Script%';

--17. Extract name and salaries of Junior Python Developers
select employee_name, role_name, monthly_salary 
   from employees e 
  inner join roles r 
     on (e.id=r.id)    
  inner join salary s 
     on r.id=s.id
   where role_name like '%J%P%d%';

--18.Extract name and salaries of Middle JS Developers
select employee_name, role_name, monthly_salary
   from employees e
  inner join roles r 
   on e.id=r.id 
  inner join salary s 
   on r.id=s.id 
  where role_name like '%M%J%S%';

 --19.Extract name and salaries of Senior Java Developers
select employee_name, role_name, monthly_salary
   from employees e
  inner join roles r 
   on e.id=r.id 
  inner join salary s 
   on r.id=s.id 
   where role_name like '%S%J%d%' and role_name not like '%Script%';

--20. Extract all salaries of Junior QA 
select role_name, monthly_salary
   from roles r
  full outer join salary s
   on r.id=s.id
  where role_name like '%J%Q%A%';

--21. Extract average salary of Junior roles
select avg(monthly_salary) 
   from roles r
  inner join salary s 
   on r.id=s.id 
  where role_name like '%Junior%';

--22. Extract sum of salaries of JS developers
select sum(monthly_salary)
   from roles r
  inner join salary s 
   on r.id=s.id 
  where role_name like '%J%S%d%';
 
--23. Extract min salary of all QA
 select min(monthly_salary)
    from roles r
  inner join salary s 
    on r.id=s.id 
   where role_name like '%Q%A%e%';
 
--24. Extract max salary of all QA 
select max(monthly_salary) 
   from roles r
  inner join salary s 
   on r.id=s.id 
  where role_name like '%Q%A%e%';

--25. Extract the count of all QA
select count(role_name) as count_qa
  from roles
   where role_name like '%Q%A%e%';
  
--26. Extract count of Middle roles
select count(role_name) as count_middles
  from roles 
   where role_name like '%Middle%';

--27. Extract the count of developers
  
select count(role_name) as count_developers
  from roles 
   where role_name like '%developer%';
--check in
select role_name 
from roles 
where role_name like '%developer%';

--28. Extract sum_salary of all developers
select sum(monthly_salary) as sal_developers
   from roles r
  inner join salary s 
   on r.id=s.id 
  where role_name like '%developer%';

--29. Extract names with their roles and salary
 select employee_name, role_name, monthly_salary
    from employees e
   inner join roles r 
    on e.id=r.id 
   inner join salary s 
    on r.id=s.id;
    
--30. Extract names, roles and salaries of employees whose salaries are between 1700 and 2300
select employee_name, role_name, monthly_salary
   from employees e
  inner join roles r
   on e.id=r.id
  inner join salary s 
   on r.id=s.id 
  where monthly_salary between 1700 and 2300;

--31. Extract names, roles and salaries of employees whose salaries are les than 2300
 select employee_name, role_name, monthly_salary
    from employees e
   inner join roles r 
    on e.id=r.id 
   inner join salary s 
    on r.id=s.id 
   where monthly_salary < 2300;

--32. Extract names, roles and salaries of employees whose salaries are in range of: 1100, 1500, 2000
select employee_name, role_name, monthly_salary
   from employees e
  inner join roles r 
   on e.id=r.id 
  inner join salary s 
   on r.id=s.id 
  where monthly_salary in (1100, 1500, 2000);