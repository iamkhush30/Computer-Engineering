select fac_city,count(fac_city) from Faculty_detail group by fac_city;

select stu_city,count(stu_city) from Student_detail group by stu_city;

select fac_castcategory,count(fac_castcategory) from Faculty_detail group by fac_castcategory;

select stu_castcategory,count(stu_castcategory) from Student_detail group by stu_castcategory having stu_castcategory='SC';

select Cou_type,count(Cou_type) from Course_detail group by Cou_type having Cou_type='Commerce';

select Cou_type,count(Cou_type) from Course_detail group by Cou_type having Cou_type='Science';

select fac_castcategory,count(fac_castcategory) from Faculty_detail group by fac_castcategory having fac_castcategory='General';

select * from University_detail order by Uni_id;

select * from Institute_detail order by Inst_id desc;

select Cou_Name,cou_fees from Course_detail order by cou_fees desc;

select stu_id,stu_firstname,stu_lastname from Student_detail order by stu_firstname ;

select fac_id,fac_firstname,fac_lastname,fac_experince from Faculty_detail order by fac_experince ;
