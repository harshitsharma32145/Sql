----------------equipment table-------------------------------------------
-------------------------------------------------------------------------
create table equipment_harshit15
(Equipment_id  int primary key,
Equipment_name varchar(20) not null ,
make varchar(10) null,
model varchar(10) null,
price numeric(5,0) not null
)
--------------------------------------------------------------------------------------
---------------employee table------------------------------------------------------
create table employee_harshit15
(employee_id  int primary key,
employee_name varchar(20) not null,
email varchar(10) not null,
dob date not null,
dept varchar(10) not null,
isActive bit null,
Createdby varchar(20) null,
Created  date null
)
--------------------------------------------------------------------------------------------------
----------------------department table----------------------------------------------------
create table department_harshit15
(
department_id int identity(1,1),
department varchar(20)
)
--------------------------------------------------------------------------------------------------------

insert into department_harshit15
values



alter table equipment_harshit15
alter column price varchar(10)

alter table employee_harshit15
alter column email varchar(20)


select *from equipment_harshit15

select *from employee_harshit15

select *from department_harshit15
--------------------------------------------------------------------
insert into equipment_harshit15
values('101','laptop','1200','mac','900000')


insert into equipment_harshit15
values('102','laptop','150','hp','50000')

insert into equipment_harshit15
values('103','laptop','541','dell','40000')

insert into equipment_harshit15
values('104','mobile','745','apple','60000')

insert into equipment_harshit15
values('107','watch','800','titan','900000')

insert into equipment_harshit15
values('108','watch','800','titan','20000')

insert into equipment_harshit15
values('109','watch','800','titan','20000')

insert into equipment_harshit15
values('110','mobile','820','samsung','900000')

insert into equipment_harshit15
values('111','mobile','880','realme','14000')

insert into equipment_harshit15
values('112','watch','800','titan','900000')

	insert into equipment_harshit15
	values('113','mobile','230','samsung','50000')
--------------------------------------------------------------------
----------------------------------------update----------------------------

update equipment_harshit15
set Equipment_name='laptop'
where Equipment_id=104

--------------------------------------------------------------------
----------delete---------------------------------------------------------
delete from equipment_harshit15
where Equipment_id=107

--------------------------------------------------------------------
------   insert table--------------------------------------------------------------------
--------------------------------------------------------------------
insert into employee_harshit15
values('101','bruce','bruce@gmail.com','1995-05-02','ms',1,'harshit','2023-04-01')

insert into employee_harshit15
values('102','willy','willy@gmail.com','1996-04-20','non-ms',0,'harshit','2023-04-01')

insert into employee_harshit15
values('103','clark','clark@gmail.com','1997-05-20','ms',1,'harshit','2023-04-01')

insert into employee_harshit15
values('104','royal','royal@gmail.com','1995-05-02','ms',1,'harshit','2023-11-30')

insert into employee_harshit15
values('105','henry','henry@gmail.com','1995-10-12','non-ms',0,'','2023-12-11')

insert into employee_harshit15
values('106','henry','henry@gmail.com','1995-10-12','non-ms',0,'','2023-12-11')

insert into employee_harshit15
values('107','henry','henry@gmail.com','1995-10-12','non-ms',0,'henry','2023-12-11')

insert into employee_harshit15
values('108','royal','royal@gmail.com','1995-10-12','ms',1,'henry','2023-12-11')

insert into employee_harshit15
values('109','bruce','bruce@gmail.com','1995-10-12','non-ms',1,'bruce','2023-12-11')

insert into employee_harshit15
values('110','royal','henry@gmail.com','1995-10-12','non-ms',0,'','2023-12-11')

insert into employee_harshit15
values('111','henry','henry@gmail.com','1995-10-12','non-ms',0,'','2023-12-11')

insert into employee_harshit15
values('112','willy','willy@gmail.com','1995-10-12','non-ms',1,'willy','2023-12-11')

select * from employee_harshit15
------------------------------
-----------------------------------
-----------update command
-----------------------------
update employee_harshit15
set employee_name='harshit'
where employee_id=102

select *from employee_harshit15

delete from employee_harshit15
where employee_id=106


--------------------------------------------
ALTER TABLE equipment_harshit15
add FOREIGN KEY (Equipment_id) REFERENCES equipment_harshit15(Equipment_id);

select eq.Equipment_id,eq.Equipment_name,em.employee_name,em.dept,eq.price from equipment_harshit15 eq inner join employee_harshit15 em
on eq.Equipment_id=em.employee_id

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------4   lis  of all equipment with arrange employee-------------------------

--------------------------------------------
select em.employee_name ,eq.Equipment_name from equipment_harshit15 eq
inner join employee_harshit15 em
on eq.Equipment_id=em.employee_id
group by eq.Equipment_name,em.employee_name 
order by em.employee_name


--  question  ---5 ---  -no of equipment assign to employee
-----------------------------------------

select  em.employee_name, count(eq.Equipment_name) as total from equipment_harshit15 eq
inner join employee_harshit15 em
on eq.Equipment_id=em.employee_id
group by em.employee_name 
--------------------------------------------------------------------------------
---------------------------------------------
------ 6   dept eise equipment asigned details----------------------------
----------------------------------------------------

select  em.employee_name,em.dept, count(eq.Equipment_name) as total from equipment_harshit15 eq
inner join employee_harshit15 em
on eq.Equipment_id=em.employee_id
group by em.employee_name ,em.dept


