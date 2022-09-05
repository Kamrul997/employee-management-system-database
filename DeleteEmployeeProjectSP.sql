CREATE PROC dbo.DeleteEmployeeProjectSP @DeleteID INT
AS
BEGIN
	DELETE FROM EmployeeProject WHERE ID = @DeleteID
END


