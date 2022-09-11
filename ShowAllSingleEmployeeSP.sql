CREATE PROC dbo.ShowAllSingleEmployeeSP @ID INT
AS
BEGIN
	SELECT * 
FROM Employee
Where EmployeeID = @ID
END