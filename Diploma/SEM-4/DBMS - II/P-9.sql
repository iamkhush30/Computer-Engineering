--write t-sql block to perform DML triger--

--log table--
create table DML_Log (
	Log_id int identity(1,1) primary key,
	Event_name text,
	Event_date datetime,
	Cus_id int
	)

select * from Customer_Master
select * from DML_Log

--DML insert Trigger--

create trigger DML_Insert_Trigger
on Customer_Master
for insert 
as
begin
	declare @id int 
	select @id = Cus_id from inserted
	insert into DML_Log(Event_name,Event_date,Cus_id) values('Insert',getdate(),@id)
end


--DML insert Trigger--

alter trigger DML_Update_Trigger
on Customer_Master
for update 
as
begin
	declare @id int 
	select @id = Cus_id from inserted
	insert into DML_Log(Event_name,Event_date,Cus_id) values('Update',getdate(),@id)
end

update Customer_Master set Cus_Address='Morbi' where Cus_ID = 211













insert into Customer_Master values(211,'abc xyz','abc@gmail.com',1238953684,'Rajkot')