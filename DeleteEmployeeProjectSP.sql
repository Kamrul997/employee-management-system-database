CREATE PROC dbo.DeleteEmployeeProjectSP @ID INT
AS
BEGIN
	DELETE FROM EmployeeProject WHERE ID = @ID
END


