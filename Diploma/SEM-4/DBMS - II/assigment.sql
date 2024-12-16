create login L1 with password='123'
create user U1 for login L1

create login L2 with password='123'
create user U2 for login L2

-----------------------------------------------------------

create table T1 (id int,name varchar(50))

insert into T1 (id,name) values (1,'AAA')
insert into T1 (id,name) values (2,'BBB')


/*-----------------------------------------------Admin-----------------------------------------------*/


grant select 
on T1
to U1
with grant option


/*-----------------------------------------------User-1-----------------------------------------------*/


select * from T1

grant insert,select,delete 
on T1
to U2


/*-----------------------------------------------User-2-----------------------------------------------*/


select * from T1


/*-----------------------------------------------User-1-----------------------------------------------*/


revoke select 
on T1
from U2


/*-----------------------------------------------Admin-----------------------------------------------*/

revoke select
on T1
from U1
cascade
