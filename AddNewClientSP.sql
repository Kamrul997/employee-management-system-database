
CREATE PROCEDURE dbo.AddNewClientSP
	@FristName NVARCHAR(20), 
	@LastName NVARCHAR(20),
	@Caddress NVARCHAR(50),
	@MoblileNumber NVARCHAR(20),
	@Gender VARCHAR(20)
AS   
BEGIN
	INSERT INTO Client
	(
	FristName, 
	LastName,
	Caddress,
	MoblileNumber,
	Gender
	) 
	VALUES 
	(
	@FristName, 
	@LastName,
	@Caddress,
	@MoblileNumber,
	@Gender
	)
END
GO