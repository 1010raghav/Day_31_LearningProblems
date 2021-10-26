
--UC1
create  database Payroll_Service


--UC2
create table Employee_Payroll(
EmployeeID int,
EmployeeName varchar(100),
EmployeeSalary int ,
EmployeeStartDate varchar(1000),
Gender varchar(2)
);


--UC3
insert into Employee_Payroll values(1,'Raghav',20000,'2020-01-01','M');
insert into Employee_Payroll values(2,'Yash',25000,'2020-02-01','F');
insert into Employee_Payroll values(3,'Pratham',30000,'2020-03-01','M');
insert into Employee_Payroll values(4,'Gunjan',40000,'2020-04-01','M');
insert into Employee_Payroll values(5,'Sushil',43000,'2020-04-01','M');
insert into Employee_Payroll values(6,'Rani',30000,'2020-04-02','F');



delete from Employee_Payroll where EmployeeID=6
--UC4
 select * from Employee_Payroll

 --UC5

 select EmployeeSalary from Employee_Payroll where EmployeeName='Gunjan'


 --UC6
 update Employee_Payroll set EmployeeSalary=55000
 where EmployeeName='Gunjan';

 --UC7
 select SUM(EmployeeSalary)from Employee_Payroll
 where Gender='F' group by Gender;

 select SUM(EmployeeSalary)from Employee_Payroll
 where Gender='M' group by Gender;

 select AVG(EmployeeSalary)from Employee_Payroll
 where Gender='F' group by Gender;

 select AVG(EmployeeSalary)from Employee_Payroll
 where Gender='M' group by Gender;

 select MIN(EmployeeSalary)from Employee_Payroll
 where Gender='M' group by Gender;


 select MIN(EmployeeSalary)from Employee_Payroll
 where Gender='F' group by Gender;

 select MAX(EmployeeSalary)from Employee_Payroll
 where Gender='F' group by Gender;

 select MAX(EmployeeSalary)from Employee_Payroll
 where Gender='M' group by Gender;

 select COUNT(*)from Employee_Payroll 

 select COUNT(*)from Employee_Payroll where Gender='F'

 select COUNT(*)from Employee_Payroll where Gender='M'
