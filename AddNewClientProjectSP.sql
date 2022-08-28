
CREATE PROCEDURE dbo.AddNewClientProjectSP
	@ClientID INT,
	@ProjectID INT
AS   
BEGIN
	INSERT INTO ClientProject
	(
		ClientID,
		ProjectID 
	) 
	VALUES 
	(
		@ClientID,
		@ProjectID 
	)
END
