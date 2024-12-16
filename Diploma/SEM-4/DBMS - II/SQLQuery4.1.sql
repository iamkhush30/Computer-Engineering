/*-----------------------------------------Shared_Loke-------------------------------------------*/



begin tran t1

	select * from A where A_Id=1


commit tran t1


/*--------------------------------------Exclusive_Lock--------------------------------------------*/


begin tran t2

	select * from A where A_Id=1

commit tran t2


/*--------------------------------------Dead_Lock--------------------------------------------*/


begin tran t4

	update B set B_Name='ABC' where B_Id=1

	update A set A_Name='abc' where A_Id=1

commit tran t4


/*--------------------------------------Update_Lock--------------------------------------------*/


begin tran t4

	select @@SPID as secondtran 

	exec sp_lock

	update B set B_Name='abc' where B_Id=1

	update A set A_Name='ABC' where A_Id=1

commit tran t4
