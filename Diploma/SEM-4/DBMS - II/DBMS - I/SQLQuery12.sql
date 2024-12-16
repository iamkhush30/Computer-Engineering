alter table University_detail add constraint p1 primary key (Uni_id);

alter table Institute_detail add constraint p2 primary key (Inst_id);

alter table Course_detail add constraint p3 primary key (Cou_id);

alter table Student_detail add constraint p4 primary key (stu_id);

alter table Faculty_detail add constraint p primary key (fac_id);

/*-------------------------------------------------------------------------------------------------------------------------------*/

select * from University_detail
select * from Institute_detail
select * from Course_detail
select * from Faculty_detail
select * from Student_detail

alter table Institute_detail add constraint f1 foreign key (Uni_id) references University_detail(Uni_id);

alter table Course_detail add constraint f2 foreign key (Inst_id) references Institute_detail(Inst_id);

alter table Faculty_detail add constraint f3 foreign key (fac_cou_id) references Course_detail(Cou_id);

alter table Student_detail add constraint f foreign key (stu_fac_id) references Faculty_detail(fac_id);
