declare @id int=10,
@phone bigInt;
set @phone=412365;
print @id
print @phone
---------------------------------------------------------/
---------------------------
create Function Addsum()
 returns int
 as
 begin
 return(10*10)
 end

 declare @return int  =dbo.calDisc()
 print @return

 create function sumval(@val1 int,@val2 int)
 returns int
 as 
 begin

		declare @sum int=0
		set @sum=@val1+@val2
		return @sum
end

declare @sum int=dbo.sumval(10,10)
print @sum

select * from harshit17
select MAX(salary) s  from harshit17
group by salary

select * from  harshit17

select * from  ExceptionLog2



create table ExceptionLog2
(
Exceptionlog int identity(1,1),
ProcedureName varchar(50),
LineNumber int,
CreatedOn SmallDateTime,
ErrorMessage varchar(2000))

declare @ProcedureName varchar(50),@LineNumber int,@CreatedOn SmallDateTime,@ErrorMessage varchar(2000)
	begin transaction TEmployee
		begin try
			insert into harshit17 values(17,'harshit','ms',6000,0)
			print 'value is Inserted'
			commit
		end try

		begin catch
			print 'catch block started'
			select @LineNumber=ERROR_LINE(),@ErrorMessage=ERROR_MESSAGE(),@CreatedOn=GETDATE()
			rollback
		end catch

	if @ErrorMessage!=''
		begin
			insert into ExceptionLog2 values(@ProcedureName,@LineNumber,@CreatedOn,@ErrorMessage)
		end

		
		CREATE PROCEDURE spharshit20234
			AS
			select * from harshit20
			

			
		CREATE PROCEDURE spharshitUpdate @empId int,@EmployeeName varchar(30),@EmployeeAge int,@EmpPhone varchar(30),@EmpEmail varchar(30),@EmpAddress varchar(30),@IsActive bit 
		AS
			update  harshit20 set Employee_Name=@EmployeeName,Employee_Age=@EmployeeAge,Employee_PhoneNo=@EmpPhone,Employee_Email=@EmpEmail,Employee_Address=@EmpAddress,IsActive=@IsActive
			where EmployeeID=@empId
		

		select * from harshit17


			CREATE PROCEDURE spharshitSave   @EmployeeName varchar(30),@EmployeeAge int,@EmpPhone varchar(30),@EmpEmail varchar(30),@EmpAddress varchar(30),@IsActive bit,@IsDeleted bit
		
			AS 
			begin
				insert into harshit20 values ( @EmployeeName,@EmployeeAge,@EmpPhone,@EmpEmail,@EmpAddress,@IsActive,@IsDeleted)
		   end
		