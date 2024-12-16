create login L1 with password='123'
create user U1 for login L1

create login L2 with password='123'
create user U2 for login L2

create table T1 (id int,name varchar(50))

/*----------------------------------------------------------------------------------*/

grant insert,select,delete 
on T1
to U1
with grant option

revoke insert,select,delete 
on T1
from U1
cascade

