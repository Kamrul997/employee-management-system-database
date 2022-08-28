CREATE PROC dbo.DeleteClientSP @ClientID INT
AS
BEGIN
	DELETE FROM Client WHERE ClientID = @ClientID
END
GO
EXEC DeleteUserSP 101
