/*--------------------------------------begin tran--------------------------------------*/
begin tran t1

insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)
values(399,'Ida Gaurav', 'idagaurav21@gmail.com', 8866701416,'Rajkot')

select * from Customer_Master

/*--------------------------------------save s1--------------------------------------*/

save tran s1

update Customer_Master set Cus_Full_Name='ida gaurav' where Cus_ID = 399

/*--------------------------------------save s2--------------------------------------*/

save tran s2

select * from Customer_Master

/*--------------------------------------rollback s1--------------------------------------*/

rollback tran s1

select * from Customer_Master

update Customer_Master set Cus_Address='rajkot' where Cus_ID = 399

select * from Customer_Master

/*--------------------------------------save s3--------------------------------------*/

save tran s3

delete from Customer_Master where Cus_ID = 399

select * from Customer_Master

/*--------------------------------------rollback s3--------------------------------------*/

rollback tran s3

select * from Customer_Master

commit tran t1
