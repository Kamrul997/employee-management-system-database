CREATE PROC dbo.DeleteSalarySP @SalaryID INT
AS
BEGIN
	DELETE FROM Salary WHERE SalaryID = @SalaryID
END
GO
EXEC DeleteSalarySP 101
