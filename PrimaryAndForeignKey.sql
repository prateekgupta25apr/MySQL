create schema PrimaryAndForeignKey;

use PrimaryAndForeignKey;

create table parent_table(id int primary key,column1 varchar(50));

create table child_table(
id int, 
columnA varchar(50), 
columnB varchar(50),
foreign_key int, 
foreign key(foreign_key) references parent_table(id));

insert into parent_table values(1,"row1");
insert into parent_table values(2,"row2");
insert into parent_table values(3,"row3");
insert into parent_table values(4,"row4");
insert into parent_table values(5,"row5");

insert into child_table values(1,"rowA","rowA",2);
insert into child_table values(2,"rowA","rowA",1);
insert into child_table values(3,"rowA","rowA",4);
insert into child_table values(4,"rowA","rowA",5);
insert into child_table values(5,"rowA","rowA",3);

select * from parent_table;
select * from child_table;

update child_table set columnA="rowB",columnB="rowB" where id=2;
update child_table set columnA="rowC",columnB="rowC" where id=3;
update child_table set columnA="rowD",columnB="rowD" where id=4;
update child_table set columnA="rowE",columnB="rowE" where id=5;

select * from child_table left join parent_table on foreign_key=parent_table.id;

delete from child_table where id=5;
delete from parent_table where id=3;
