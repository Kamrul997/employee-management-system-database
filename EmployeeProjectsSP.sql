CREATE PROC DBO.EmployeeProjectsSP @ID INT
AS
BEGIN
SELECT * FROM EmployeeProject WHERE EmployeeID = @ID
END