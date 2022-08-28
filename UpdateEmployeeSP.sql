CREATE PROCEDURE dbo.UpdateEmployeeSP 
	@EMPLOYEEID INT,
	@FRISTNAME NVARCHAR(20), 
	@LASTNAME NVARCHAR(20),
	@EMAIL NVARCHAR(40),
	@MOBLILENUMBER NVARCHAR(20),
	@CV NVARCHAR(50),
	@EADDRESS NVARCHAR(50), -- NEED TO FIX
	@BIRTHDATE DATE,
	@JOINDATE DATE,
	@RESIGNDATE DATE,
	@USERID INT,
	@Gender VARCHAR(20)
AS   
BEGIN
	UPDATE EMPLOYEE SET 
	FRISTNAME = @FRISTNAME, 
	LASTNAME = @LASTNAME,
	EMAIL = @EMAIL,
	MOBLILENUMBER = @MOBLILENUMBER,
	CV = @CV,
	EADDRESS = @EADDRESS,
	BIRTHDATE = @BIRTHDATE,
	JOINDATE = @JOINDATE,
	RESIGNDATE = @RESIGNDATE,
	USERID = @USERID,
	Gender = @Gender
	WHERE EMPLOYEEID = @EMPLOYEEID
END