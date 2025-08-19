drop table  if exists number_table;
create table  number_table(
num int,
even_odd varchar(20) not null,
primary key(num)
);

call PrintEvenOddRange(1,10);


