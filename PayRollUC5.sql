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
select * from employee_payroll;

---uc-5 retrieving data from Cast() anf Getdate()
select salary from employee_payroll where name='Papuni';
select salary from employee_payroll where startDate BETWEEN Cast('2021-08-19' as Date) and GetDate();
