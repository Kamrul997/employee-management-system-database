CREATE PROCEDURE dbo.UpdateClientSP 
	@ClientID INT,
	@FristName NVARCHAR(20), 
	@LastName NVARCHAR(20),
	@Caddress NVARCHAR(50),
	@MoblileNumber NVARCHAR(20),
	@Gender VARCHAR(20)
AS   
BEGIN
	UPDATE Client SET 
	FristName = @FristName, 
	LastName = @LastName,
	Caddress = @Caddress,
	MoblileNumber = @MoblileNumber,
	Gender = @Gender
	WHERE ClientID = @ClientID
END