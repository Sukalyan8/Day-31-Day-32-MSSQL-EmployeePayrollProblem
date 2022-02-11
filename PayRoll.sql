create database PayRoll_Service;

--uc2 creating table
create Table employee_payroll
(
id int identity(1,1) primary key,
name varchar(200) not null,
salary float,
startDate date
)


--uc -3 inserting values to table
Insert into employee_payroll(name,salary,startDate) values
('Rasmita',36000,'2022-12-12'),
('Papuni',47000,'2022-08-18'),
('Runu',45000,'2021-08-21'),
('Rakshi',35000,'2021-08-19');

--uc-4 retrieving all data
select *from employee_payroll;
---uc-5 retrieving data from cast() anf Getdate()
select salary from employee_payroll where name='Papuni';
select salary from employee_payroll where startDate BETWEEN Cast('2021-08-19' as Date) and GetDate();




--uc-6 add column gender and upadate values
Alter table employee_payroll
add Gender char(1);

Update employee_payroll 
set Gender='M'
where name='Papuni';
Update employee_payroll 
set Gender='F'
where name='Rasmita' or name='Runu'or name='Rakshi';


--uc-7 Aggregate function anfd Gruop by gender
select Sum(salary) as "TotalSalary",Gender from employee_payroll group by Gender;
select Avg(salary) as "AverageSalary",Gender from employee_payroll group by Gender;
select Min(salary) as "MinimumSalary",Gender from employee_payroll group by Gender;
select Max(salary) as "MaximumSalary",Gender from employee_payroll group by Gender;
select count(salary) as "CountSalary",Gender from employee_payroll group by Gender;

