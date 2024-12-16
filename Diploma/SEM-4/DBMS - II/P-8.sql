--write t-sql block to perform DDL triger--

--log table--
create table DDL_Log (
	Log_id int identity(1,1) primary key,
	Event_by nvarchar(100),
	Event_date datetime,
	Event_data xml)

--DDL Trigger--
create trigger DDL_Trigger
on database
for create_table,alter_table,drop_table
as
begin
	insert into DDL_Log(Event_by,Event_date,Event_data) values(user,getdate(),eventdata())
end


create table T1(id int identity(1,1),name nvarchar(100))
alter table T1 add city nvarchar(100)
drop table T1
 
select * from DDL_Log

--write t-sql block to perform DML triger--