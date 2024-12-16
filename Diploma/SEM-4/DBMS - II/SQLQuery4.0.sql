
create table A ( 
	A_Id		int				primary key,
	A_Name		nvarchar(50)	not null
 )

insert into A( A_Id, A_Name ) values (1, 'ABC')
insert into A( A_Id, A_Name ) values (2, 'XYZ')

select * from A


/*----------------------------------------------------------------------------------*/


create table B ( 
	B_Id		int				primary key,
	B_Name	nvarchar(50)	not null
 )

insert into	B( B_Id, B_Name ) values (1, 'abc')
insert into B( B_Id, B_Name ) values (2, 'xyz')

select * from B
select * from A

/*-----------------------------------------Shared_Loke-------------------------------------------*/


begin tran t1

	select * from A where A_Id=1
	waitfor delay '00:00:03'

commit tran t1


/*--------------------------------------Exclusive_Lock--------------------------------------------*/


begin tran t2

	update A set A_Name='123' where A_Id=1
	select resource_type, request_mode, RESOURCE_DESCRIPTION FROM SYS.dm_tran_locks
	
commit tran t2


/*--------------------------------------Dead_Lock--------------------------------------------*/


begin tran t3

	update A set A_Name='ABC' where A_Id=1
	waitfor delay '00:00:03'
	update B set B_Name='abc' where B_Id=1

commit tran t3


/*--------------------------------------Update_Lock--------------------------------------------*/


begin tran t4

	select @@SPID as firsttran

	select B_Id from B with(updlock) where B_Id=1
	
	update A set A_Name='ABC' where A_Id=1
	
	waitfor delay '00:00:03'
	
	update B set B_Name='abc' where B_Id=1

commit tran t4
