update Course_detail set cou_fees= cou_fees+(cou_fees*10)/100 ;

select Cou_Name,cou_fees from Course_detail;

select fac_firstname,fac_experince from Faculty_detail where fac_experince>10;

select stu_firstname,stu_city from Student_detail where stu_city!='rajkot';

select Cou_Name,cou_fees from Course_detail where cou_fees >= '25000'

select fac_firstname,fac_city from Faculty_detail where fac_city='rajkot' or fac_city='morbi' or fac_city='vadodara'

select stu_firstname from Student_detail where stu_cou_id in (1003,1002,1010)

select * from Course_detail where Cou_type!='Science' and Cou_type!='Commerce'
