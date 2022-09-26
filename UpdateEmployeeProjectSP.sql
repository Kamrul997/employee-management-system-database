Alter PROCEDURE dbo.UpdateEmployeeProjectSP 
	@EmployeeID INT,
	@ProjectID INT
AS   
BEGIN
	UPDATE EmployeeProject SET 
	EmployeeID = @EmployeeID, 
	ProjectID = @ProjectID
	WHERE EmployeeID = @EmployeeID
END