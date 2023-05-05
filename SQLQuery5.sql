create table customer_harshit3(
Customer_ID int  not null,
Cust_name varchar(30) null,
Cust_email varchar(30) not null,
Cust_phone numeric(10,0) null,
isactive bit not null,
createdby varchar(20) not null,
)
select * from customer_harshit3
alter table customer_harshit3
add createddate datetime not null

alter table customer_harshit3
drop column createddate 