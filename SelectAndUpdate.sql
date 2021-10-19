create schema SelectAndUpdate;

use SelectAndUpdate;

create table table1 (id int primary key,column1 varchar(50));

insert into table1 values(1,"row1");
insert into table1 values(2,"row2");
insert into table1 values(3,"row3");
insert into table1 values(4,"row4");
insert into table1 values(5,"row5");

select * from table1;

update table1 set column1="Row1" where id=1;
update table1 set column1="Row2" where id=2;
update table1 set column1="Row3" where id=3;
update table1 set column1="Row4" where id=4;
update table1 set column1="Row5" where id=5;

select * from table1;