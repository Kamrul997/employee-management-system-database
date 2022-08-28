CREATE PROCEDURE dbo.UpdateEmployeeProjectSP 
	@EmployeeID INT,
	@ProjectID INT,
	@ID INT
AS   
BEGIN
	UPDATE EmployeeProject SET 
	EmployeeID = @EmployeeID, 
	ProjectID = @ProjectID
	WHERE ID = @ID
END