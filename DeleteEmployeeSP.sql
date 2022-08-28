CREATE PROC dbo.DeleteEmployeeSP @EmployeeID INT
AS
BEGIN
	DELETE FROM Employee WHERE EmployeeID = @EmployeeID
END