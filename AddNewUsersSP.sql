
CREATE PROCEDURE dbo.AddNewUserSP
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
END
