CREATE PROC dbo.DeleteSalarySP @DeleteID INT
AS
BEGIN
	DELETE FROM Salary WHERE SalaryID = @DeleteID
END
GO

