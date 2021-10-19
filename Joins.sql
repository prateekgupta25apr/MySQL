create schema Joins;

use Joins;

create table parent_table(
id int primary key,
column1 varchar(50)
);

create table child_table(
id int, 
columnA varchar(50), 
columnB varchar(50),
foreign_key int, 
foreign key(foreign_key) references parent_table(id)
);

insert into parent_table values(1,"row1");
insert into parent_table values(2,"row2");


insert into child_table values(1,"rowA","rowA",2);
insert into child_table values(2,"rowB","rowB",1);
insert into child_table values(3,"rowC","rowC",1);
insert into child_table values(4,"rowD","rowD",2);


select * from parent_table;
select * from child_table;

-- Left Join with IDs
select * from child_table left join parent_table on child_table.id=parent_table.id;

-- Left Join with Foreign Key
select * from child_table left join parent_table on foreign_key=parent_table.id;

-- Right Join with IDs
select * from child_table right join parent_table on child_table.id=parent_table.id;

-- Right Join with Foreign Key
select * from child_table right join parent_table on foreign_key=parent_table.id;

-- Full Join with IDs
select * from child_table full join parent_table;

-- Full Join with Foreign Key
select * from child_table full join parent_table on foreign_key=parent_table.id;

-- Inner Join with IDs
select * from child_table inner join parent_table on foreign_key=parent_table.id;

-- Inner Join with Foreign Key
select * from child_table inner join parent_table on foreign_key=parent_table.id;