create table Result (roll_no int, Name nvarchar(50), CN int, DS int, DBMS int, OOP int);

insert into Result (roll_no,Name,CN,DS,DBMS,OOP) values (51,'Harshdeep',20,25,17,19);
insert into Result (roll_no,Name,CN,DS,DBMS,OOP) values (52,'Preksh',16,23,06,20);
insert into Result (roll_no,Name,CN,DS,DBMS,OOP) values (53,'Gaurav',14,19,08,14);
insert into Result (roll_no,Name,CN,DS,DBMS,OOP) values (54,'Karan',22,13,12,18);
insert into Result (roll_no,Name,CN,DS,DBMS,OOP) values (55,'Yash',25,15,10,30);
insert into Result (roll_no,Name,CN,DS,DBMS,OOP) values (56,'Khush',15,25,09,18);
insert into Result (roll_no,Name,CN,DS,DBMS,OOP) values (57,'Soham',13,22,11,15);
insert into Result (roll_no,Name,CN,DS,DBMS,OOP) values (58,'Krish',19,14,08,17);
insert into Result (roll_no,Name,CN,DS,DBMS,OOP) values (59,'Shubham',23,16,11,16);
insert into Result (roll_no,Name,CN,DS,DBMS,OOP) values (60,'samay',23,20,07,19);

select * from Result;

drop table Result;

exec sp_help Result;

alter table Result drop column average;

alter table Result add Average float;

alter table Result add Total int;

update Result set Total = CN+DS+DBMS+OOP;

update Result set Average = Total/4.0;
 
alter table Result add Surname nvarchar(50);

update Result set Surname = 'Gadhvi' where roll_no = 51 ;
update Result set Surname = 'Javiya' where roll_no = 52 ;
update Result set Surname = 'Ida' where roll_no = 53 ;
update Result set Surname = 'Sonagra' where roll_no = 54 ;
update Result set Surname = 'Pan' where roll_no = 55 ;
update Result set Surname = 'Makwana' where roll_no = 56 ;
update Result set Surname = 'Sagadhiya' where roll_no = 57 ;
update Result set Surname = 'Gadhiya' where roll_no = 58 ;
update Result set Surname = 'Chauhan' where roll_no = 59 ;
update Result set Surname = 'Bajaj' where roll_no = 60 ;

select * from Result Order by Average desc

select top(4)* from Result Order by Average desc;

update Result set Average = Average - 20 ;

update Result set Average = abs(Average) ;

select * from Result;

select concat(Name,' ',Surname) from Result;


