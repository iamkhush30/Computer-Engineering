create table University_detail (Uni_id int, Uni_Name varchar(50), Uni_ContactNo bigint, Uni_Address varchar(50))
insert into University_detail (Uni_id, Uni_Name, Uni_ContactNo, Uni_Address) values (1, 'Darshan University', 9727747310, 'Rajkot Morbi : highway, rajkot')
insert into University_detail (Uni_id, Uni_Name, Uni_ContactNo, Uni_Address) values (2, 'Marwadi University', 2812924154, 'Rajkot Morbi : highway, Gauridad, rajkot')
insert into University_detail (Uni_id, Uni_Name, Uni_ContactNo, Uni_Address) values (3, 'Dharmasinh Desai University', 2682520501, 'College road, Nadiad')
insert into University_detail (Uni_id, Uni_Name, Uni_ContactNo, Uni_Address) values (4, 'RK University', 9712489122, 'Bhavnagar road, Rajkot')
insert into University_detail (Uni_id, Uni_Name, Uni_ContactNo, Uni_Address) values (5, 'Parul University', 2668260312, 'Waghodia, Vadodara')
select * from University_detail;
exec sp_help University_detail;

create table Institute_detail (Inst_id int, Inst_Name varchar(50), Inst_ContactNo bigint, Inst_Address varchar(50), Uni_id int)
insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (101, 'School of Diploma Engineering', 9727747311, 'Rajkot Morbi : highway, rajkot', 1)
insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (102, 'School of Engineering', 9727747311, 'Rajkot Morbi : highway, rajkot', 1)
insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (103, 'Faculty of Phamacy', 2817123456, 'Rajkot Morbi road, rajkot', 2)
insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (104, 'Faculty of Science', 2817123456, 'Rajkot Morbi road, rajkot', 2)
insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (105, 'School of Computer Science', 9727747310, 'Rajkot Morbi : highway, rajkot', 1)
insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (106, 'School of Nursing', 18001231104, 'Post Limda, Waghodia, Vadodara', 5)
insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (107, 'School of Physiotherapy', 18001231104, 'Post Limda, Waghodia, Vadodara', 5)
insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (108, 'School of Design', 18001231104, 'Post Limda, Waghodia, Vadodara', 5)
insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (109, 'School of Agriculture Science', 9909952030, 'Bhavnagar Highway, Kasturbadham, Rajkot', 4)
insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (110, 'School of Science', 9909952030, 'Bhavnagar Highway, Kasturbadham, Rajkot', 4)
insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (111, 'School of Medical Science', 2682520502, 'College Road, Nadiad', 3)
insert into Institute_detail (Inst_id, Inst_Name, Inst_ContactNo, Inst_Address, Uni_id) values (112, 'School of Dental Science', 2682520503, 'College Road, Nadiad', 3)
select * from Institute_detail;
exec sp_help Institute_detail;

create table Course_detail (Cou_id int, Cou_Name varchar(50), Cou_type varchar(50), Inst_id int)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1001, 'Computer Engineering', 'Diploma', 101)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1002, 'Computer Engineering', 'BTech', 102)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1003, 'Computer Engineering in AI', 'Diploma', 102)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1004, 'Electrical Engineering', 'Diploma', 101)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1005, 'Phamacy', 'Bpham', 103)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1006, 'BSc(Bio Tech)', 'Commerce', 104)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1007, 'BSc(MicroBio)', 'Commerce', 104)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1008, 'BCA', 'Commerce', 105)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1009, 'MCA', 'Commerce', 105)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1010, 'BSc(Nursing)', 'Science', 106)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1011, 'Agriculture Engineering', 'Science', 109)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1012, 'MBBS', 'Science', 111)
insert into Course_detail (Cou_id, Cou_Name, Cou_type, Inst_id) values (1013, 'BDS', 'Science', 112)
select * from Course_detail
exec sp_help Course_detail;

create table Faculty_detail (fac_id int, fac_firstname varchar(50), fac_middlename varchar(50), fac_lastname varchar(50), 
fac_contactno bigint, fac_DOB datetime, fac_letestquelification varchar(50), fac_cou_id int, fac_experince float, fac_religion varchar(50), 
fac_castcategory varchar(50), fac_atternetcontactno bigint, fac_address varchar(50), fac_city varchar(50))

insert into Faculty_detail (fac_id, fac_firstname, fac_middlename, fac_lastname, fac_contactno, fac_DOB, fac_letestquelification, 
fac_cou_id, fac_experince, fac_religion, fac_castcategory, fac_atternetcontactno, fac_address, fac_city)values 
(5001, 'Akash', 'N', 'Siddhpra', 9429794513, '1990-11-03', 'ME(CE)',
1001, '9.5', 'Hindu', 'General', 9429794510, '150 ft. ring road', 'Rajkot')

insert into Faculty_detail (fac_id, fac_firstname, fac_middlename, fac_lastname, fac_contactno, fac_DOB, fac_letestquelification, 
fac_cou_id, fac_experince, fac_religion, fac_castcategory, fac_atternetcontactno, fac_address, fac_city)values 
(5002, 'pratik', 'T', 'Mehta', 7878989810, '1991-02-01', 'Ph.D',
1004, '19', 'Hindu', 'SEBC', 9898987878, 'Sanala road', 'Morbi')

insert into Faculty_detail (fac_id, fac_firstname, fac_middlename, 
fac_lastname, fac_contactno, fac_DOB, fac_letestquelification, 
fac_cou_id, fac_experince, fac_religion, fac_castcategory, fac_atternetcontactno, fac_address, fac_city)
values (5003, 'Ravi', 'K', 'Rathod', 9428045456, '1985-09-25', 'BDS',
1013, '12', 'Hindu', 'SC', 7845126523, 'Near ST Bus Stand', 'Jamnagar')

insert into Faculty_detail (fac_id, fac_firstname, fac_middlename, 
fac_lastname, fac_contactno, fac_DOB, fac_letestquelification, 
fac_cou_id, fac_experince, fac_religion, fac_castcategory, fac_atternetcontactno, fac_address, fac_city)values 
(5004, 'Firoz', 'A', 'Shersiya', 9879871256, '1980-01-05', 'Ph.D',
1009, '15', 'Muslim', 'General', 7800001213, '150 ft. ring road', 'Rajkot')


insert into Faculty_detail (fac_id, fac_firstname, fac_middlename, fac_lastname, fac_contactno, fac_DOB, fac_letestquelification, fac_cou_id, fac_experince, fac_religion, fac_castcategory, fac_atternetcontactno, fac_address, fac_city)values 
(5005, 'Nikunj', 'j', 'Patel', 9825265412, '1992-05-06', 'BE',
1011, '5', 'Hindu', 'General', 7600001213, 'Moti Banugar', 'Jamnagar')

insert into Faculty_detail (fac_id, fac_firstname, fac_middlename, 
fac_lastname, fac_contactno, fac_DOB, fac_letestquelification, 
fac_cou_id, fac_experince, fac_religion, fac_castcategory, fac_atternetcontactno, fac_address, fac_city)
values (5006, 'Kinjal', 'P', 'Jajeja', 8980451241, '1986-05-01', 'BE',
1003, '3', 'Hindu', 'SEBC', 6363635214, 'Near ST', 'Jamnagar')

insert into Faculty_detail (fac_id, fac_firstname, fac_middlename, 
fac_lastname, fac_contactno, fac_DOB, fac_letestquelification, 
fac_cou_id, fac_experince, fac_religion, fac_castcategory, fac_atternetcontactno, fac_address, fac_city)
values (5007, 'Pratiksha', 'L', 'Bhadesiya', 7845123652, '1985-09-18', 'MD',
1012, '21', 'Hindu', 'SC', 8987451236, 'Bhaktinagar', 'Rajkot')

insert into Faculty_detail (fac_id, fac_firstname, fac_middlename, 
fac_lastname, fac_contactno, fac_DOB, fac_letestquelification, 
fac_cou_id, fac_experince, fac_religion, fac_castcategory, fac_atternetcontactno, fac_address, fac_city)
values (5008, 'Nisha', 'K', 'Parmar', 7878787800, '1995-09-18', 'BE',
1011, '6', 'Hindu', 'General', 7878936541, 'Near DKV Cricle', 'Jamnagar')

insert into Faculty_detail (fac_id, fac_firstname, fac_middlename, 
fac_lastname, fac_contactno, fac_DOB, fac_letestquelification, 
fac_cou_id, fac_experince, fac_religion, fac_castcategory, fac_atternetcontactno, fac_address, fac_city)
values (5009, 'Krishna', 'P', 'Adani', 8985412532, '1985-12-21', 'MSc',
1007, '9', 'Christian', 'General', 9014578325, 'Same Kante', 'Morbi')

insert into Faculty_detail (fac_id, fac_firstname, fac_middlename, 
fac_lastname, fac_contactno, fac_DOB, fac_letestquelification, 
fac_cou_id, fac_experince, fac_religion, fac_castcategory, fac_atternetcontactno, fac_address, fac_city)
values (5010, 'Pritesh', 'A', 'Parmar', 7016345124, '1987-1-03', 'BE',
1002, '10', 'Hindu', 'SEBC', 8987423104, 'Lal Darwaja', 'Ahmedabad')


select * from Faculty_detail;
exec sp_help Faculty_detail;

create table Student_detail (stu_id int, stu_firstname varchar(50), stu_middlename varchar(50), stu_lastname varchar(50), stu_emailid varchar(50), stu_contactno bigint, stu_DOB datetime, stu_castcategory varchar(50), stu_atternetcontactno bigint, stu_ssc_seatno varchar(50), stu_pr float, stu_city varchar(50))

insert into Student_detail (stu_id, stu_firstname, stu_middlename, stu_lastname, stu_emailid, stu_contactno, stu_DOB, stu_castcategory,
stu_atternetcontactno, stu_ssc_seatno, stu_pr,stu_city)
values(2001, 'Chintan', 'L', 'Parmar', 'Chinta@gmail.com', 8989787845, '2006-09-07', 'General', 7777722554, 'C898962', '89.63', 'Rajkot')

insert into Student_detail (stu_id, stu_firstname, stu_middlename, stu_lastname, stu_emailid, stu_contactno, stu_DOB, stu_castcategory,
stu_atternetcontactno, stu_ssc_seatno, stu_pr,stu_city)
values(2002, 'Khushbu', 'H', 'Vora', 'vora@gmail.com', 7023564712, '2006-08-07', 'SEBC', 8888855441, 'C123456', '45.23', 'Morbi')

insert into Student_detail (stu_id, stu_firstname, stu_middlename, stu_lastname, stu_emailid, stu_contactno, stu_DOB, stu_castcategory,
stu_atternetcontactno, stu_ssc_seatno, stu_pr,stu_city)
values(2003, 'Amit', 'P', 'Vekariya', 'amitp@yahoo.com', 708952712, '2006-07-08', 'SC', 9999066554, 'C784512', '63', 'Vadodara')

insert into Student_detail (stu_id, stu_firstname, stu_middlename, stu_lastname, stu_emailid, stu_contactno, stu_DOB, stu_castcategory,
stu_atternetcontactno, stu_ssc_seatno, stu_pr,stu_city)
values(2004, 'Kanti', 'A', 'Bhuva', 'bhuvaakanti@hotmail.com', 9825245781, '2006-07-01', 'SC', 9999011447, 'C963258', '99.63', 'Ahmedabad')

insert into Student_detail (stu_id, stu_firstname, stu_middlename, stu_lastname, stu_emailid, stu_contactno, stu_DOB, stu_castcategory,
stu_atternetcontactno, stu_ssc_seatno, stu_pr,stu_city)
values(2005, 'Nikhil', 'T', 'Vadodariya', 'nikhil@yahoo.com', 9825641784, '2006-06-12', 'General', 9998989825, 'C124578', '78.21', 'Bhavnagar')

insert into Student_detail (stu_id, stu_firstname, stu_middlename, stu_lastname, stu_emailid, stu_contactno, stu_DOB, stu_castcategory,
stu_atternetcontactno, stu_ssc_seatno, stu_pr,stu_city)
values(2006, 'Rakesh', 'H', 'Vaisnav', 'raku_t@gmail	.com', 9898784565, '2006-01-25', 'General', 9999898321, 'C324579', '65', 'Surat')

insert into Student_detail (stu_id, stu_firstname, stu_middlename, stu_lastname, stu_emailid, stu_contactno, stu_DOB, stu_castcategory,
stu_atternetcontactno, stu_ssc_seatno, stu_pr,stu_city)
values(2007, 'Mahesh', 'C', 'Gambhava', 'maheshgambhava@gmai.com', 9898732141, '2005-08-06', 'General', 9999858584, 'C314679', '35.11', 'Rajkot')

insert into Student_detail (stu_id, stu_firstname, stu_middlename, stu_lastname, stu_emailid, stu_contactno, stu_DOB, stu_castcategory,
stu_atternetcontactno, stu_ssc_seatno, stu_pr,stu_city)
values(2008, 'Pritesh', 'E', 'Kanani', 'kananipritesh@yahoo.com', 8866442277, '2005-12-03', 'General', 6363525241, 'C362147', '95.14', 'Morbi')

insert into Student_detail (stu_id, stu_firstname, stu_middlename, stu_lastname, stu_emailid, stu_contactno, stu_DOB, stu_castcategory,
stu_atternetcontactno, stu_ssc_seatno, stu_pr,stu_city)
values(2009, 'Binal', 'N', 'Makwana', 'makwana.binal@gmail.com', 8866997231, '2005-08-14', 'SEBC', 6356457812, 'C984231', '23', 'Rajkot')

insert into Student_detail (stu_id, stu_firstname, stu_middlename, stu_lastname, stu_emailid, stu_contactno, stu_DOB, stu_castcategory,
stu_atternetcontactno, stu_ssc_seatno, stu_pr,stu_city)
values(2010, 'Pinal', 'M', 'Vyas', 'vyasm@rocketmail.com', 8866701416, '2005-06-19', 'General', 6321457891, 'C652177', '20', 'Jamnagar')

select *  from Student_detail;
exec sp_help Student_detail;