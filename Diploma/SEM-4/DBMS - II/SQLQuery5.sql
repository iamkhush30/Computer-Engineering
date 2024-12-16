create view Bank_view as 
select 
Bank_ID,Bank_Name 
	from 
		Bank_Master

select * from Bank_view

/*----------------------------------------------------------------------------------*/

create view Cust_view as
select 
Cus_Full_Name,Cus_Phone_No,Cus_Email_ID 
	from 
		Customer_Master
		
select * from Cust_view

/*----------------------------------------------------------------------------------*/

create view Complex_view as
select 
Acc_ID, Cus_Full_Name, Branch_ID, Bank_Short_Name 
	from 
	Account_Master Acc inner join Customer_Master Cus 
		on 
		Acc.Cus_ID = Cus.Cus_ID 
	inner join Branch_Master Bra 
		on 
		Acc.Branch_IFSC_Code = Bra.Branch_IFSC_Code 
	inner join Bank_Master Bank 
		on 
		Bra.Bank_ID = Bank.Bank_ID
		
select * from Complex_view

/*----------------------------------------------------------------------------------*/

create view check_view as
select 
	Cus_Full_Name,Cus_Address 
	from 
		Customer_Master 
	where 
		Cus_Address='Rajkot'