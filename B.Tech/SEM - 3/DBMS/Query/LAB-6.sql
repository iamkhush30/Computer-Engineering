
/*-----------------------------------------------------------------------------------LAB-6-PART-A-------------------------------------------------------------------------------------*/

create table STUDENT(Rno int, Name varchar(50), Branch varchar(50))

insert into STUDENT values(101, 'Raju', 'CE')
insert into STUDENT values(102, 'Amit', 'CE')
insert into STUDENT values(103, 'Sanjay', 'ME')
insert into STUDENT values(104, 'Neha', 'EC')
insert into STUDENT values(105, 'Meera', 'EE')
insert into STUDENT values(106, 'Mahesh', 'ME')

select * from STUDENT

drop table STUDENT


create table RESULT(Rno int, SPI decimal(8,2))

insert into RESULT values(101,8.8)
insert into RESULT values(102,9.2)
insert into RESULT values(103,7.6)
insert into RESULT values(104,8.2)
insert into RESULT values(105,7.0)
insert into RESULT values(107,8.9)

select * from RESULT

drop table RESULT



create table EMPLOYEE (EmployeeNo varchar(50), Name varchar(50), ManagerNo varchar(50),)

insert into EMPLOYEE values ('E01', 'Tarun', NULL)
insert into EMPLOYEE values ('E02', 'Rohan', 'E02')
insert into EMPLOYEE values ('E03', 'Priya', 'E01')
insert into EMPLOYEE values ('E04', 'Milan', 'E03')
insert into EMPLOYEE values ('E05', 'Jay', 'E01')
insert into EMPLOYEE values ('E06', 'Anjana', 'E04')

select * from EMPLOYEE

drop table EMPLOYEE


/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


--1. Combine information from student and result table using cross join or Cartesian product.
select * from STUDENT s , RESULT r where s.Rno = r.Rno

--2. Display Rno, Name, Branch and SPI of all students.
select s.Rno,s.Name,s.Branch,r.SPI from STUDENT s inner join RESULT r on s.Rno = r.Rno

--3. Display Rno, Name, Branch and SPI of CE branch’s student only.
select s.Rno,s.Name,s.Branch,r.SPI from STUDENT s inner join RESULT r on s.Rno = r.Rno where s.Branch = 'CE'

--4. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select s.Rno,s.Name,s.Branch,r.SPI from STUDENT s inner join RESULT r on s.Rno = r.Rno where s.Branch != 'EC'

--5. Display average result of each branch.
select s.Branch,avg(r.SPI) as [Average SPI] from  STUDENT s inner join RESULT r on s.Rno = r.Rno group by s.Branch

--6. Display average result of each branch and sort them in ascending order by SPI.
select s.Branch,avg(r.SPI) as [Average SPI] from  STUDENT s inner join RESULT r on s.Rno = r.Rno group by s.Branch order by avg(r.SPI)

--7. Display average result of CE and ME branch.
select s.Branch,avg(r.SPI) from STUDENT s inner join RESULT r on s.Rno = r.Rno where s.Branch in ('CE','ME') group by s.Branch

--8. Perform the left outer join on Student and Result tables.
select s.Rno,s.Name,s.Branch,r.SPI from STUDENT s left outer join RESULT r on s.Rno = r.Rno

--9. Perform the right outer join on Student and Result tables.
select s.Rno,s.Name,s.Branch,r.SPI from STUDENT s right outer join RESULT r on s.Rno = r.Rno

--10. Perform the full outer join on Student and Result tables.
select s.Rno,s.Name,s.Branch,r.SPI from STUDENT s full outer join RESULT r on s.Rno = r.Rno

--11. Retrieve the names of employee along with their manager name from the Employee table.
select E.Name as [Employee Name],em.Name as [Manager Name] from EMPLOYEE E left outer join EMPLOYEE em on E.ManagerNo = em.EmployeeNo



/*-----------------------------------------------------------------------------------LAB-6-PART-B-------------------------------------------------------------------------------------*/


create table PERSON (PersonID int, PersonName varchar(50), DepartmentID int, Salary int, JoiningDate date, City varchar(50))


insert into PERSON values (101, 'Rahul Tripathi', 2, 56000, '01-JAN-2000', 'Rajkot')
insert into PERSON values (102, 'Hardik Pandya', 3, 18000, '25-SEP-2001', 'Ahmedabad')
insert into PERSON values (103, 'Bhavin Kanani', 4, 25000, '14-MAY-2000', 'Baroda')
insert into PERSON values (104, 'Bhoomi Vaishnav', 1, 39000, '08-FEB-2005', 'Rajkot')
insert into PERSON values (105, 'Rohit Topiya', 2, 17000, '23-JUL-2001', 'Jamnagar')
insert into PERSON values (106, 'Priya Menpara', NULL, 9000, '18-OCT-2000', 'Ahmedabad')
insert into PERSON values (107, 'Neha Sharma', 2, 34000, '25-DEC-2002', 'Rajkot')
insert into PERSON values (108, 'Nayan Goswami', 3, 25000, '01-JUL-2001', 'Rajkot')
insert into PERSON values (109, 'Mehul Bhundiya', 4, 13500, '09-JAN-2005', 'Baroda')
insert into PERSON values (110, 'Mohit Maru', 5, 14000, '25-MAY-2000', 'Jamnagar')

select * from PERSON

drop table PERSON

create table DEPARTMENT(DepartmentID int, DepartmentName varchar(50), DepartmentCode varchar(50), Location varchar(50),)

insert into DEPARTMENT values(1, 'Admin', 'Admin', 'A-Block')
insert into DEPARTMENT values(2, 'Computer', 'CE', 'C-Block')
insert into DEPARTMENT values(3, 'Civil', 'CI', 'G-Block')
insert into DEPARTMENT values(4, 'Electrical', 'EE', 'E-Block')
insert into DEPARTMENT values(5, 'Mechanical', 'ME', 'B-Block')

select * from DEPARTMENT

drop table DEPARTMENT


/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

--1. Find all persons with their department name & code.
select * from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID

--2. Give department wise maximum & minimum salary with department name.
select d.DepartmentName,max(p.Salary) as [Max Salary],min(p.Salary) as [Min Salary] from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by d.DepartmentName

--3. Find all departments whose total salary is exceeding 100000.
select d.DepartmentName,sum(p.Salary) as [Total Salary] from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by d.DepartmentName having SUM(p.Salary) > 100000

--4. Retrieve person name, salary & department name who belongs to Jamnagar city.
select p.PersonName,p.Salary,d.DepartmentName from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID where p.City = 'Jamnagar'

--5. Find all persons who does not belongs to any department.
select * from PERSON where DepartmentID is null

--6. Find department wise person counts.
select d.DepartmentName,count(p.PersonID) as[Number of People] from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by d.DepartmentName

--7. Find average salary of person who belongs to Ahmedabad city.
select avg(p.Salary) as [Average Salary] from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID where p.City = 'Ahmedabad'

--8. Produce Output Like: <PersonName> earns <Salary> from department <DepartmentName> monthly. (In Single Column)
select concat(p.PersonName,' earns ',p.Salary,' from department ',d.DepartmentName,' monthly.') from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID

--9. List all departments who have no persons.
select d.DepartmentName from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by d.DepartmentName having count(p.PersonID) = 0

--10. Find city & department wise total, average & maximum salaries.
select p.City,d.DepartmentName,sum(p.Salary) as [Total],avg(p.Salary) as [Average],max(p.Salary) as [Max] from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by p.City,d.DepartmentName






/*-----------------------------------------------------------------------------------LAB-6-PART-C-------------------------------------------------------------------------------------*/



--1. Display Unique city names.
select distinct City from PERSON

--2. List out department names in which more than two persons.
select d.DepartmentName from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by d.DepartmentName having count(p.PersonID) > 2

--3. Combine person name’s first three characters with city name’s last three characters in single column.
select CONCAT(left(PersonName,3),right(City,3)) from PERSON

--4. Give 10% increment in Computer department employee’s salary.
update PERSON set Salary=Salary+(Salary/100*10) where DepartmentID = (select DepartmentID from DEPARTMENT where DepartmentName = 'Computer')

--5. Display all the person name’s who’s joining dates difference with current date is more than 365 days
select PersonName from PERSON where datediff(day,JoiningDate,getdate()) > 365 
