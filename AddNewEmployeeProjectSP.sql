
CREATE PROCEDURE dbo.AddNewEmployeeProjectSP
	@EmployeeID INT,
	@ProjectID INT
AS   
BEGIN
	INSERT INTO EmployeeProject
	(
		EmployeeID,
		ProjectID 
	) 
	VALUES 
	(
		@EmployeeID,
		@ProjectID 
	)
END
