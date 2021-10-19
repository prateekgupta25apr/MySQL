create schema Deletion;

use Deletion;

create table table1 (id int primary key,column1 varchar(50));

insert into table1 values(1,"row1");
insert into table1 values(2,"row2");
insert into table1 values(3,"row3");
insert into table1 values(4,"row4");
insert into table1 values(5,"row5");

select * from table1;

-- Deleting a row
delete from table1 where id=3;

-- Deleting the table
delete from table1;