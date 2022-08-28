
CREATE PROCEDURE dbo.AddNewEmployeeSP	
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