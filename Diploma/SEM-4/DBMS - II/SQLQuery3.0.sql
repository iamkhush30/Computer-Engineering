create login DBMSII with password='DBMS-II'

create user abc for login DBMSII

/*------------------------------------------------------------------------------------------------------------------------*/

grant insert,select,delete 
on Customer_Master
to abc

revoke insert,select,delete 
on Customer_Master
from abc

/*------------------------------------------------------------------------------------------------------------------------*/

grant insert,select,delete  
on Account_master
to abc

revoke insert,select,delete
on Account_master
from abc