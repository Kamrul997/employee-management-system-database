CREATE PROC dbo.ShowAllEmployeeSP
AS
BEGIN
	SELECT * FROM Employee
END
GO
exec ShowAllEmployeeSP