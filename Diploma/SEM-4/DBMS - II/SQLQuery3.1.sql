insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)
values(399,'ABC XYZ', 'AXBYCZ@gmail.com', 9999999999,'150 Fit Ring Road')

select * from Customer_Master
select * from Employee_Master
select * from Account_Master
delete from Customer_Master where Cus_ID=399

insert into Account_Master(Acc_ID, Acc_Number, Cus_ID, Acc_type) values 
(1099,98989898989,399,'SV')



delete from Account_Master where Acc_ID=1099