select * from harshit13

---------------------FUNCTION----------------------------------------
 create Function calDisc()
 returns int
 as
 begin
 return(10*10)
 end
 
 declare @return int  =dbo.calDisc()
 select @return
 

 create function cal_discount1(@amount int , @disc int)
 returns int
 as
	 begin
			declare @val int =0
			set @val =@amount*@disc/100
			return @val
	end

declare  @val int = dbo.cal_discount1(100,50)
print  @val 


create function avg1(@val1 int , @val2 int, @val3 int)
returns int
as
begin
		declare @mean int=0
		set @mean=@val1+@val2+@val3/3
		return @mean
end


declare @mean int=dbo.avg1(10,20,30)
print @mean


create function change(@val1 varchar)
returns varchar
as
begin
		declare @sum varchar='hello'
		set @val1=@sum
		return @val1
end

declare @val1 varchar(5)=dbo.change('nice')
print @val1
-------------------------------------------------------------------
create function change2(@val1 varchar(10))
returns varchar(10)
as
begin
		declare @sum varchar(10)='hello'
		set @val1=@sum
		return @val1
end

declare @val1 varchar(10)=dbo.change2('nice')
print @val1

create function message2(@msg varchar(10))
returns varchar(10)
as
begin
	declare @newmsg varchar(10)= 'mesage'
	set @msg = @newmsg
	return @msg
end

declare @msg varchar(10) = dbo.message2('fgf')
print @msg




--------------------PIVOT-----------------------------------------------------------------------------

SELECT * FROM harshit13

--------step1---------------------------------------------------------------------------
SELECT name,salary from harshit13
--------------------------------------------------------------------------
---------------------------------------------------------step2
select * from(select name,salary from harshit13) dt
------------------------------------------------------------------------------------
-----------------------------step3
select *from (select name,salary from harshit13)dt
pivot(sum(salary) for name in (harshit,henry,roy,bruce,ram)) as ptable
----------------cte------------------------------------------------------------------
------------------------------------------------------------------------------=----..............
select * from harshit13
create table harshit14
(name varchar(20),
 dept char(20),
 isactive bit)

 select * from harshit14
 insert into harshit14
 values('harshit','ms',0)
 
 insert into harshit14
 values('shyam','non-ms',0)
 
 insert into harshit14
 values('prince','ms',1)
 select * from harshit14
 select * from harshit13




 with ctename as
 (select st.*,si.dept from harshit13 st
 inner join harshit14 si  on st.dept=si.dept )
 select * from ctename 

 -------------------------------------------------------
 ------paging-------------------------------------------------

  select * from harshit13
  INSERT INTO harshit13 values(4,'honey',null,0,1000)
  ---------------------OFFSET -----------------------------------------
  -------------------------PAGING---------------------------------------------------------
  select * from harshit13 order by name
  offset 1 rows fetch next 2 rows only
  ---------------------------------------------------------------------------
  ------------ISNULL--------------------------------------------------
  SELECT id,name,isnull(dept,'ece'),isactive,isnull(salary,1000) from harshit13 
  --------------------------------------------------------------------------------------------------
  -----------------------------------------------------------------------------------------------------
  SELECT * ,COALEScE(dept,'sdd')as col1 from harshit13
  ----------------------------------------------------------------------------------------------
  ----------------------------------------------------------------------------------------------
  create function setval(@paging int,@set int