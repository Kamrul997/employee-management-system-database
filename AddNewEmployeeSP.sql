ALTER PROCEDURE dbo.AddNewEmployeeSP	
	@FristName NVARCHAR(20), 
	@LastName NVARCHAR(20),
	@Email NVARCHAR(40),
	@MoblileNumber NVARCHAR(20),
	@CV NVARCHAR(50),
	@Eaddress NVARCHAR(50),
	@BirthDate DATE,
	@JoinDate DATE,
	@ResignDate DATE,
	@UserID INT,
	@Gender VARCHAR(20)
AS   
BEGIN
	DECLARE @ERROR AS VARCHAR(MAX) = ''
	DECLARE @TOTAL_EMAIL AS INT =0
	DECLARE @TOTAL_MOBILE AS INT =0
	
	
	SELECT @TOTAL_EMAIL = COUNT(@Email) FROM Employee WHERE Email=@Email
	
	IF(@TOTAL_EMAIL != 0)
	BEGIN
		SET @ERROR += 'Email is already exist.'
	END
	
	
	SELECT @TOTAL_MOBILE = COUNT(MoblileNumber) FROM Employee WHERE MoblileNumber=@MoblileNumber
	
	IF(@TOTAL_MOBILE != 0)
	BEGIN
		SET @ERROR += 'Mobile Number is already exist.'
	END


	IF(@ERROR = '')
	BEGIN		
		INSERT INTO Employee
		(
		FristName, 
		LastName,
		Email,
		MoblileNumber,
		CV,
		Eaddress,
		BirthDate,
		JoinDate,
		ResignDate,
		UserID,
		Gender
		)
		OUTPUT Inserted.EmployeeID
		VALUES 
		(
		@FristName,
		@LastName,
		@Email,
		@MoblileNumber,
		@CV,
		@Eaddress,
		@BirthDate,
		@JoinDate,
		@ResignDate,
		@UserID,
		@Gender
		)
	END
	ELSE
		SELECT @ERROR AS ErrorMessage
END