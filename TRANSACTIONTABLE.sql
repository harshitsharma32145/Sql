
select * from eMPLOYEE

select * from ABC

select * from TABLE1

select * from ADDDEMO

-----TRANSCATION---------------------------------------------------
 begin transaction tran_harshit
		 begin
			DROP TABLE TABLE_6
		 end


-----ROLLBACK------------------------------------------------------------

   rollback transaction  tran_harshit

----COMMIT----------------------

COMMIT TRANSACTION

-------------------


BEGIN TRANSACTION TRAN_EMP
		BEGIN
			SELECT NAME FROM harshit13 WHERE ID=1
			PRINT 'HERE WE CHECK SALRY'
			INSERT INTO TABLE1 VALUES(2,'HELLLOO','MR','HLLO@GMAI.COM',6522)
			PRINT 'WE INSET VALUES'
			UPDATE ABC SET LastName='APPLE' WHERE PersonID=12
			PRINT 'UPDATE THE TRANSACTION'			
			select * from ADDDEMO
			PRINT 'LOG ENTRY'
			
		END

		ROLLBACK transaction TRAN_EMP