select Cou_Name from Course_detail where cou_fees between 20000 and 50000;

select * from Student_detail where stu_DOB between '2005-01-01' and '2005-09-01';

select * from Faculty_detail where fac_experince between '7' and '15';

select fac_firstname,fac_city from Faculty_detail where fac_city not in ('rajkot','morbi','vadodara');

select stu_firstname,stu_city from Student_detail where stu_city not in ('rajkot','morbi','vadodara');

select * from Student_detail where stu_lastname like 'm%'

select * from Faculty_detail where fac_firstname like 'ni%'

select * from Faculty_detail where fac_firstname like '%ha'
