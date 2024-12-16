/*-----------------------------------------------Bank_Master-----------------------------------------------*/

create table Bank_Master(
	Bank_ID				int				primary key,
	Bank_Name			nvarchar(100)	not null,
	Bank_Short_Name		nvarchar(100)	not null
)

insert into Bank_Master( Bank_ID, Bank_Name, Bank_Short_Name) values(1,'State Bank Of India','SBI')
insert into Bank_Master( Bank_ID, Bank_Name, Bank_Short_Name) values(2,'Central Bank Of India','CBI')
insert into Bank_Master( Bank_ID, Bank_Name, Bank_Short_Name) values(3,'Punjab National Bank','PNB')
insert into Bank_Master( Bank_ID, Bank_Name, Bank_Short_Name) values(4,'Yash Bank','Yash')
insert into Bank_Master( Bank_ID, Bank_Name, Bank_Short_Name) values(5,'HDFC','HDFC')

select * from Bank_Master

/*-----------------------------------------------Branch_Master-----------------------------------------------*/

create table Branch_Master(
	Branch_ID			int				primary key,
	Branch_Name			nvarchar(100)	not null,
	Branch_IFSC_Code	nvarchar(100)	unique,
	Bank_ID				int				foreign key references Bank_master(Bank_ID)
)

insert into Branch_Master(Branch_ID,Branch_Name,Branch_IFSC_Code,Bank_ID)values(101,'Nana Mava Road','SBI102734',1)
insert into Branch_Master(Branch_ID,Branch_Name,Branch_IFSC_Code,Bank_ID)values(102,'Raiya Road','PNB750945',3)
insert into Branch_Master(Branch_ID,Branch_Name,Branch_IFSC_Code,Bank_ID)values(103,'Sadhuvasvani Road','CBI237691',2)
insert into Branch_Master(Branch_ID,Branch_Name,Branch_IFSC_Code,Bank_ID)values(104,'150 Fit Ring Road','HDF418302',5)
insert into Branch_Master(Branch_ID,Branch_Name,Branch_IFSC_Code,Bank_ID)values(105,'Kalavad Road','YAS814025',4)
insert into Branch_Master(Branch_ID,Branch_Name,Branch_IFSC_Code,Bank_ID)values(106,'Jubali Market','SBI452318',1)
insert into Branch_Master(Branch_ID,Branch_Name,Branch_IFSC_Code,Bank_ID)values(107,'Mota Mava','PNB730211',3)
insert into Branch_Master(Branch_ID,Branch_Name,Branch_IFSC_Code,Bank_ID)values(108,'Lal Darwaja','CBI391248',2)
insert into Branch_Master(Branch_ID,Branch_Name,Branch_IFSC_Code,Bank_ID)values(109,'Bapunagar','HDF810234',5)
insert into Branch_Master(Branch_ID,Branch_Name,Branch_IFSC_Code,Bank_ID)values(110,'Kalupur','YAS231456',4)

select * from Branch_Master

/*-----------------------------------------------Employee_Master-----------------------------------------------*/

create table Employee_Master(
	Emp_ID				int				primary key,
	Emp_Full_Name		nvarchar(100)	not null,
	Emp_Designation		nvarchar(100)	not null,
	Branch_IFSC_Code	nvarchar(100)	foreign key references Branch_Master(Branch_IFSC_Code)
)

insert into Employee_Master( Emp_ID	,Emp_Full_Name,Emp_Designation,Branch_IFSC_Code)values(201,'Ida Gaurav','Bank Manager','SBI102734')
insert into Employee_Master( Emp_ID	,Emp_Full_Name,Emp_Designation,Branch_IFSC_Code)values(202,'Gadhvi Harshdeep','Cashier','PNB750945')
insert into Employee_Master( Emp_ID	,Emp_Full_Name,Emp_Designation,Branch_IFSC_Code)values(203,'Patel Rajan','PO','CBI237691')
insert into Employee_Master( Emp_ID	,Emp_Full_Name,Emp_Designation,Branch_IFSC_Code)values(204,'Bhatti Deep','SO','HDF418302')
insert into Employee_Master( Emp_ID	,Emp_Full_Name,Emp_Designation,Branch_IFSC_Code)values(205,'Doshi Man','Clerk','YAS814025')
insert into Employee_Master( Emp_ID	,Emp_Full_Name,Emp_Designation,Branch_IFSC_Code)values(206,'Hada Harshil ','SO','SBI102734')
insert into Employee_Master( Emp_ID	,Emp_Full_Name,Emp_Designation,Branch_IFSC_Code)values(207,'Makwana Khush','Cashier','SBI452318')
insert into Employee_Master( Emp_ID	,Emp_Full_Name,Emp_Designation,Branch_IFSC_Code)values(208,'Pan Yash','Bank Manager','PNB730211')
insert into Employee_Master( Emp_ID	,Emp_Full_Name,Emp_Designation,Branch_IFSC_Code)values(209,'Sonagra Karan','Bank Manager','CBI391248')
insert into Employee_Master( Emp_ID	,Emp_Full_Name,Emp_Designation,Branch_IFSC_Code)values(210,'Harsh Trivedi','Bank Manager','YAS231456')

select * from Employee_Master

/*-----------------------------------------------Customer_Master-----------------------------------------------*/

create table Customer_Master(
	Cus_ID			int				primary key,
	Cus_Full_Name	nvarchar(100)	not null,
	Cus_Email_ID	nvarchar(100)	not null,
	Cus_Phone_No	bigint			unique,
	Cus_Address		nvarchar(100)	not null
)

insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)values(301,'Chintan Parmar', 'Chinta@gmail.com', 8989787845,'Rajkot')
insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)values(302,'Khushbu Vora', 'vora@gmail.com', 7023564712,'Morbi')
insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)values(303,'Amit Vekariya', 'amitp@yahoo.com', 708952712,'Jamnagar')
insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)values(304,'Kanti Bhuva', 'bhuvaakanti@hotmail.com', 9825245781,'Morbi')
insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)values(305,'Nikhil Vadodariya', 'nikhil@yahoo.com', 9825641784,'Rajkot')
insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)values(306,'Rakesh Vaisnav', 'raku_t@gmail.com', 9898784565,'Morbi')
insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)values(307,'Mahesh Gambhava', 'maheshgambhava@gmai.com', 9898732141,'Jamnagar')
insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)values(308,'Pritesh Kanani', 'kananipritesh@yahoo.com', 8866442277,'Morbi')
insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)values(309,'Khush Makwana', 'makwana.binal@gmail.com', 8866997231,'Rajkot')
insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)values(310,'Pinal Vyas', 'vyasm@rocketmail.com', 8866701416,'Rajkot')

select * from Customer_Master

drop table Customer_Master

/*-----------------------------------------------Account_Master-----------------------------------------------*/

create table Account_Master(
	Acc_ID				int				primary key,
	Acc_Number			bigint			unique,
	Cus_ID				int				foreign key references Customer_Master(Cus_ID),
	Acc_type			nvarchar(100)	constraint Check_Type check( Acc_type='CR' or Acc_type='SV' ),
	Branch_IFSC_Code	nvarchar(100)	foreign key references Branch_Master(Branch_IFSC_Code)
)

insert into Account_Master(Acc_ID, Acc_Number, Cus_ID, Acc_type,Branch_IFSC_Code) values (1001,1234567890,301,'CR','SBI102734')
insert into Account_Master(Acc_ID, Acc_Number, Cus_ID, Acc_type,Branch_IFSC_Code) values (1002,1112223334,302,'SV','CBI237691')
insert into Account_Master(Acc_ID, Acc_Number, Cus_ID, Acc_type,Branch_IFSC_Code) values (1003,1231231234,303,'CR','HDF418302')
insert into Account_Master(Acc_ID, Acc_Number, Cus_ID, Acc_type,Branch_IFSC_Code) values (1004,4567891238,304,'CR','SBI102734')
insert into Account_Master(Acc_ID, Acc_Number, Cus_ID, Acc_type,Branch_IFSC_Code) values (1005,8527419630,305,'SV','YAS231456')
insert into Account_Master(Acc_ID, Acc_Number, Cus_ID, Acc_type,Branch_IFSC_Code) values (1006,7419638520,306,'CR','CBI391248')
insert into Account_Master(Acc_ID, Acc_Number, Cus_ID, Acc_type,Branch_IFSC_Code) values (1007,9638527410,307,'SV','PNB730211')
insert into Account_Master(Acc_ID, Acc_Number, Cus_ID, Acc_type,Branch_IFSC_Code) values (1008,7539637410,308,'SV','YAS814025')
insert into Account_Master(Acc_ID, Acc_Number, Cus_ID, Acc_type,Branch_IFSC_Code) values (1009,1236547859,309,'CR','HDF418302')
insert into Account_Master(Acc_ID, Acc_Number, Cus_ID, Acc_type,Branch_IFSC_Code) values (1010,9876214538,310,'SV','PNB750945')

select * from Account_Master

drop table Account_Master

/*-----------------------------------------------Transaction_Master-----------------------------------------------*/

create table Transaction_master
(
	Tran_ID				int				primary key,
	Tran_Acc_no			bigint			references Account_master(Acc_Number),
	Tran_Date		    date			not null,
	Tran_Type			varchar(50)		check (Tran_Type in ('Cheque','Online','Cash','RTGS')),
	Tran_Amount_Type	varchar(50)		check(Tran_Amount_Type in ('Debit','Credit')),
	Tran_Amount			bigint			not null
);

insert into Transaction_master(Tran_ID, Tran_Acc_no, Tran_Date, Tran_Type, Tran_Amount_Type, Tran_Amount) values(2001,1234567890,'2021-12-25','online','Debit',2000)
insert into Transaction_master(Tran_ID, Tran_Acc_no, Tran_Date, Tran_Type, Tran_Amount_Type, Tran_Amount) values(2002,1112223334,'2021-12-25','Cheque','Debit',15000)
insert into Transaction_master(Tran_ID, Tran_Acc_no, Tran_Date, Tran_Type, Tran_Amount_Type, Tran_Amount) values(2003,1231231234,'2021-12-25','Cash','Credit',10000)
insert into Transaction_master(Tran_ID, Tran_Acc_no, Tran_Date, Tran_Type, Tran_Amount_Type, Tran_Amount) values(2004,4567891238,'2021-12-25','online','Credit',1500)
insert into Transaction_master(Tran_ID, Tran_Acc_no, Tran_Date, Tran_Type, Tran_Amount_Type, Tran_Amount) values(2005,8527419630,'2021-12-25','RTGS','Debit',4000)
insert into Transaction_master(Tran_ID, Tran_Acc_no, Tran_Date, Tran_Type, Tran_Amount_Type, Tran_Amount) values(2006,7419638520,'2021-12-25','RTGS','Credit',4000)
insert into Transaction_master(Tran_ID, Tran_Acc_no, Tran_Date, Tran_Type, Tran_Amount_Type, Tran_Amount) values(2007,9638527410,'2021-12-25','online','Debit',1500)
insert into Transaction_master(Tran_ID, Tran_Acc_no, Tran_Date, Tran_Type, Tran_Amount_Type, Tran_Amount) values(2008,7539637410,'2021-12-25','Cash','Debit',10000)
insert into Transaction_master(Tran_ID, Tran_Acc_no, Tran_Date, Tran_Type, Tran_Amount_Type, Tran_Amount) values(2009,1236547859,'2021-12-25','Cheque','Credit',15000)
insert into Transaction_master(Tran_ID, Tran_Acc_no, Tran_Date, Tran_Type, Tran_Amount_Type, Tran_Amount) values(2010,9876214538,'2021-12-25','online','Credit',2000)

select * from Transaction_master

drop table Transaction_master
