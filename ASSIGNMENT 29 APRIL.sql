create table EmployeeCompany2024
(ID int primary key identity(1,1),
CompanyName varchar(30) ,
Companyddress varchar(50),
eMonth varchar(50),
eYear varchar(50),
EmployeeName varchar(50),
UAN varchar(50) UNIQUE,

PFNo varchar(50) UNIQUE,
Designation varchar(50),
ESINo varchar(50),
DepartmentID int FOREIGN KEY REFERENCES department2024(DepartmentID),
BankName varchar(50),
DOJ date,
BankAccountNo varchar(50) UNIQUE ,
CreatedBy varchar(50),
CreatedDate date,
UpdatedBy varchar(30),
UpdatedDate date,
DeletedBy varchar(30),
DeletedDate date,
IsActive bit,
IsDeleted bit
)
alter table EmployeeCompany2024
add  IsActive bit,IsDeleted bit

alter table EmployeeCompany2024
add  BasicPay decimal(9,3),HRA decimal(9,3)

alter table EmployeeCompany2024
add  BasicPay decimal(9,3),HRA decimal(9,3)

alter table EmployeeCompany2024
add   EmplopyeeID int

alter table EmployeeCompany2024
add  EPF DECIMAL(9,3),ESI DECIMAL(9,3),TotalEarnings decimal(9,3),TotalDeduction decimal(9,3),NetSalary decimal(9,3)


select * from EmployeeCompany2024
create table department2024
(DepartmentID int primary key,
 DepartmentName varchar(20)
 )

 SELECT * FROM EmployeeCompany2024


 create procedure SpAddCompany2024
 
 (@CompanyName varchar(30),
 @Companyddress varchar(30),
 @eMonth varchar(50),
 @eYear varchar(20),
 @EmployeeName varchar(30),
 @UAN varchar(30),
 @PFNo varchar(30),
 @Designation varchar(30),
 @ESINo varchar(20),
 @DepartmentID INT,
 @BankName varchar(30),
 @BankAccountNo varchar(30),
 @BasicPay decimal(9,3),
 @HRA decimal(9,3),
 @EmplopyeeID int
 
 )
AS
  BEGIN
            INSERT INTO EmployeeCompany2024
                       
					   (CompanyName,
                         Companyddress,
                         eMonth,
                         eYear,
						 EmployeeName,
						UAN,
						 PFNo,
						 Designation,
						 ESINo,
						 DepartmentID,
						 BankName,
						 BankAccountNo,
						 	BasicPay,
					    	HRA	,
							EmplopyeeID,
							DOJ,
						CreatedBy,
						CreatedDate,
						 EPF,
						 ESI ,
						 TotalEarnings ,
						TotalDeduction ,
						NetSalary,
						IsActive ,
						IsDeleted 
						

					 )
            VALUES     ( 
                         @CompanyName,
                         @Companyddress,
                         @eMonth,
                         @eYear,
						 @EmployeeName,
						 @UAN,
						 @PFNo,
						 @Designation,
						 @ESINo,
						 @DepartmentID,
						 @BankName,
						 @BankAccountNo,
						 	@BasicPay,
						@HRA,
						@EmplopyeeID,
						GETDATE(),
						'harshit',
						 GETDATE(),
						(15 * @BasicPay)/100,
						(5 * @BasicPay)/100,
					 (@BasicPay+@HRA),
						(15 * @BasicPay)/100+(5 * @BasicPay)/100,
						(@BasicPay + @HRA) - ((15 * @BasicPay)/100)- ((5 * @BasicPay)/100),
						  1,
						  0
						
						  )
       END

	  
	drop procedure SpAddCompany2024
	  
	   --(@BasicPay%100)*15,
			--		(@BasicPay+@HRA),
			--			(@BasicPay%100)*15+(@BasicPay%100)*5,
			--			(@BasicPay+@HRA)-(@BasicPay%100)*15+(@BasicPay%100)*5
	
 SpAddCompany2024 (
'smartdata',
'mohali',
'APRIL',
2023,
'prince',
104,
204,
304,
1,
fi,
2023-04-13,
4566782216,
harshit,
,
11000,
5000)

select * from EmployeeCompany2024

alter 
CREATE procedure SpGetCompany2024
 (
@CompanyName varchar(30),
@Companyddress varchar(50),
@eMonth varchar(50),
@eYear varchar(50),
@EmployeeName varchar(50),
@UAN varchar(50) ,
@PFNo varchar(50) ,
@Designation varchar(50),
@ESINo varchar(50),
@DepartmentID int ,
@BankName varchar(50),
@DOJ date,
@BankAccountNo varchar(50) ,
@CreatedBy varchar(50),
@CreatedDate date,
@UpdatedBy varchar(30),
@UpdatedDate date,
@DeletedBy varchar(30),
@DeletedDate date,
@IsActive bit,
@IsDeleted bit,
@BasicPay decimal(9,3),
@HRA DECIMAL(9,3),
@EPF DECIMAL(9,3),
@ESI DECIMAL(9,3),
@TotalEarnings DECIMAL(9,3),
@TotalDeduction decimal(9,3),
@NetSalary decimal(9,3)
 )
AS
  BEGIN
           select * from 
       END
