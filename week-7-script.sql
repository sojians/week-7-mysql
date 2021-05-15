-- 1. Show all employees who were born before 1965-01-01

select * from employees where birth_date < '1965-01-01';

-- 2. Show all employees who are female and were hired after 1990

select * from employees where gender='f' and hire_date > '1990-12-31';

-- 3. Show the first and last name of the first 50 employees whose last name starts with F

select first_name, last_name from employees where last_name like 'f%' limit 50;

-- 4. Insert 3 new employees into the employees table. There emp_no should be 100, 101, and 102. 
-- You can choose the rest of the data.

insert into employees values (100, '1467-11-21', 'Pablo', 'Mica', 'M', '2018-07-16'), 
(101, '2011-01-11', 'Mary', 'Jane', 'F', '2010-06-06'), 
(102, '1990-09-28', 'Maru', 'Hishou', 'F', '1980-02-03');

-- select * from employees limit 50;

-- 5. Change the employee's first name to Bob for the employee with the emp_no of 10023.

update employees set first_name = 'Bob' where emp_no = 10023;

-- select * from employees limit 50;

-- 6. Change all employees hire dates to 2002-01-01 whose first or last names start with P.

-- select * from employees where last_name like 'p%' or first_name like 'p%';

update employees set hire_date = '2002-01-01' where last_name like 'p%' or first_name like 'p%';

-- select * from employees where last_name like 'p%' or first_name like 'p%';

-- 7. Delete all employees who have an emp_no less than 10000

-- select * from employees where emp_no < 10000;

delete from employees where emp_no < 10000;

-- select * from employees limit 50;

-- 8. Delete all employee who have an emp_no of 10048, 10099, 10234, and 20089.

-- select * from employees where emp_no in (10048, 10099, 10234, 20089);

delete from employees where emp_no in (10048, 10099, 10234, 20089);

-- select * from employees