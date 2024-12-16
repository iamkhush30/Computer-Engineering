create procedure Factorial (@n int)
as
begin
	declare @ans int = 1;
	while(@n >= 1)
	begin
		set @ans *= @n
		set @n -= 1
	end
	print concat('Ans = ',@ans)
end
exec Factorial 5

-------------------------------------------------------------------------------------------------------------------------

create procedure maximum (@a int,@b int)
as
begin
	if(@a > @b)
		print concat(@a,' is max')
	else
		print concat(@b,' is max')
end
exec maximum 5,9

-------------------------------------------------------------------------------------------------------------------------

create procedure squ (@n int)
as
begin
	print concat(@n,'^2 = ',@n*@n)
end
exec squ 5

-------------------------------------------------------------------------------------------------------------------------

create procedure SP_CustomerMaster_SelectAll
as
begin
	select Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address from Customer_Master
end
exec SP_CustomerMaster_SelectAll

-------------------------------------------------------------------------------------------------------------------------

create procedure SP_CustomerMaster_SelectBy_PK (@id int)
as
begin
	select Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address from Customer_Master where Cus_ID = @id
end
exec SP_CustomerMaster_SelectBy_PK 302

-------------------------------------------------------------------------------------------------------------------------

create procedure SP_CustomerMaster_Insert(@id int,@name nvarchar(100),@email_id nvarchar(100),@phone_no bigint,@address nvarchar(100))
as
begin
	
	insert into Customer_Master(Cus_ID,Cus_Full_Name,Cus_Email_ID,Cus_Phone_No,Cus_Address)
	values(@id,@name, @email_id, @phone_no,@address)

end
exec SP_CustomerMaster_Insert 311,'ABC XYZ','abcxyz123@google.come',123456798,'Rajkot'

-------------------------------------------------------------------------------------------------------------------------

create procedure SP_CustomerMaster_Update (@id int,@name nvarchar(100),@email_id nvarchar(100),@phone_no bigint,@address nvarchar(100))
as
begin
	update Customer_Master set 
	Cus_Full_Name = @name,
	Cus_Email_ID = @email_id,
	Cus_Phone_No = @phone_no,
	Cus_Address = @address
	where Cus_ID = @id
end
exec SP_CustomerMaster_Update 311,'ABC','123@google.come',1231231239,'Rajkot'

-------------------------------------------------------------------------------------------------------------------------

create procedure SP_CustomerMaster_Delete (@id int)
as
begin
	delete from Customer_Master
	where Cus_ID = @id
end
exec SP_CustomerMaster_Delete 311