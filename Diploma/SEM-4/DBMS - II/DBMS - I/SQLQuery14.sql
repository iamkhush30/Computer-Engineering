select fac_firstname from Faculty_detail where fac_experince = (select max(fac_experince) from Faculty_detail);

select fac_firstname from Faculty_detail where fac_id in(select fac_id from Faculty_detail where fac_letestquelification = 'Ph.D');

select Cou_Name from Course_detail where cou_id not in(select stu_cou_id from Student_detail);

select fac_id,fac_firstname from Faculty_detail where fac_id not in (select stu_fac_id from Student_detail where stu_fac_id is not null); 

select Cou_Name from Course_detail where cou_id not in(select fac_cou_id from Faculty_detail);

select stu_firstname from Student_detail where stu_cou_id in(select cou_id from Course_detail)

select Cou_id,Cou_Name from Course_detail where cou_id in (select stu_cou_id from Student_detail group by stu_cou_id)

select stu_firstname from Student_detail where stu_city in (select fac_city from Faculty_detail where stu_city = fac_city);
