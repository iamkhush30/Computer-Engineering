select stu_firstname,stu_emailid,len(stu_emailid) from Student_detail;

select fac_firstname,fac_address,len(fac_address) from Faculty_detail;

select lower(Cou_Name) from Course_detail;

select upper(Inst_Name),upper(Inst_Address) from Institute_detail;

select upper(Uni_Name),upper(Uni_Address) from University_detail

select right(Uni_ContactNo,4) from University_detail;

/**/

/**/

select Fac_Emailid,replace(fac_castcategory,'SEBC','OBC') from Faculty_detail;

select Inst_Name,substring(Inst_Address,0,charindex(',',Inst_Address,0)) from Institute_detail;

select Inst_Name,right(Inst_Address,charindex(' ',reverse(Inst_Address))) from Institute_detail;
