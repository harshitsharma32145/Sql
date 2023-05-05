use sdirectdb

create table employee_202345
(ID int not null primary key ),
Name varchar(20),
Dept varchar(20),
Dept_ID int )


select  * from employee_202345
select * from new_employee

create table new_employee
(Dept_ID int not null primary key,
 sub varchar(20),
ID int not null foreign key references employee_202345(ID)
)

select * from new_employee

insert into employee_202345
values(1,'harshit','btech',6);

insert into employee_202345
values(2,'sharma','mca',8)

insert into new_employee
values(2,'btech',1)