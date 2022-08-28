CREATE PROCEDURE dbo.UpdateClientProjectSP 
	@ClientID INT,
	@ProjectID INT,
	@ID INT
AS   
BEGIN
	UPDATE ClientProject SET 
	ClientID = @ClientID, 
	ProjectID = @ProjectID
	WHERE ID = @ID
END