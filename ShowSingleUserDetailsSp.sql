alter PROC dbo.ShowAllSingleUserSP @ID INT
AS
BEGIN
	SELECT * 
FROM Users
Where UserID = @ID
END