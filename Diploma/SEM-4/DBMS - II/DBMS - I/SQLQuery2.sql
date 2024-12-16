create table University_detail (Uni_id int, Uni_Name varchar(50), Uni_ContactNo bigint, Uni_Address varchar(50))

insert into University_detail (Uni_id, Uni_Name, Uni_ContactNo, Uni_Address) values (5, 'Parul University', 2668260312, 'Waghodia, Vadodara')

select * from University_detail;
exec sp_help University_detail;


create table Institute_detail (Inst_id int, Inst_Name varchar(50), Inst_ContactNo bigint, Inst_Address varchar(50), Uni_id int);

insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (112, 'School of Dental Science', 2682520503, 'College Road, Nadiad', 3)

select * from Institute_detail;
exec sp_help Institute_detail;


create table Course_detail (Cou_id int, Cou_Name varchar(50), Cou_type varchar(50), Inst_id int);

insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1013, 'BDS', 'Science', 112)

select * from Course_detail
exec sp_help Course_detail;


create table Faculty_detail (fac_id int, fac_firstname varchar(50), fac_middlename varchar(50), fac_lastname varchar(50), 
fac_contactno bigint, fac_DOB datetime, fac_letestquelification varchar(50), fac_cou_id int, fac_experince float, fac_religion varchar(50), 
fac_castcategory varchar(50), fac_atternetcontactno bigint, fac_address varchar(50), fac_city varchar(50))

insert into Faculty_detail (fac_id, fac_firstname, fac_middlename, fac_lastname, fac_contactno, fac_DOB, fac_letestquelification, 
fac_cou_id, fac_experince, fac_religion, fac_castcategory, fac_atternetcontactno, fac_address, fac_city)
values (5010, 'Pritesh', 'A', 'Parmar', 7016345124, '1987-1-03', 'BE', 1002, '10', 'Hindu', 'SEBC', 8987423104, 'Lal Darwaja', 'Ahmedabad')

select * from Faculty_detail;
exec sp_help Faculty_detail;


create table Student_detail (stu_id int, stu_firstname varchar(50), stu_middlename varchar(50), stu_lastname varchar(50), stu_emailid varchar(50), stu_contactno bigint, stu_DOB datetime, stu_castcategory varchar(50), stu_atternetcontactno bigint, stu_ssc_seatno varchar(50), stu_pr float, stu_city varchar(50))

insert into Student_detail (stu_id, stu_firstname, stu_middlename, stu_lastname, stu_emailid, stu_contactno, stu_DOB, stu_castcategory,
stu_atternetcontactno, stu_ssc_seatno, stu_pr,stu_city)
values(2010, 'Pinal', 'M', 'Vyas', 'vyasm@rocketmail.com', 8866701416, '2005-06-19', 'General', 6321457891, 'C652177', '20', 'Jamnagar')

select *  from Student_detail;
exec sp_help Student_detail;