CREATE PROC dbo.DeleteEmployeeSP @DeleteID INT
AS
BEGIN
	DELETE FROM Salary WHERE EmployeeID = @DeleteID
	DELETE FROM Employee WHERE EmployeeID = @DeleteID
END