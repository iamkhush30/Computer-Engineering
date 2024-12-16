create nonclustered index i1 on Customer_Master(Cus_Address )

sp_helpindex Customer_Master

create clustered index i2 on Transaction_master(Tran_ID)

sp_helpindex Transaction_master

create nonclustered index i3 on Transaction_master(Tran_ID,Tran_Date)

sp_helpindex Transaction_master

