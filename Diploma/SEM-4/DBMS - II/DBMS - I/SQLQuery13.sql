select Uni_Name,Inst_Name,Cou_Name from University_detail Uni inner join Institute_detail Inst on Uni.Uni_id = Inst.Uni_id inner join Course_detail Cou on Inst.Inst_id=Cou.Inst_id 

select Uni_Name,Inst_Name,Cou_Name,fac_firstname from University_detail Uni inner join Institute_detail Inst on Uni.Uni_id = Inst.Uni_id inner join Course_detail Cou on Inst.Inst_id=Cou.Inst_id  inner join Faculty_detail Fac on Cou.Cou_id =Fac.fac_cou_id

select Uni_Name,Inst_Name,Cou_Name,stu_firstname from University_detail Uni inner join Institute_detail Inst on Uni.Uni_id = Inst.Uni_id inner join Course_detail Cou on Inst.Inst_id=Cou.Inst_id  inner join Student_detail Stu on Cou.Cou_id = Stu.stu_cou_id;

alter table Student_detail add fac_id int 

select * from Faculty_detail;

alter table Faculty_detail add constraint p primary key (fac_id);

alter table Student_detail add constraint f foreign key (fac_id) references Faculty_detail(fac_id);

update Student_detail set fac_id = 5001 where stu_id = 2001
update Student_detail set fac_id = 5001 where stu_id = 2002
update Student_detail set fac_id = 5004 where stu_id = 2004
update Student_detail set fac_id = 5007 where stu_id = 2006
update Student_detail set fac_id = 5003 where stu_id = 2007

select * from Student_detail

select Uni_Name,Inst_Name,Cou_Name,fac_firstname,stu_firstname  from University_detail Uni inner join Institute_detail Inst on Uni.Uni_id = Inst.Uni_id inner join Course_detail Cou on Inst.Inst_id=Cou.Inst_id  inner join Faculty_detail Fac on Cou.Cou_id = Fac.fac_cou_id inner join Student_detail Stu on Fac.fac_id = Stu.fac_id 

select fac_firstname,stu_firstname from Faculty_detail F left outer join Student_detail S on F.fac_id = S.fac_id;

select fac_firstname,stu_firstname from Faculty_detail F right outer join Student_detail S on F.fac_id = S.fac_id;

select fac_firstname,stu_firstname from Faculty_detail F FULL outer join Student_detail S on F.fac_id = S.fac_id;

sp_rename 'Student_detail.fac_id','stu_fac_id','column'

