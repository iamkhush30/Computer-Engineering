


/*-----------------------------------------------------------------------------------LAB-10-PART-A-------------------------------------------------------------------------------------*/

create table STUDENT (Rno int, Name varchar(50), City varchar(50), DID int)

insert into STUDENT values(101, 'Raju', 'Rajkot', 10)
insert into STUDENT values(102, 'Amit', 'Ahmedabad', 20)
insert into STUDENT values(103, 'Sanjay', 'Baroda', 40)
insert into STUDENT values(104, 'Neha', 'Rajkot', 20)
insert into STUDENT values(105, 'Meera', 'Ahmedabad', 30)
insert into STUDENT values(106, 'Mahesh', 'Baroda', 10)

select* from STUDENT


create table ACADEMIC(Rno int, SPI decimal(4,2), Bklog int)


insert into ACADEMIC values(101, 8.8, 0)
insert into ACADEMIC values(102, 9.2, 2)
insert into ACADEMIC values(103, 7.6, 1)
insert into ACADEMIC values(104, 8.2, 4)
insert into ACADEMIC values(105, 7.0, 2)
insert into ACADEMIC values(106, 8.9, 3)

select* from ACADEMIC


create table DEPARTMENT(DID int, DName varchar(50))

insert into DEPARTMENT values(10, 'Computer')
insert into DEPARTMENT values(20, 'Electrical')
insert into DEPARTMENT values(30, 'Mechanical')
insert into DEPARTMENT values(40, 'Civil')

select* from DEPARTMENT


/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


--1. Display details of students who are from computer department.
select * from STUDENT where DID in (select DID from DEPARTMENT where DName = 'Computer')

--2. Displays name of students whose SPI is more than 8.
select Name from STUDENT where Rno in (select Rno from ACADEMIC where SPI > 8)

--3. Display details of students of computer department who belongs to Rajkot city.
select * from STUDENT where DID in (select DID from DEPARTMENT where DName = 'Computer') and City = 'Rajkot'

--4. Find total number of students of electrical department.
select count(Rno) as [number of students of electrical] from STUDENT where DID in (select DID from DEPARTMENT where DName = 'Electrical')

--5. Display name of student who is having maximum SPI.
select Name from STUDENT where Rno in (select Rno from ACADEMIC where SPI = (select max(SPI) from ACADEMIC))

--6. Display details of students having more than 1 backlog.
select Name from STUDENT where Rno in (select Rno from ACADEMIC where Bklog > 1)

--7. Display name of student who is having second highest SPI.

select Name from STUDENT where Rno in (select Rno from ACADEMIC order by SPI desc offset 1 rows fetch next 1 row only)
select Name from STUDENT where Rno in (select Rno from ACADEMIC where SPI = (select max(SPI) from ACADEMIC where SPI < (select max(SPI) from ACADEMIC)))

--8. Display name of students who are either from computer department or from mechanical department.
select * from STUDENT where DID in (select DID from DEPARTMENT where DName in ('Computer','Mechanical' )

--9. Display name of students who are in same department as 102 studying in.
select * from STUDENT where DID in (select DID from DEPARTMENT where DID in (Select DID from STUDENT where Rno = 102))

--10. Display name of students whose SPI is more than 9 and who is from electrical department.
select * from STUDENT where Rno in (select Rno from ACADEMIC where SPI > 9) and DID = (select DID from DEPARTMENT where DName = 'Electrical') 


/*-----------------------------------------------------------------------------------LAB-10-PART-B-------------------------------------------------------------------------------------*/


create table COMPANY_MASTER (COM_ID int, COM_NAME varchar(50))

insert into COMPANY_MASTER values(11, 'Samsung')
insert into COMPANY_MASTER values(12, 'iBall')
insert into COMPANY_MASTER values(13, 'Epsion')
insert into COMPANY_MASTER values(14, 'Zebronics')
insert into COMPANY_MASTER values(15, 'Asus')
insert into COMPANY_MASTER values(16, 'Frontech')

select * from COMPANY_MASTER

create table ITEM_MASTER (PRO_ID int, PRO_NAME varchar(50), PRO_PRICE int, PRO_COM int)

insert into ITEM_MASTER values(101, 'Mother Board', 3200, 15)
insert into ITEM_MASTER values(102, 'Key Board', 450, 16)
insert into ITEM_MASTER values(103, 'ZIP drive', 250, 14)
insert into ITEM_MASTER values(104, 'Speaker', 550, 16)
insert into ITEM_MASTER values(105, 'Monitor', 5000, 11)
insert into ITEM_MASTER values(106, 'DVD drive', 900, 12)
insert into ITEM_MASTER values(107, 'CD drive', 800, 12)
insert into ITEM_MASTER values(108, 'Printer', 2600, 13)
insert into ITEM_MASTER values(109, 'Refill cartridge', 350, 13)
insert into ITEM_MASTER values(110, 'Mouse', 250, 12)

select * from ITEM_MASTER

create table EMP_DETAILS(EMP_IDNO int, EMP_FNAME varchar(50), EMP_LNAME varchar(50), EMP_DEPT int)

insert into EMP_DETAILS values(127323, 'Michale', 'Robbin', 57)
insert into EMP_DETAILS values(526689, 'Carlos', 'Snares', 63)
insert into EMP_DETAILS values(843795, 'Enric', 'Dosio', 57)
insert into EMP_DETAILS values(328717, 'Jhon', 'Snares', 63)
insert into EMP_DETAILS values(444527, 'Joseph', 'Dosni', 47)
insert into EMP_DETAILS values(659831, 'Zanifer', 'Emily', 47)
insert into EMP_DETAILS values(847674, 'Kuleswar', 'Sitaraman', 57)
insert into EMP_DETAILS values(748681, 'Henrey', 'Gabriel', 47)
insert into EMP_DETAILS values(555935, 'Alex', 'Manuel', 57)
insert into EMP_DETAILS values(539569, 'George', 'Mardy', 27)
insert into EMP_DETAILS values(733843, 'Mario', 'Saule', 63)
insert into EMP_DETAILS values(631548, 'Alan', 'Snappy', 27)
insert into EMP_DETAILS values(839139, 'Maria', 'Foster', 57)

select * from EMP_DETAILS

create table EMP_DEPARTMENT(DPT_CODE int, DPT_NAME varchar(50), DPT_ALLOTMENT int)

insert into EMP_DEPARTMENT values(57, 'IT', 65000)
insert into EMP_DEPARTMENT values(63, 'Finance', 15000)
insert into EMP_DEPARTMENT values(47, 'HR', 240000)
insert into EMP_DEPARTMENT values(27, 'RD', 55000)
insert into EMP_DEPARTMENT values(89, 'QC', 75000)

select * from EMP_DEPARTMENT


/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

--1. Write a SQL query to calculate the average price of each manufacturer's product along with their name.
--Return Average Price and Company.
select cm.COM_NAME,avg(im.PRO_PRICE) as [average price] from COMPANY_MASTER cm inner join ITEM_MASTER im on cm.COM_ID=im.PRO_COM group by cm.COM_NAME

--2. Write a SQL query to calculate the average price of each manufacturer's product of 350 or more. Return
--Average Price and Company.
select cm.COM_NAME,avg(im.PRO_PRICE) as [average price] from COMPANY_MASTER cm inner join ITEM_MASTER im on cm.COM_ID=im.PRO_COM group by cm.COM_NAME having avg(im.PRO_PRICE) > 350

--3. Write a SQL query to find the most expensive product of each company. Return Product Name, Price and
--Company.
select cm.COM_NAME,im.PRO_NAME,im.PRO_PRICE from COMPANY_MASTER cm join ITEM_MASTER im on cm.COM_ID=im.PRO_COM  left join ITEM_MASTER im2 on im.PRO_COM = im2.PRO_COM and im.PRO_PRICE < im2.PRO_PRICE where im2.PRO_PRICE is null

--4. Write a SQL query to find employees whose last name is Gabriel or Dosio. Return emp_idno, emp_fname,
--emp_lname and emp_dept.
select EMP_IDNO,EMP_FNAME from EMP_DETAILS where EMP_LNAME in ('Gabriel','Dosio')

--5. Write a SQL query to find the employees who work in department 89 or 63. Return emp_idno, emp_fname,
--emp_lname and emp_dept.

select EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT from EMP_DETAILS where EMP_DEPT in (89,63)



/*-----------------------------------------------------------------------------------LAB-10-PART-C-------------------------------------------------------------------------------------*/


--1. Write a SQL query to find those employees who work for the department where the departmental allotment
--amount is more than Rs. 50000. Return emp_fname and emp_lname.

select e.EMP_FNAME,e.EMP_LNAME from EMP_DETAILS e inner join EMP_DEPARTMENT d on e.EMP_DEPT=d.DPT_CODE where d.DPT_ALLOTMENT > 50000

--2. Write a SQL query to find the departments whose sanction amount is higher than the average sanction
--amount for all departments. Return dpt_code, dpt_name and dpt_allotment.

select DPT_CODE,DPT_NAME,DPT_ALLOTMENT from EMP_DEPARTMENT where DPT_ALLOTMENT > (select avg(DPT_ALLOTMENT) from EMP_DEPARTMENT)

--3. Write a SQL query to find which departments have more than two employees. Return dpt_name.

select d.DPT_NAME from EMP_DETAILS e inner join EMP_DEPARTMENT d on e.EMP_DEPT=d.DPT_CODE group by d.DPT_NAME having count(e.EMP_IDNO) > 2

--4. Write a SQL query to find the departments with the second lowest sanction amount. Return emp_fname
--and emp_lname

select e.EMP_FNAME,e.EMP_LNAME,d.DPT_ALLOTMENT from EMP_DETAILS e inner join EMP_DEPARTMENT d on e.EMP_DEPT=d.DPT_CODE 
where d.DPT_ALLOTMENT = (select top 1 DPT_ALLOTMENT from EMP_DEPARTMENT where DPT_ALLOTMENT > (select min(DPT_ALLOTMENT) from EMP_DEPARTMENT) order by DPT_ALLOTMENT)
