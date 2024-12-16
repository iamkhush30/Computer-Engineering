alter table Faculty_detail add Fac_Emailid varchar(50);
update Faculty_detail set Fac_Emailid = 'printesh.parmar@gmail.com' where fac_id=5010
select * from Faculty_detail;

alter table Student_detail add stu_cou_id int;
update Student_detail set stu_cou_id=1001 where stu_id=2001
update Student_detail set stu_cou_id=1001 where stu_id=2002
update Student_detail set stu_cou_id=1008 where stu_id=2003
update Student_detail set stu_cou_id=1009 where stu_id=2004
update Student_detail set stu_cou_id=1010 where stu_id=2005
update Student_detail set stu_cou_id=1012 where stu_id=2006
update Student_detail set stu_cou_id=1013 where stu_id=2007
update Student_detail set stu_cou_id=1002 where stu_id=2008
update Student_detail set stu_cou_id=1002 where stu_id=2009
update Student_detail set stu_cou_id=1003 where stu_id=2010
select * from Student_detail;

update Student_detail set stu_ssc_seatno=898956 where stu_id=2001
select * from Student_detail;

alter table Course_detail add cou_fees float;
update Course_detail set cou_fees='25000' where Cou_id=1001
update Course_detail set cou_fees='45000' where Cou_id=1002
update Course_detail set cou_fees='60000' where Cou_id=1003
update Course_detail set cou_fees='25000' where Cou_id=1004
update Course_detail set cou_fees='20000' where Cou_id=1005
update Course_detail set cou_fees='30000' where Cou_id=1006
update Course_detail set cou_fees='31000' where Cou_id=1007
update Course_detail set cou_fees='22000' where Cou_id=1008
update Course_detail set cou_fees='30000' where Cou_id=1009
update Course_detail set cou_fees='18000' where Cou_id=1010
update Course_detail set cou_fees='19000' where Cou_id=1011
update Course_detail set cou_fees='400000' where Cou_id=1012
update Course_detail set cou_fees='250000' where Cou_id=1013
select * from Course_detail

delete  from Student_detail where stu_cou_id=1009
select * from Student_detail;

delete  from Faculty_detail where fac_middlename='P'
select * from Faculty_detail;

alter table University_detail alter column Uni_Name nvarchar(50);
alter table University_detail alter column Uni_Address nvarchar(50);
exec sp_help University_detail;

alter table Institute_detail alter column Inst_Name nvarchar(50);
alter table Institute_detail alter column Inst_Address nvarchar(50);
exec sp_help Institute_detail;

alter table Course_detail alter column Cou_Name nvarchar(50);
alter table Course_detail alter column Cou_type nvarchar(50);
exec sp_help Course_detail;

alter table Faculty_detail alter column fac_firstname nvarchar(50);
alter table Faculty_detail alter column fac_middlename nvarchar(50);
alter table Faculty_detail alter column fac_lastname nvarchar(50);
alter table Faculty_detail alter column fac_letestquelification nvarchar(50);
alter table Faculty_detail alter column fac_religion nvarchar(50);
alter table Faculty_detail alter column fac_castcategory nvarchar(50);
alter table Faculty_detail alter column fac_address nvarchar(50);
alter table Faculty_detail alter column fac_city nvarchar(50);
alter table Faculty_detail alter column fac_Emailid nvarchar(50);
exec sp_help Faculty_detail;

alter table Student_detail alter column stu_firstname nvarchar(50);
alter table Student_detail alter column stu_middlename nvarchar(50);
alter table Student_detail alter column stu_lastname nvarchar(50);
alter table Student_detail alter column stu_emailid nvarchar(50);
alter table Student_detail alter column stu_castcategory nvarchar(50);
alter table Student_detail alter column stu_ssc_seatno nvarchar(50);
alter table Student_detail alter column stu_city nvarchar(50);
exec sp_help Student_detail;

alter table Faculty_detail alter column fac_DOB date;
exec sp_help Faculty_detail;

alter table Student_detail alter column stu_DOB date;
exec sp_help Student_detail;

alter table Faculty_detail drop column fac_middlename ;
exec sp_help Faculty_detail;

alter table Student_detail drop column stu_middlename ;
exec sp_help Student_detail;

------------------------------------------------------------------------------------------------
select Uni_Name from University_detail;
select Inst_Name from Institute_detail;

select cou_name from Course_detail where cou_type='science';

select cou_name from Course_detail where cou_type='Diploma';

select stu_firstname,stu_lastname,stu_emailid,stu_pr,stu_city from Student_detail where stu_city='Rajkot'

select stu_firstname,stu_lastname,stu_contactno,stu_DOB from Student_detail where stu_castcategory='SEBC'

select fac_firstname,fac_lastname,fac_letestquelification,fac_city from Faculty_detail where fac_city='Jamnagar'

select fac_firstname,fac_lastname,Fac_Emailid,fac_contactno from Faculty_detail where fac_letestquelification='Ph.D'

