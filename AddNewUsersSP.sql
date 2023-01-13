
ALTER PROCEDURE dbo.AddNewUserSP
	@FristName NVARCHAR(20),
	@LastName NVARCHAR(20),
	@Designation NVARCHAR(15),
	@Email NVARCHAR(40),
	@uPassword NVARCHAR(20),
	@CreatedAt DATE,
	@UpdatedOn DATE,
	@CreatedBy NVARCHAR(40),
	@UpdatedBy NVARCHAR(40),
	@Uaddress NVARCHAR(50),
	@Photo NVARCHAR(15),
	@MoblileNumber NVARCHAR(20),
	@Gender VARCHAR(20)
AS   
BEGIN
	DECLARE @ERROR AS VARCHAR(MAX) = ''
	DECLARE @TOTAL_EMAIL AS INT =0
	DECLARE @TOTAL_MOBILE AS INT =0
	
	
	SELECT @TOTAL_EMAIL = COUNT(@Email) FROM Users WHERE Email=@Email
	
	IF(@TOTAL_EMAIL != 0)
	BEGIN
		SET @ERROR += 'Email is already exist.'
	END
	
	
	SELECT @TOTAL_MOBILE = COUNT(MoblileNumber) FROM Users WHERE MoblileNumber=@MoblileNumber
	
	IF(@TOTAL_MOBILE != 0)
	BEGIN
		SET @ERROR += 'Mobile Number is already exist.'
	END


	IF(@ERROR = '')
	BEGIN
		INSERT INTO Users
		(
		FristName,
		LastName,
		Designation,
		Email,
		uPassword,
		CreatedAt,
		UpdatedOn,
		CreatedBy,
		UpdatedBy,
		Uaddress,
		Photo,
		MoblileNumber,
		Gender
		) 
		VALUES 
		(
		@FristName,
		@LastName,
		@Designation,
		@Email,
		@uPassword,
		@CreatedAt,
		@UpdatedOn,
		@CreatedBy,
		@UpdatedBy,
		@Uaddress,
		@Photo,
		@MoblileNumber,
		@Gender
		)
		SELECT @ERROR AS ErrorMessage
	END
	ELSE
		SELECT @ERROR AS ErrorMessage
END
