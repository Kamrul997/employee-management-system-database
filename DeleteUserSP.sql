CREATE PROC dbo.DeleteUserSP @UserID INT
AS
BEGIN
	DELETE FROM Users WHERE UserID = @UserID
END
GO
EXEC DeleteUserSP 101
