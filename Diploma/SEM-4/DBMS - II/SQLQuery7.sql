create sequence s1
            start with 11
			increment by 2
			maxvalue 20
			minvalue 0
			cycle;

insert into Bank_Master(Bank_ID, Bank_Name, Bank_Short_Name)values(next value for s1,'Punjab National Bank','PNB')

select * from Bank_Master

create sequence s2
            start with 100
			increment by -10
			maxvalue 100
			minvalue 20
			no cycle

create sequence s3
            start with 900
			increment by 10
			maxvalue 990
			minvalue 900
			cycle


insert into Employee_Master( Emp_ID	,Emp_Full_Name,Emp_Designation,Branch_IFSC_Code)values(next value for s3,'Harsh Trivedi','Bank Manager','YAS231456')

select * from Employee_Master

create synonym T_master for transaction_master

select * from T_master 