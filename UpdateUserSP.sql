
CREATE PROCEDURE dbo.UpdateUserSP 
	@UserID INT,
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
	UPDATE Users SET 
	FristName = @FristName,
	LastName = @LastName,
	Designation = @Designation,
	Email = @Email,
	uPassword = @uPassword,
	CreatedAt = @CreatedAt,
	UpdatedOn = @UpdatedOn,
	CreatedBy = @CreatedBy,
	UpdatedBy = @UpdatedBy,
	Uaddress = @Uaddress,
	Photo = @Photo,
	MoblileNumber = @MoblileNumber,
	Gender = @Gender
	WHERE UserID = @UserID
END

