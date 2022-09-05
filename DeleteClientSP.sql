CREATE PROC dbo.DeleteClientSP @DeleteID INT
AS
BEGIN
	DELETE FROM Client WHERE ClientID = @DeleteID
END
GO
