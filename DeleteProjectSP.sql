CREATE PROC dbo.DeleteProjectSP @ProjectID INT
AS
BEGIN
	DELETE FROM Project WHERE ProjectID = @ProjectID
END