CREATE PROC dbo.LoginIdSP @Email NVARCHAR(40)
AS
BEGIN
	SELECT UserID, Email, uPassword FROM Users Where Email = @Email
END

