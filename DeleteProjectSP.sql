CREATE PROC dbo.DeleteProjectSP @DeleteID INT
AS
BEGIN
	DELETE FROM Project WHERE ProjectID = @DeleteID
END