CREATE PROC dbo.DeleteClientProjectSP @DeleteID INT
AS
BEGIN
	DELETE FROM ClientProject WHERE ID = @DeleteID
END