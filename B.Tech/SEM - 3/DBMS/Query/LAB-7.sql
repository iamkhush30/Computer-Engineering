
/*-----------------------------------------------------------------------------------LAB-7-PART-A-------------------------------------------------------------------------------------*/


create table DEPARTMENT(DepartmentID int Primary Key, DepartmentName varchar(50) Not Null Unique, DepartmentCode varchar(50) Not Null Unique, Location varchar(50) not null)

insert into DEPARTMENT values(1, 'Admin', 'Admin', 'A-Block')
insert into DEPARTMENT values(2, 'Computer', 'CE', 'C-Block')
insert into DEPARTMENT values(3, 'Civil', 'CI', 'G-Block')
insert into DEPARTMENT values(4, 'Electrical', 'EE', 'E-Block')
insert into DEPARTMENT values(5, 'Mechanical', 'ME', 'B-Block')

select * from DEPARTMENT

drop table DEPARTMENT


create table PERSON (PersonID Int Primary Key, PersonName Varchar(100) Not Null, DepartmentID Int Foreign Key references DEPARTMENT(DepartmentID), Salary decimal(8,2) Not Null, JoiningDate Datetime Not Null, City varchar(100) Not Null)

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




/*-----------------------------------------------------------------------------------LAB-7-PART-B-------------------------------------------------------------------------------------*/


--1. Find all persons with their department name & code.
select * from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID

--2. Find the person's name whose department is located in C-Block.
select * from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID where d.Location = 'C-Block'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
select p.PersonName,p.Salary,d.DepartmentName from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID where p.City = 'Jamnagar'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
select p.PersonName,p.Salary,d.DepartmentName from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID where p.City != 'Rajkot'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
select p.PersonName from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID where d.DepartmentName= 'Civil' and p.JoiningDate >'1-Aug-2001'

--6. Find details of all persons who belong to the Computer department.
select * from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID where d.DepartmentName= 'Computer'

--7. Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
select PersonName from PERSON where datediff(day,JoiningDate,getdate()) > 365 

--8. Find department wise person counts.
select d.DepartmentName,count(p.PersonID) as[Number of People] from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by d.DepartmentName

--9. Give department wise maximum & minimum salary with department name.
select d.DepartmentName,max(p.Salary) as [Max Salary],min(p.Salary) as [Min Salary] from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by d.DepartmentName

--10. Find city wise total, average, maximum and minimum salary.
select p.City,sum(p.Salary) as [Total],avg(p.Salary) as [Average],max(p.Salary) as [Max] from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by p.City

--11. Find the average salary of a person who belongs to Ahmedabad city.
select avg(p.Salary) as [Average Salary] from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID where p.City = 'Ahmedabad'

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)
select concat(p.PersonName,' lives in ',p.City,' and works in ',d.DepartmentName,' Department.') from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID

--13. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In single column)
select concat(p.PersonName,' earns ',p.Salary,' from ',d.DepartmentName,' department monthly.') from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID

--14. Find city & department wise total, average & maximum salaries.
select p.City,d.DepartmentName,sum(p.Salary) as [Total],avg(p.Salary) as [Average],max(p.Salary) as [Max] from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by p.City,d.DepartmentName



/*-----------------------------------------------------------------------------------LAB-7-PART-C-------------------------------------------------------------------------------------*/


--1. Find all departments whose total salary is exceeding 100000.
select d.DepartmentName,sum(p.Salary) as [Total Salary] from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by d.DepartmentName having SUM(p.Salary) > 100000

--2. List all departments who have no person.
select d.DepartmentName from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by d.DepartmentName having count(p.PersonID) = 0

--3. List out department names in which more than two persons are working.
select d.DepartmentName from PERSON p inner join DEPARTMENT d on p.DepartmentID = d.DepartmentID group by d.DepartmentName having count(p.PersonID) > 2

--4. Give a 10% increment in the Computer department employee’s salary. (Use Update)
update PERSON set Salary=Salary+(Salary/100*10) where DepartmentID = (select DepartmentID from DEPARTMENT where DepartmentName = 'Computer')

--5. Calculate Employee Experience in Years, Months & Days with respect to their joining Date.
select PersonName,concat('years = ',datediff(year,JoiningDate,getdate()),', Month = ',datediff(month,JoiningDate,getdate())%12,', days = ',datediff(day,JoiningDate,getdate())%31) from PERSON
