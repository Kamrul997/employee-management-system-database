CREATE PROC dbo.ShowAllUsersSP
AS
BEGIN
	SELECT * FROM Users
END
GO
exec ShowAllUsersSP
