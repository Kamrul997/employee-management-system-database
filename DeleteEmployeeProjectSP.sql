alter PROC dbo.DeleteEmployeeProjectSP @DeleteID INT
AS
BEGIN
	DELETE FROM EmployeeProject WHERE EmployeeID = @DeleteID
END


