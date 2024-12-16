


/*-----------------------------------------------------------------------------------LAB-9-PART-A-------------------------------------------------------------------------------------*/


create table CITY (CityID int Primary Key, Name varchar(50) Unique, Pincode int Not Null, Remakrs varchar(50))


insert into CITY values(1, 'Rajkot', 360005, 'Good')
insert into CITY values(2, 'Surat', 335009, 'Very Good')
insert into CITY values(3, 'Baroda', 390001, 'Awesome')
insert into CITY values(4, 'Jamnagar', 361003, 'Smart')
insert into CITY values(5, 'Junagadh', 362229, 'Historic')
insert into CITY values(6, 'Morvi', 363641, 'Ceramic') 

select * from CITY


create table VILLAGE (VID int Primary Key, Name varchar(50) Not Null, CityID int Foreign Key references CITY(CityID))

insert into VILLAGE values (101, 'Raiya', 1)
insert into VILLAGE values (102, 'Madhapar', 1)
insert into VILLAGE values (103, 'Dodka', 3)
insert into VILLAGE values (104, 'Falla', 4)
insert into VILLAGE values (105, 'Bhesan', 5)
insert into VILLAGE values (106, 'Dhoraji', 5)

select * from VILLAGE


--1. Display all the villages of Rajkot city.

select v.Name from VILLAGE v inner join CITY c on v.CityID = c.CityID where c.Name = 'Rajkot'

--2. Display city along with their villages & pin code.

select c.Name,v.Name,c.Pincode from VILLAGE v inner join CITY c on v.CityID = c.CityID 

--3. Display the city having more than one village.

select c.Name,count(v.CityID) as [Number of Village] from VILLAGE v full outer join CITY c on v.CityID = c.CityID group by c.Name,v.CityID having count(v.CityID) > 1

--4. Display the city having no village.

select c.Name,count(v.CityID) as [Number of Village] from VILLAGE v full outer join CITY c on v.CityID = c.CityID group by c.Name,v.CityID having count(v.CityID)=0

--5. Count the total number of villages in each city.

select c.Name,count(v.CityID) as [Number of Village] from VILLAGE v full outer join CITY c on v.CityID = c.CityID group by c.Name,v.CityID 

--6. Count the number of cities having more than one village.

select c.Name,count(v.CityID) as [Number of Village] from VILLAGE v full outer join CITY c on v.CityID = c.CityID group by c.Name,v.CityID having count(v.CityID) > 1


/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


create table STUDENT (Rno int Primary Key, Name varchar(50) not null, Branch varchar(50) default 'General', SPI int check(SPI between 0 and 10), Bklog int check(Bklog >=0))

insert into STUDENT values(101, 'Raju', 'CE', 8.80, 0)
insert into STUDENT values(102, 'Amit', 'CE', 2.20, 3)
insert into STUDENT values(103, 'Sanjay', 'ME', 1.50, 6)
insert into STUDENT values(104, 'Neha', 'EC', 7.65, 0)
insert into STUDENT values(105, 'Meera', 'EE', 5.52, 2)
insert into STUDENT values(106, 'Mahesh', 'General', 4.50, 3)

drop table STUDENT

select * from STUDENT

--Try to update SPI of Raju from 8.80 to 12.
update STUDENT set SPI= 12 where Name='Raju'

--Try to update Bklog of Neha from 0 to -1.
update STUDENT set Bklog=-1 where Name='Neha'


/*-----------------------------------------------------------------------------------LAB-9-PART-B-------------------------------------------------------------------------------------*/



create table Dept(Did int Primary key, Dname varchar(50) not null)

create table City(Cid int Primary key, Cname varchar(50) not null)

create table Emp (Eid int Primary key, Ename varchar(50) not null,Did int Foreign Key references Dept(Did),Cid int Foreign Key references City(Cid),Salary decimal(8,2) not null,Experience int check(Experience >= 0))


/*-----------------------------------------------------------------------------------LAB-9-PART-C-------------------------------------------------------------------------------------*/


create table Dept(Did int Primary key, Dname varchar(50) not null)

create table Country(Cid int Primary key, Cname varchar(50) not null)

create table State(Sid int Primary key, Sname varchar(50) not null,Cid int Foreign Key references Country(Cid))

create table District(Did int Primary key, Dname varchar(50) not null,Sid int Foreign Key references State(Sid))

create table City(Cid int Primary key, Cname varchar(50) not null,Did int Foreign Key references District(Did))


create table Emp(Eid int Primary key, Ename varchar(50) not null,
Did int Foreign Key references Dept(Did),
Cid int Foreign Key references City(Cid),
Salary decimal(8,2),
Experience int check(Experience>=0))




select e.Ename,d.Dname,e.Salary,e.Experience,c.Cname,di.Dname,s.Sname,co.Cname from Emp e inner join Dept d on e.Did=d.Did inner join City c on e.Cid=c.Cid inner join District di on c.Did = di.Did inner join State s on di.Sid=s.Sid inner join Country co on s.Cid=co.Cid

--Insert 5 records in each table.
--3. Display employeename, departmentname, Salary, Experience, City, District, State and country of all
--employees.


insert into Dept values(1, 'Admin')
insert into Dept values(2, 'Computer')
insert into Dept values(3, 'Civil')
insert into Dept values(4, 'Electrical')
insert into Dept values(5, 'Mechanical')

insert into Country values(1, 'IND')
insert into Country values(2, 'USA')
insert into Country values(3, 'UK')
insert into Country values(4, 'UAE')
insert into Country values(5, 'AUS')

insert into State values(1, 'Gujarat', 1)
insert into State values(2, 'Maharastra', 1)
insert into State values(3, 'Dilhi', 1)
insert into State values(4, 'London', 3)
insert into State values(5, 'California', 2)

insert into District values(1,'Rajkot',1)
insert into District values(2,'Jamnagar',1)
insert into District values(3,'Konkan',2)
insert into District values(4,'Ahmedabad',1)
insert into District values(5,'Bhavnagar',1)

insert into City values(1, 'Rajkot', 1)
insert into City values(2, 'Jamnagar', 2)
insert into City values(3, 'Mumbai', 3)
insert into City values(4, 'Ahmedabad', 4)
insert into City values(5, 'Bhavnagar', 5)

insert into Emp values(1,'ABC',1,1,50000,15)
insert into Emp values(2,'BCD',2,3,30000,7)
insert into Emp values(3,'CDE',2,4,35000,10)
insert into Emp values(4,'DEF',3,2,20000,5)
insert into Emp values(5,'EFG',4,5,40000,13)